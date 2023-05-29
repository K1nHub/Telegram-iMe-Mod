.class public Lorg/telegram/messenger/ForwardingMessagesParams;
.super Ljava/lang/Object;
.source "ForwardingMessagesParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;
    }
.end annotation


# instance fields
.field public groupedMessagesMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessages;",
            ">;"
        }
    .end annotation
.end field

.field public hasCaption:Z

.field public hasPreview:Z

.field public hasSenders:Z

.field public hasSpoilers:Z

.field public hideCaption:Z

.field public hideForwardSendersName:Z

.field public isFromShareAlert:Z

.field public isLastHideMedia:Z

.field public isLastHidePreview:Z

.field public isSecret:Z

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public multiplyUsers:Z

.field public needForceHideForwardAuthor:Z

.field public needHideMedia:Z

.field public needHidePreview:Z

.field public pollChoosenAnswers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;",
            ">;"
        }
    .end annotation
.end field

.field public previewMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public selectedIds:Landroid/util/SparseBooleanArray;

.field public template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

.field public willSeeSenders:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->pollChoosenAnswers:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    .line 67
    iput-boolean v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    .line 68
    iput-boolean v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    .line 69
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->isSecret:Z

    .line 70
    iput-boolean v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSpoilers:Z

    .line 71
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, v0

    .line 72
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p3, v1, :cond_e

    .line 73
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 74
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    .line 78
    :cond_0
    iget-boolean v3, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    .line 82
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 84
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 85
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 86
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iput-wide v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 87
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 88
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 89
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 90
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 91
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 92
    iput v0, v8, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 93
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 94
    iget-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-boolean v3, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSpoilers:Z

    if-nez v3, :cond_3

    .line 96
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 97
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    if-eqz v4, :cond_2

    .line 98
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSpoilers:Z

    .line 105
    :cond_3
    iput-boolean v2, v8, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 106
    iput-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 107
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    iput-wide v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    .line 109
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    iput-boolean v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 110
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    iput-boolean v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    .line 111
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    .line 112
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 113
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 117
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 118
    iget-boolean v3, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->isSecret:Z

    const/4 v4, 0x0

    if-nez v3, :cond_7

    .line 119
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_5

    .line 121
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result v5

    if-nez v5, :cond_4

    .line 122
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    goto :goto_1

    .line 124
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->willSeeSenders:Z

    .line 126
    :goto_1
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v5, :cond_8

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 127
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 130
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    .line 131
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 132
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result v5

    if-nez v5, :cond_6

    .line 133
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    goto :goto_2

    .line 135
    :cond_6
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->willSeeSenders:Z

    goto :goto_2

    :cond_7
    move-object v3, v4

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 141
    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 142
    iget v3, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 146
    :cond_9
    new-instance v3, Lorg/telegram/messenger/ForwardingMessagesParams$1;

    iget v7, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/messenger/ForwardingMessagesParams$1;-><init>(Lorg/telegram/messenger/ForwardingMessagesParams;ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 170
    iget-boolean v5, v1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 171
    iget-boolean v5, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 172
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 174
    iput-boolean v2, v3, Lorg/telegram/messenger/MessageObject;->preview:Z

    .line 175
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_b

    .line 176
    iget-object v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-nez v2, :cond_a

    .line 178
    new-instance v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-direct {v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;-><init>()V

    .line 179
    iget-object v4, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 181
    :cond_a
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 186
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 187
    new-instance v4, Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;-><init>(Lorg/telegram/messenger/ForwardingMessagesParams;)V

    .line 188
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 189
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 190
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_pollResults;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_pollResults;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    .line 191
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    iput v6, v4, Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;->totalVotersCached:I

    .line 193
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 195
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->canUnvote()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 196
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_3
    if-ge v6, v5, :cond_d

    .line 197
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    .line 198
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    if-eqz v8, :cond_c

    .line 199
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;-><init>()V

    .line 200
    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    .line 201
    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->correct:Z

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->correct:Z

    .line 202
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->flags:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->flags:I

    .line 203
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->option:[B

    .line 204
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->voters:I

    .line 205
    iget-object v7, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->pollChoosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 208
    :cond_c
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PollResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 213
    :cond_d
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v1

    iput-boolean v1, v3, Lorg/telegram/messenger/MessageObject;->isWebpage:Z

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 216
    :cond_e
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 217
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    .line 218
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 220
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 221
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_7

    .line 223
    :cond_f
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 224
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_10

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 225
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_6

    .line 227
    :cond_10
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_6
    neg-long v3, v3

    .line 230
    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 231
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 234
    :cond_12
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    if-le p1, v2, :cond_13

    .line 235
    iput-boolean v2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->multiplyUsers:Z

    .line 237
    :cond_13
    :goto_8
    iget-object p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_14

    .line 238
    iget-object p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method


# virtual methods
.method public enableTemplatePreviewMode(Lcom/iMe/storage/domain/model/templates/TemplateModel;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    iput-boolean p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    iput-boolean p1, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    return-void
.end method

.method public getSelectedMessages(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ForwardingMessagesParams;->getSelectedMessages(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public getSelectedMessages(Ljava/util/ArrayList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 243
    iget-object p2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    .line 244
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 245
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 246
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_1

    goto :goto_2

    .line 252
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    .line 253
    iget-object v4, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public isTemplatePreview()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/ForwardingMessagesParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
