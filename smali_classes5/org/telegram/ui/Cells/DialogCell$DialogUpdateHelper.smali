.class Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;
.super Ljava/lang/Object;
.source "DialogCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/DialogCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogUpdateHelper"
.end annotation


# instance fields
.field public lastDrawnDialogId:J

.field public lastDrawnDialogIsFolder:Z

.field public lastDrawnDraftHash:I

.field public lastDrawnHasCall:Z

.field public lastDrawnMessageId:J

.field public lastDrawnPinned:Z

.field public lastDrawnPrintingType:Ljava/lang/Integer;

.field public lastDrawnReadState:J

.field public lastDrawnSizeHash:I

.field public lastKnownTypingType:I

.field public lastTopicsCount:I

.field startWaitingTime:J

.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogCell;

.field public typingOutToTop:Z

.field public typingProgres:F

.field waitngNewMessageFroTypingAnimation:Z


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    .line 5108
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5125
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/DialogCell;Lorg/telegram/ui/Cells/DialogCell$1;)V
    .locals 0

    .line 5108
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;-><init>(Lorg/telegram/ui/Cells/DialogCell;)V

    return-void
.end method


# virtual methods
.method public update()Z
    .locals 16

    move-object/from16 v0, p0

    .line 5130
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/DialogCell;->access$1400(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 5132
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/DialogCell;->access$1500(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    iget-wide v4, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDialogId:J

    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 5133
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDialogId:J

    return v2

    :cond_0
    return v3

    .line 5138
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/DialogCell;->access$1600(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v4}, Lorg/telegram/ui/Cells/DialogCell;->access$1600(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 5140
    :goto_0
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->read_inbox_max_id:I

    int-to-long v5, v5

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->read_outbox_max_id:I

    int-to-long v7, v7

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    const/4 v9, -0x1

    if-eqz v8, :cond_3

    move v8, v9

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    add-int/2addr v7, v8

    int-to-long v7, v7

    const/16 v10, 0x10

    shl-long/2addr v7, v10

    add-long/2addr v5, v7

    .line 5141
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_reactions_count:I

    if-lez v7, :cond_4

    const/high16 v7, 0x40000

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 5142
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mentions_count:I

    if-lez v7, :cond_5

    const/high16 v7, 0x80000

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 5143
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/DialogCell;->access$1700(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/DialogCell;->access$1800(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5144
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/DialogCell;->access$1400(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v11}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v11

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/DialogCell;->access$1900(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v13

    invoke-virtual {v7, v11, v12, v13, v2}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JIZ)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 5145
    iget-object v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v7}, Lorg/telegram/ui/Cells/DialogCell;->access$1400(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v11}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v11

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/DialogCell;->access$1900(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v13

    invoke-virtual {v7, v11, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JI)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v8

    .line 5150
    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v12

    shl-int/2addr v12, v10

    add-int/2addr v11, v12

    .line 5152
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/DialogCell;->isForumCell()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 5153
    iget-object v12, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v12}, Lorg/telegram/ui/Cells/DialogCell;->access$1400(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v13

    neg-long v13, v13

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v12, :cond_8

    move v12, v9

    goto :goto_5

    .line 5154
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_5
    if-ne v12, v9, :cond_a

    .line 5155
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/DialogCell;->access$1400(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v9

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v13

    neg-long v13, v13

    invoke-virtual {v9, v13, v14}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    move v12, v3

    .line 5161
    :cond_a
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/DialogCell;->access$1800(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 5162
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/DialogCell;->access$1400(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v13

    iget-object v15, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v15}, Lorg/telegram/ui/Cells/DialogCell;->access$1900(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v15

    invoke-virtual {v9, v13, v14, v15}, Lorg/telegram/messenger/MediaDataController;->getDraft(JI)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 5163
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    move-object v8, v9

    goto :goto_6

    .line 5166
    :cond_c
    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/DialogCell;->access$1700(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 5167
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/DialogCell;->access$1400(Lorg/telegram/ui/Cells/DialogCell;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v9}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v13

    invoke-virtual {v8, v13, v14, v3}, Lorg/telegram/messenger/MediaDataController;->getDraft(JI)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v8

    :cond_d
    :goto_6
    if-nez v8, :cond_e

    move v9, v3

    goto :goto_7

    .line 5169
    :cond_e
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$DraftMessage;->message:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$DraftMessage;->reply_to_msg_id:I

    shl-int/2addr v8, v10

    add-int/2addr v9, v8

    .line 5170
    :goto_7
    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/DialogCell;->access$2000(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/DialogCell;->access$2000(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v8}, Lorg/telegram/ui/Cells/DialogCell;->access$2000(Lorg/telegram/ui/Cells/DialogCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v8, :cond_f

    move v8, v2

    goto :goto_8

    :cond_f
    move v8, v3

    .line 5171
    :goto_8
    iget v10, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnSizeHash:I

    if-ne v10, v11, :cond_10

    iget-wide v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnMessageId:J

    int-to-long v2, v4

    cmp-long v2, v13, v2

    if-nez v2, :cond_10

    iget-wide v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDialogId:J

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    .line 5173
    invoke-static {v13}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v13

    cmp-long v2, v2, v13

    if-nez v2, :cond_10

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDialogIsFolder:Z

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->isFolder:Z

    if-ne v2, v3, :cond_10

    iget-wide v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnReadState:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnPrintingType:Ljava/lang/Integer;

    .line 5176
    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastTopicsCount:I

    if-ne v2, v12, :cond_10

    iget v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDraftHash:I

    if-ne v9, v2, :cond_10

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnPinned:Z

    iget-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    .line 5179
    invoke-static {v3}, Lorg/telegram/ui/Cells/DialogCell;->access$2100(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v3

    if-ne v2, v3, :cond_10

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnHasCall:Z

    if-ne v2, v8, :cond_10

    const/4 v2, 0x0

    return v2

    .line 5184
    :cond_10
    iget-wide v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDialogId:J

    iget-object v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v13}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v13

    cmp-long v2, v2, v13

    if-eqz v2, :cond_12

    if-nez v7, :cond_11

    const/4 v2, 0x0

    goto :goto_9

    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5185
    :goto_9
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    const/4 v2, 0x0

    .line 5186
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    goto :goto_a

    .line 5188
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnPrintingType:Ljava/lang/Integer;

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    if-eqz v2, :cond_13

    goto :goto_b

    :cond_13
    :goto_a
    move v3, v11

    goto :goto_e

    .line 5189
    :cond_14
    :goto_b
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    if-nez v2, :cond_15

    if-nez v7, :cond_15

    const/4 v3, 0x1

    .line 5190
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    .line 5191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->startWaitingTime:J

    goto :goto_c

    :cond_15
    if-eqz v2, :cond_16

    .line 5192
    iget-wide v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnMessageId:J

    int-to-long v13, v4

    cmp-long v2, v2, v13

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    .line 5193
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v2, 0x0

    .line 5195
    :goto_d
    iget-wide v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnMessageId:J

    move v3, v11

    int-to-long v10, v4

    cmp-long v10, v13, v10

    if-eqz v10, :cond_17

    .line 5196
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    goto :goto_e

    :cond_17
    const/4 v2, 0x1

    .line 5198
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingOutToTop:Z

    :goto_e
    if-eqz v7, :cond_18

    .line 5203
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastKnownTypingType:I

    .line 5205
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v2}, Lorg/telegram/ui/Cells/DialogCell;->access$1300(Lorg/telegram/ui/Cells/DialogCell;)J

    move-result-wide v13

    iput-wide v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDialogId:J

    int-to-long v13, v4

    .line 5206
    iput-wide v13, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnMessageId:J

    .line 5207
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->isFolder:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDialogIsFolder:Z

    .line 5208
    iput-wide v5, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnReadState:J

    .line 5209
    iput-object v7, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnPrintingType:Ljava/lang/Integer;

    .line 5210
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnSizeHash:I

    .line 5211
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnDraftHash:I

    .line 5212
    iput v12, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastTopicsCount:I

    .line 5213
    iget-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v1}, Lorg/telegram/ui/Cells/DialogCell;->access$2100(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnPinned:Z

    .line 5214
    iput-boolean v8, v0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnHasCall:Z

    const/4 v1, 0x1

    return v1
.end method

.method public updateAnimationValues()V
    .locals 5

    .line 5220
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    if-nez v0, :cond_2

    .line 5221
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnPrintingType:Ljava/lang/Integer;

    const v1, 0x3da3d70a    # 0.08f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogCell;->access$2200(Lorg/telegram/ui/Cells/DialogCell;)Landroid/text/StaticLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_0

    add-float/2addr v0, v1

    .line 5222
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    .line 5223
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 5224
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->lastDrawnPrintingType:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_1

    sub-float/2addr v0, v1

    .line 5225
    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    .line 5226
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5228
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->typingProgres:F

    goto :goto_1

    .line 5230
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->startWaitingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 5231
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->waitngNewMessageFroTypingAnimation:Z

    .line 5233
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogCell$DialogUpdateHelper;->this$0:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_1
    return-void
.end method
