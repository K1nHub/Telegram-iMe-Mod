.class Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$14;->openPhotoViewerForEdit(Ljava/util/ArrayList;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sending:Z

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

.field final synthetic val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field final synthetic val$sourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/io/File;)V
    .locals 0

    .line 2549
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->val$sourceFile:Ljava/io/File;

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

    .line 2553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2554
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 2555
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v4, :cond_0

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2556
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_0

    .line 2557
    :cond_0
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2558
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 2560
    :cond_1
    :goto_0
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 2561
    iput-boolean v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 2562
    iget-object v3, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 2563
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 2564
    iget-object v4, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 2565
    iget v3, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    move-object/from16 v3, p2

    .line 2566
    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v14, 0x1

    .line 2567
    iput-boolean v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 2568
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 2570
    iput-boolean v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->sending:Z

    .line 2571
    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 2572
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    move/from16 v11, p3

    move/from16 v12, p4

    const/4 v15, 0x1

    move-object/from16 v14, p6

    invoke-static/range {v1 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Landroidx/core/view/inputmethod/InputContentInfoCompat;ZZLorg/telegram/messenger/MessageObject;ZIZLjava/lang/String;)V

    .line 2573
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2574
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

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

    .line 2580
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->sending:Z

    if-nez v0, :cond_0

    .line 2582
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$2;->val$sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
