.class Lorg/telegram/ui/PhotoViewer$66;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->lambda$openCurrentPhotoInPaintModeForSelect$80(Ljava/io/File;ZLorg/telegram/messenger/MessageObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private final thumbHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

.field final synthetic val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field final synthetic val$finalCanReplace:Z

.field final synthetic val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    .locals 0

    .line 14510
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$66;->val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$66;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-boolean p5, p0, Lorg/telegram/ui/PhotoViewer$66;->val$finalCanReplace:Z

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    .line 14512
    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$66;->thumbHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-void
.end method

.method private sendMedia(Lorg/telegram/messenger/VideoEditedInfo;ZIZZLjava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    .line 14552
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p4, :cond_0

    .line 14553
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v15, v1

    if-eqz v15, :cond_1

    .line 14554
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14555
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    iput-object v2, v15, Lorg/telegram/messenger/MessageObject;->editingMessage:Ljava/lang/CharSequence;

    .line 14556
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v1, v15, Lorg/telegram/messenger/MessageObject;->editingMessageEntities:Ljava/util/ArrayList;

    .line 14558
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 14560
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v10, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v11, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-boolean v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    move/from16 v16, v4

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v17, v1

    move-object/from16 v4, p1

    move-object v12, v15

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p5

    move-object/from16 v18, p6

    invoke-static/range {v2 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14562
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v10, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v11, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-boolean v12, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    move/from16 v16, v12

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v17, v1

    move-object v12, v15

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p5

    move-object/from16 v18, p6

    invoke-static/range {v2 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14565
    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 14566
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v11, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v12, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    iget v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v20, v1

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p5

    move-object/from16 v21, p6

    invoke-static/range {v2 .. v21}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_1

    .line 14567
    :cond_4
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 14568
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v11, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v12, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    iget v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v20, v1

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p5

    move-object/from16 v21, p6

    invoke-static/range {v2 .. v21}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public canCaptureMorePhotos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canReplace(I)Z
    .locals 0

    .line 14538
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$66;->val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$66;->val$finalCanReplace:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 14543
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$66;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    .line 14516
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$66;->val$chatPhotoProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$66;->val$finalMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    invoke-interface {p1, p3, p2, v0, p4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 0

    .line 14521
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$66;->thumbHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-object p1
.end method

.method public replaceButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 7

    .line 14531
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$66;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isCropped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isPainted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->isFiltered:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 14532
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer$66;->sendMedia(Lorg/telegram/messenger/VideoEditedInfo;ZIZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    move-object v6, p6

    .line 14526
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer$66;->sendMedia(Lorg/telegram/messenger/VideoEditedInfo;ZIZZLjava/lang/String;)V

    return-void
.end method
