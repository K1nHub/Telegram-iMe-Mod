.class Lorg/telegram/ui/Stories/PeerStoriesView$24;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Lorg/telegram/ui/Components/InstantCameraView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkInstantCameraView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 4214
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getChatActivity()Lorg/telegram/ui/ChatActivity;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/InstantCameraView$Delegate$-CC;->$default$getChatActivity(Lorg/telegram/ui/Components/InstantCameraView$Delegate;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    return-object v0
.end method

.method public getClassGuid()I
    .locals 1

    .line 4253
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    return v0
.end method

.method public getDialogId()J
    .locals 2

    .line 4258
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .line 4217
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 4248
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isInScheduleMode()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/InstantCameraView$Delegate$-CC;->$default$isInScheduleMode(Lorg/telegram/ui/Components/InstantCameraView$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isSecretChat()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/InstantCameraView$Delegate$-CC;->$default$isSecretChat(Lorg/telegram/ui/Components/InstantCameraView$Delegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic isTemplatesChannel(ZZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate$-CC;->$default$isTemplatesChannel(Lorg/telegram/ui/Components/InstantCameraView$Delegate;ZZ)Z

    move-result p1

    return p1
.end method

.method public sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 4225
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v3, :cond_6

    .line 4226
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 4229
    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 4230
    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 4232
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v12, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    const/4 v14, 0x0

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    move/from16 v18, v2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v19, v1

    move-object/from16 v6, p2

    move-object v11, v3

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v20, p6

    invoke-static/range {v4 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4234
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v12, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    const/4 v14, 0x0

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    move/from16 v18, v2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v19, v1

    move-object v11, v3

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v20, p6

    invoke-static/range {v4 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4237
    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 4238
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    const/4 v15, 0x0

    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move/from16 v16, v2

    const/16 v17, 0x0

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v22, v1

    move-object v12, v3

    move-object/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v21, p5

    move-object/from16 v23, p6

    invoke-static/range {v4 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 4239
    :cond_4
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4240
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    const/4 v15, 0x0

    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move/from16 v16, v2

    const/16 v17, 0x0

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v22, v1

    move-object v12, v3

    move-object/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v21, p5

    move-object/from16 v23, p6

    invoke-static/range {v4 .. v23}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    .line 4243
    :cond_5
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$24;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4800(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    :cond_6
    :goto_1
    return-void
.end method
