.class public Lorg/telegram/messenger/ChatObject;
.super Ljava/lang/Object;
.source "ChatObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ChatObject$VideoParticipant;,
        Lorg/telegram/messenger/ChatObject$Call;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_ADMINS:I = 0x4

.field public static final ACTION_BLOCK_USERS:I = 0x2

.field public static final ACTION_CHANGE_INFO:I = 0x1

.field public static final ACTION_DELETE_MESSAGES:I = 0xd

.field public static final ACTION_EDIT_MESSAGES:I = 0xc

.field public static final ACTION_EMBED_LINKS:I = 0x9

.field public static final ACTION_INVITE:I = 0x3

.field public static final ACTION_MANAGE_CALLS:I = 0xe

.field public static final ACTION_MANAGE_TOPICS:I = 0xf

.field public static final ACTION_PIN:I = 0x0

.field public static final ACTION_POST:I = 0x5

.field public static final ACTION_SEND:I = 0x6

.field public static final ACTION_SEND_DOCUMENTS:I = 0x13

.field public static final ACTION_SEND_GAMES:I = -0x3e9

.field public static final ACTION_SEND_GIFS:I = 0x17

.field public static final ACTION_SEND_INLINE:I = -0x3ea

.field public static final ACTION_SEND_MEDIA:I = 0x7

.field public static final ACTION_SEND_MUSIC:I = 0x12

.field public static final ACTION_SEND_PHOTO:I = 0x10

.field public static final ACTION_SEND_PLAIN:I = 0x16

.field public static final ACTION_SEND_POLLS:I = 0xa

.field public static final ACTION_SEND_ROUND:I = 0x15

.field public static final ACTION_SEND_STICKERS:I = 0x8

.field public static final ACTION_SEND_TEXT:I = 0x16

.field public static final ACTION_SEND_VIDEO:I = 0x11

.field public static final ACTION_SEND_VOICE:I = 0x14

.field public static final ACTION_VIEW:I = 0xb

.field public static final CHAT_TYPE_CHANNEL:I = 0x2

.field public static final CHAT_TYPE_CHAT:I = 0x0

.field public static final CHAT_TYPE_FORUM:I = 0x5

.field public static final CHAT_TYPE_MEGAGROUP:I = 0x4

.field public static final CHAT_TYPE_USER:I = 0x3

.field private static final MAX_PARTICIPANTS_COUNT:I = 0x1388

.field public static final VIDEO_FRAME_HAS_FRAME:I = 0x2

.field public static final VIDEO_FRAME_NO_FRAME:I = 0x0

.field public static final VIDEO_FRAME_REQUESTING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x4

    .line 1770
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canAddBotsToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 3

    .line 1856
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1857
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p0, :cond_3

    :cond_1
    return v1

    .line 1861
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x3

    .line 1833
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x2

    .line 1774
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1766
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canCreateTopic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0xf

    .line 1873
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1892
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2, v3, v4, p2}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1895
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0xd

    .line 1899
    invoke-static {p1, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0, p2}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p0, :cond_3

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_3

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    sub-int/2addr p0, p1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->groupedMessages:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gt p0, p1, :cond_3

    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0, p1}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0xe

    .line 1778
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 1

    .line 1884
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z
    .locals 0

    .line 1881
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, p2}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0xf

    .line 1877
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canPinMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1869
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x5

    .line 1829
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendAnyMedia(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 132
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static canSendAsPeers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1733
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x13

    .line 1805
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendEmbed(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x9

    .line 1786
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendGames(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, -0x3e9

    .line 54
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendGifs(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x17

    .line 50
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, -0x3ea

    .line 58
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/4 v0, 0x6

    .line 1821
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x12

    .line 1801
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x10

    .line 1793
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x16

    .line 1825
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0xa

    .line 1817
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x15

    .line 1813
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x8

    .line 1782
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x11

    .line 1797
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    const/16 v0, 0x14

    .line 1809
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p0

    return p0
.end method

.method public static canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1690
    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1693
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    .line 1696
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isBannableAction(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1697
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isAdminAction(I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 1700
    :cond_3
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v1, :cond_5

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_layer92;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer92;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer77;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer72;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;

    if-nez v3, :cond_4

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;

    if-nez v3, :cond_4

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;

    if-eqz p0, :cond_5

    :cond_4
    return v0

    :cond_5
    if-eqz v1, :cond_7

    .line 1712
    invoke-static {v1, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v2
.end method

.method public static canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1639
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1642
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1649
    :pswitch_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    goto :goto_0

    .line 1673
    :pswitch_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto :goto_0

    .line 1667
    :pswitch_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    goto :goto_0

    .line 1664
    :pswitch_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto :goto_0

    .line 1661
    :cond_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto :goto_0

    .line 1658
    :cond_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    goto :goto_0

    .line 1655
    :cond_4
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    goto :goto_0

    .line 1670
    :cond_5
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    goto :goto_0

    .line 1652
    :cond_6
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    goto :goto_0

    .line 1646
    :cond_7
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    :goto_0
    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1930
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getAllowedSendString(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;
    .locals 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    const-string v2, "SendMediaPermissionPhotos"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const-string v2, ", "

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    const-string v3, "SendMediaPermissionVideos"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    const-string v3, "SendMediaPermissionStickersGifs"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendGifs(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->user_restrictions_send_gifs:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendGames(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->user_restrictions_send_games:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_8
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->user_restrictions_send_inline:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_a
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_b
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    const-string v3, "SendMediaPermissionMusic"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_c
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_d
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    const-string v3, "SendMediaPermissionFiles"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_e
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_f
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    const-string v3, "SendMediaPermissionVoice"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_10
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_11
    sget v1, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    const-string v3, "SendMediaPermissionRound"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_12
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendEmbed(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_13

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_13
    sget p0, Lorg/telegram/messenger/R$string;->SendMediaEmbededLinks:I

    const-string v1, "SendMediaEmbededLinks"

    invoke-static {v1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    .line 1573
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    return p0

    :cond_1
    const/16 v1, -0x3e9

    if-ne p1, v1, :cond_2

    .line 1576
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    return p0

    :cond_2
    const/16 v1, -0x3ea

    if-ne p1, v1, :cond_3

    .line 1579
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    return p0

    :cond_3
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v0

    .line 1616
    :pswitch_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    return p0

    .line 1614
    :pswitch_1
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    return p0

    .line 1612
    :pswitch_2
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    return p0

    .line 1610
    :pswitch_3
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    return p0

    .line 1608
    :pswitch_4
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    return p0

    .line 1606
    :pswitch_5
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    return p0

    .line 1604
    :pswitch_6
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    return p0

    .line 1602
    :pswitch_7
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    return p0

    .line 1600
    :pswitch_8
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    return p0

    .line 1598
    :pswitch_9
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    return p0

    .line 1596
    :pswitch_a
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    return p0

    .line 1594
    :pswitch_b
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    return p0

    .line 1592
    :pswitch_c
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    return p0

    .line 1590
    :pswitch_d
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    return p0

    .line 1588
    :cond_4
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    return p0

    .line 1586
    :cond_5
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    return p0

    .line 1584
    :cond_6
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;
    .locals 2

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParticipantVolume(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;)I
    .locals 1

    .line 1518
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x2710

    :goto_0
    return p0
.end method

.method public static getPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$ChatPhoto;
    .locals 1

    .line 1964
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->hasPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1968
    invoke-static {p0, v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1975
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 1976
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    return-object p0

    .line 1978
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 1979
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1980
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v2, :cond_4

    .line 1981
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1982
    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1986
    :cond_5
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_7

    .line 1987
    :cond_6
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static getRestrictedErrorText(Lorg/telegram/tgnet/TLRPC$Chat;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ne p1, v2, :cond_3

    if-eqz p0, :cond_2

    .line 2016
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2018
    :cond_0
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2019
    sget p0, Lorg/telegram/messenger/R$string;->AttachGifRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachGifRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2021
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->AttachGifRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachGifRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2017
    :cond_2
    :goto_0
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachGifRestricted:I

    const-string p1, "GlobalAttachGifRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v2, 0x8

    if-ne p1, v2, :cond_7

    if-eqz p0, :cond_6

    .line 2024
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 2026
    :cond_4
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2027
    sget p0, Lorg/telegram/messenger/R$string;->AttachStickersRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachStickersRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2029
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->AttachStickersRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachStickersRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2025
    :cond_6
    :goto_1
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachStickersRestricted:I

    const-string p1, "GlobalAttachStickersRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v2, 0x10

    if-ne p1, v2, :cond_b

    if-eqz p0, :cond_a

    .line 2032
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 2034
    :cond_8
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2035
    sget p0, Lorg/telegram/messenger/R$string;->AttachPhotoRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachPhotoRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2037
    :cond_9
    sget p1, Lorg/telegram/messenger/R$string;->AttachPhotoRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachPhotoRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2033
    :cond_a
    :goto_2
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachPhotoRestricted:I

    const-string p1, "GlobalAttachPhotoRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v2, 0x11

    if-ne p1, v2, :cond_f

    if-eqz p0, :cond_e

    .line 2040
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 2042
    :cond_c
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2043
    sget p0, Lorg/telegram/messenger/R$string;->AttachVideoRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachVideoRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2045
    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->AttachVideoRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachVideoRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2041
    :cond_e
    :goto_3
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachVideoRestricted:I

    const-string p1, "GlobalAttachVideoRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/16 v2, 0x13

    if-ne p1, v2, :cond_13

    if-eqz p0, :cond_12

    .line 2048
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_4

    .line 2050
    :cond_10
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2051
    sget p0, Lorg/telegram/messenger/R$string;->AttachDocumentsRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachDocumentsRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2053
    :cond_11
    sget p1, Lorg/telegram/messenger/R$string;->AttachDocumentsRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachDocumentsRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2049
    :cond_12
    :goto_4
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachDocumentsRestricted:I

    const-string p1, "GlobalAttachDocumentsRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 v2, 0x7

    if-ne p1, v2, :cond_17

    if-eqz p0, :cond_16

    .line 2056
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_5

    .line 2058
    :cond_14
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2059
    sget p0, Lorg/telegram/messenger/R$string;->AttachMediaRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachMediaRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2061
    :cond_15
    sget p1, Lorg/telegram/messenger/R$string;->AttachMediaRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachMediaRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2057
    :cond_16
    :goto_5
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachMediaRestricted:I

    const-string p1, "GlobalAttachMediaRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    const/16 v2, 0x12

    if-ne p1, v2, :cond_1b

    if-eqz p0, :cond_1a

    .line 2064
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_6

    .line 2066
    :cond_18
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2067
    sget p0, Lorg/telegram/messenger/R$string;->AttachAudioRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachAudioRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2069
    :cond_19
    sget p1, Lorg/telegram/messenger/R$string;->AttachAudioRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachAudioRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2065
    :cond_1a
    :goto_6
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachAudioRestricted:I

    const-string p1, "GlobalAttachAudioRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const/16 v2, 0x16

    if-ne p1, v2, :cond_1f

    if-eqz p0, :cond_1e

    .line 2072
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_7

    .line 2074
    :cond_1c
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2075
    sget p0, Lorg/telegram/messenger/R$string;->AttachPlainRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachPlainRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2077
    :cond_1d
    sget p1, Lorg/telegram/messenger/R$string;->AttachPlainRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachPlainRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2073
    :cond_1e
    :goto_7
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachPlainRestricted:I

    const-string p1, "GlobalAttachPlainRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    const/16 v2, 0x15

    if-ne p1, v2, :cond_23

    if-eqz p0, :cond_22

    .line 2080
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_8

    .line 2082
    :cond_20
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2083
    sget p0, Lorg/telegram/messenger/R$string;->AttachRoundRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachRoundRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2085
    :cond_21
    sget p1, Lorg/telegram/messenger/R$string;->AttachRoundRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachRoundRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2081
    :cond_22
    :goto_8
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachRoundRestricted:I

    const-string p1, "GlobalAttachRoundRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const/16 v2, 0x14

    if-ne p1, v2, :cond_27

    if-eqz p0, :cond_26

    .line 2088
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_9

    .line 2090
    :cond_24
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2091
    sget p0, Lorg/telegram/messenger/R$string;->AttachVoiceRestrictedForever:I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "AttachVoiceRestrictedForever"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2093
    :cond_25
    sget p1, Lorg/telegram/messenger/R$string;->AttachVoiceRestricted:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AttachVoiceRestricted"

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2089
    :cond_26
    :goto_9
    sget p0, Lorg/telegram/messenger/R$string;->GlobalAttachVoiceRestricted:I

    const-string p1, "GlobalAttachVoiceRestricted"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const-string p0, ""

    return-object p0
.end method

.method public static getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;)J
    .locals 1

    const/4 v0, 0x0

    .line 1841
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/ChatObject;->getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)J
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1845
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_2

    .line 1847
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    neg-long v0, p0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_0
    return-wide v0

    :cond_2
    if-eqz p0, :cond_4

    .line 1849
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz p1, :cond_4

    .line 1850
    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    if-eqz p2, :cond_3

    neg-long p0, p0

    :cond_3
    return-wide p0

    .line 1852
    :cond_4
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p0

    return-wide p0
.end method

.method public static hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1762
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_1

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1960
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasPublicLink(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1996
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1997
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1999
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 2000
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2001
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v2, :cond_2

    .line 2002
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static isActionBanned(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1632
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1625
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1628
    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->getBannedRight(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;I)Z

    move-result p0

    return p0
.end method

.method private static isAdminAction(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static isBannableAction(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-eq p0, v1, :cond_1

    const/16 v1, -0x3e9

    if-eq p0, v1, :cond_1

    const/16 v1, -0x3ea

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isCanWriteToChannel(JI)Z
    .locals 0

    .line 1925
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 1926
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isChannel(JI)Z
    .locals 0

    .line 1915
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 1916
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez p1, :cond_1

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1737
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_1

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isChannelAndNotMegaGroup(JI)Z
    .locals 0

    .line 1920
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 1921
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    return p0
.end method

.method public static isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1749
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1741
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isForum(IJ)Z
    .locals 0

    .line 124
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 126
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1753
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1725
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1721
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMegagroup(IJ)Z
    .locals 0

    .line 1757
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    .line 1758
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    .line 1745
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMyTopic(IJI)Z
    .locals 1

    .line 1911
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatObject;->isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result p0

    return p0
.end method

.method public static isMyTopic(ILorg/telegram/tgnet/TLRPC$Chat;I)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1907
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {p0, v0, v1, p2}, Lorg/telegram/messenger/ChatObject;->isMyTopic(IJI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMyTopic(ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 1903
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->my:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide p0, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v0, p0

    if-nez v2, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1729
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    .line 2011
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isTemplatesChat(IJ)Z
    .locals 2

    neg-long v0, p1

    .line 62
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/fork/controller/TemplatesController;->getInstance(I)Lorg/fork/controller/TemplatesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/fork/controller/TemplatesController;->getTemplatesChannelId()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z
    .locals 4

    .line 109
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 112
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 113
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 115
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static shouldSendAnonymously(Lorg/telegram/tgnet/TLRPC$Chat;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1837
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
