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

    .line 4743
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
    .locals 18

    move-object/from16 v0, p0

    .line 4747
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->outdated:Z

    if-eqz v1, :cond_0

    .line 4748
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->showQuoteMessageUpdate()V

    return-void

    .line 4751
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4752
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 4753
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v4, :cond_1

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 4754
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_0

    .line 4755
    :cond_1
    iget-object v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 4756
    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 4758
    :cond_2
    :goto_0
    iget-object v5, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 4759
    iput-boolean v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 4760
    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v15

    :goto_1
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 4761
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 4762
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 4763
    iget v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    move-object/from16 v2, p2

    .line 4764
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v14, 0x1

    .line 4765
    iput-boolean v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 4766
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4767
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 4768
    iput-boolean v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->sending:Z

    .line 4769
    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4770
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v12, v12, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    const/16 v16, 0x0

    move/from16 v13, p3

    move/from16 v14, p4

    move v15, v1

    move-object/from16 v17, p6

    invoke-static/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    .line 4771
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4772
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    move/from16 v2, p4

    move-object/from16 v3, p6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 1

    .line 4778
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->sending:Z

    if-nez v0, :cond_0

    .line 4780
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEditTextCaption$2;->val$sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
