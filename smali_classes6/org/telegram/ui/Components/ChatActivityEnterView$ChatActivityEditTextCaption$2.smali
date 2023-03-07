.class Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sending:Z

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

.field final synthetic val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field final synthetic val$sourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/io/File;)V
    .locals 0

    .line 4348
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$sourceFile:Ljava/io/File;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canCaptureMorePhotos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 4352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4353
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 4354
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v4, :cond_0

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 4355
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_0

    .line 4356
    :cond_0
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 4357
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 4359
    :cond_1
    :goto_0
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 4360
    iput-boolean v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 4361
    iget-object v3, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 4362
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 4363
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 4364
    iget v3, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    move-object/from16 v3, p2

    .line 4365
    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v14, 0x1

    .line 4366
    iput-boolean v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 4367
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4368
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 4369
    iput-boolean v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->sending:Z

    .line 4370
    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 4371
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    move/from16 v11, p3

    move/from16 v12, p4

    const/4 v15, 0x1

    move-object/from16 v14, p6

    invoke-static/range {v1 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Landroidx/core/view/inputmethod/InputContentInfoCompat;ZZLorg/telegram/messenger/MessageObject;ZIZLjava/lang/String;)V

    .line 4372
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4373
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    move/from16 v2, p4

    move-object/from16 v3, p6

    const/4 v4, 0x0

    invoke-interface {v1, v4, v15, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 1

    .line 4379
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->sending:Z

    if-nez v0, :cond_0

    .line 4381
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
