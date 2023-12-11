.class Lorg/telegram/ui/ChatActivity$78;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createChatAttachView()V
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

    .line 12180
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedButton(IZZIZLjava/lang/String;Z)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 12183
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v3, :cond_0

    goto/16 :goto_e

    .line 12186
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getEditingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    const/4 v4, 0x7

    if-eq v1, v4, :cond_3

    if-ne v1, v2, :cond_1

    .line 12187
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 12295
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v2, :cond_2

    .line 12296
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissWithButtonClick(I)V

    .line 12298
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ChatActivity;->access$34200(Lorg/telegram/ui/ChatActivity;I)V

    return-void

    :cond_3
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v3, :cond_4

    .line 12189
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    .line 12191
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v3

    .line 12192
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosOrder()Ljava/util/ArrayList;

    move-result-object v5

    .line 12194
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v6

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_f

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v6, :cond_f

    .line 12195
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$34000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    .line 12196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v8

    move-object v11, v10

    move v6, v9

    .line 12199
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_8

    .line 12200
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 12201
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 12202
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v13

    aget-object v13, v13, v9

    iget v14, v12, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 12203
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_5

    .line 12204
    iget-object v14, v13, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    :cond_5
    if-nez v6, :cond_6

    move-object v11, v12

    :cond_6
    move-object v10, v13

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12211
    :cond_8
    iput-object v8, v10, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 12212
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v11, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_9
    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 12213
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v11, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 12214
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 12215
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 12216
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move v5, v9

    .line 12217
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 12218
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 12220
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 12221
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 12223
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 12224
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 12226
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$34000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 12227
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$34000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12228
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$34000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    .line 12229
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 12230
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_e

    .line 12231
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 12232
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_d

    .line 12233
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$34000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupWillTransformToSingleMessage(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    goto :goto_5

    .line 12235
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$34000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupWillChanged(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    .line 12237
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    add-int/2addr v1, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemRangeChanged(II)V

    :cond_e
    return-void

    .line 12242
    :cond_f
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    move v6, v9

    :goto_6
    int-to-double v10, v6

    .line 12243
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_19

    .line 12244
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v11, v6, 0xa

    sub-int/2addr v10, v11

    const/16 v12, 0xa

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 12245
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v12, v9

    :goto_7
    if-ge v12, v10, :cond_14

    add-int v14, v11, v12

    .line 12247
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v14, v15, :cond_10

    goto :goto_a

    .line 12250
    :cond_10
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 12252
    new-instance v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v15}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 12253
    iget-boolean v8, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v8, :cond_11

    iget-object v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 12254
    iput-object v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_8

    .line 12255
    :cond_11
    iget-object v4, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 12256
    iput-object v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 12258
    :cond_12
    :goto_8
    iget-object v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 12259
    iput-boolean v8, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 12260
    iget-object v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_13

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    :goto_9
    iput-object v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 12261
    iget-object v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 12262
    iget-object v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 12263
    iget v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    .line 12264
    iget-object v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 12265
    iget-boolean v4, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    iput-boolean v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->canDeleteAfter:Z

    .line 12266
    iget-object v4, v14, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/messenger/SendMessagesHelper;->checkUpdateStickersOrder(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    .line 12267
    iget-boolean v4, v14, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v4, v15, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->hasMediaSpoilers:Z

    .line 12268
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12269
    invoke-virtual {v14}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    :goto_a
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto :goto_7

    :cond_14
    if-nez v6, :cond_15

    .line 12273
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-object v10, v10, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    invoke-static {v4, v8, v10}, Lorg/telegram/ui/ChatActivity;->access$34100(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 12274
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    iget-boolean v4, v4, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->updateStickersOrder:Z

    move/from16 v25, v4

    goto :goto_b

    :cond_15
    move/from16 v25, v9

    :goto_b
    if-eqz p7, :cond_16

    .line 12278
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->presenter:Lcom/iMe/ui/chat/ChatPresenter;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v2, v13, v7, v1}, Lcom/iMe/ui/chat/ChatPresenter;->checkAndSendReaction(Ljava/lang/Object;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 12282
    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v12

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v16

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v19

    if-eq v1, v2, :cond_18

    if-eqz p5, :cond_17

    goto :goto_c

    :cond_17
    move/from16 v20, v9

    goto :goto_d

    :cond_18
    :goto_c
    const/16 v20, 0x1

    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/16 v26, 0x0

    move/from16 v21, p2

    move-object/from16 v22, v4

    move/from16 v23, p3

    move/from16 v24, p4

    move-object/from16 v27, p6

    invoke-static/range {v12 .. v27}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingMedia(Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZZLorg/telegram/messenger/MessageObject;ZIZLandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 12284
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)V

    .line 12285
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    :cond_1a
    if-eqz p4, :cond_1c

    .line 12288
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 12289
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v9}, Lorg/telegram/ui/ChatActivity;->access$5402(Lorg/telegram/ui/ChatActivity;I)I

    .line 12291
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$5412(Lorg/telegram/ui/ChatActivity;I)I

    .line 12292
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_1c
    :goto_e
    return-void
.end method

.method public didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 12308
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 12309
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 12312
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 12313
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_1
    :goto_0
    return-void
.end method

.method public doOnIdle(Ljava/lang/Runnable;)V
    .locals 1

    .line 12328
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public needEnterComment()Z
    .locals 1

    .line 12323
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    move-result v0

    return v0
.end method

.method public onCameraOpened()V
    .locals 1

    .line 12318
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    return-void
.end method

.method public synthetic onWallpaperSelected(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$onWallpaperSelected(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic openAvatarsSearch()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$openAvatarsSearch(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    return-void
.end method

.method public synthetic sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate$-CC;->$default$sendAudio(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZI)V

    return-void
.end method
