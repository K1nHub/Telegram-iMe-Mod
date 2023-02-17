.class public Lorg/telegram/ui/ChatUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChatUsersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatUsersActivity$DiffCallback;,
        Lorg/telegram/ui/ChatUsersActivity$ListAdapter;,
        Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;,
        Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;
    }
.end annotation


# instance fields
.field private addNew2Row:I

.field private addNewRow:I

.field private addNewSectionRow:I

.field private addUsersRow:I

.field private antiSpamInfoRow:I

.field private antiSpamRow:I

.field private antiSpamToggleLoading:Z

.field private blockedEmptyRow:I

.field private botEndRow:I

.field private botHeaderRow:I

.field private botStartRow:I

.field private bots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private botsEndReached:Z

.field private botsMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private changeInfoRow:I

.field private chatId:J

.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private contactsEndReached:Z

.field private contactsEndRow:I

.field private contactsHeaderRow:I

.field private contactsMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private contactsStartRow:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private delayResults:I

.field private delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private embedLinksRow:I

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private firstLoaded:Z

.field private flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gigaConvertRow:I

.field private gigaHeaderRow:I

.field private gigaInfoRow:I

.field private hideMembersInfoRow:I

.field private hideMembersRow:I

.field private hideMembersToggleLoading:Z

.field private ignoredUsers:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialBannedRights:Ljava/lang/String;

.field private initialSlowmode:I

.field private isChannel:Z

.field private isForum:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

.field private loadingHeaderRow:I

.field private loadingProgressRow:I

.field private loadingUserCellRow:I

.field private loadingUsers:Z

.field private manageTopicsRow:I

.field private membersHeaderRow:I

.field private needOpenSearch:Z

.field private openTransitionStarted:Z

.field private participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private participantsDivider2Row:I

.field private participantsDividerRow:I

.field private participantsEndRow:I

.field private participantsInfoRow:I

.field private participantsMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private participantsStartRow:I

.field private permissionsSectionRow:I

.field private pinMessagesRow:I

.field private progressBar:Landroid/view/View;

.field private recentActionsRow:I

.field private removedUsersRow:I

.field private restricted1SectionRow:I

.field private rowCount:I

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

.field private searching:Z

.field private selectType:I

.field private selectedSlowmode:I

.field private sendGamesRow:I

.field private sendGifsRow:I

.field private sendInlineRow:I

.field private sendMediaEmbededLinksRow:I

.field private sendMediaExpanded:Z

.field private sendMediaFilesRow:I

.field private sendMediaMusicRow:I

.field private sendMediaPhotosRow:I

.field private sendMediaRow:I

.field private sendMediaStickerGifsRow:I

.field private sendMediaVideoMessagesRow:I

.field private sendMediaVideosRow:I

.field private sendMediaVoiceMessagesRow:I

.field private sendMessagesRow:I

.field private sendPollsRow:I

.field private sendStickersRow:I

.field private slowmodeInfoRow:I

.field private slowmodeRow:I

.field private slowmodeSelectRow:I

.field private type:I

.field private undoView:Lorg/telegram/ui/Components/UndoView;


# direct methods
.method public static synthetic $r8$lambda$3yeuA8-3TX61qnliSe8HOKeoU_s(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$onOwnerChaged$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Bzkz5varA3wN12n9j3x1POG6yc0(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$3(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Coc4bnqLyLqp5Dtk_pUlBkulcNc(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ChatUsersActivity;->lambda$loadChatParticipants$19(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DZg0PBD9kYhD-9lixi1aStIkCS8(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->lambda$getThemeDescriptions$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dn3nHoF7puKegi9zfglv-pKh9tA(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EckcyLQ5UX5D0TMWguc9jM01OS4(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$loadChatParticipants$18(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GTBFLnRvWt1BQkm501fN7d9s1_8(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ChatUsersActivity;->lambda$loadChatParticipants$20(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JAZnh41emkntcs3ORx9TSo_vXZU(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$0(Lorg/telegram/ui/Cells/TextCell;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JiqnBp2GZ4JRmhuamjw6j-b9kag(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$2(Lorg/telegram/ui/Cells/TextCell;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$O2VcF9h3VfuYFjEYuI9rNosHsP4(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$4(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wu8clmgGVlt5GK-mn0I_aFSSoW8(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$checkDiscard$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XWwWtXUwEUddQF-DTO4l2fVjsJY(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->lambda$didReceivedNotification$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$bVoAEhAewT3EKW6_FCSpyQF0u9I(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$9(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mjR73xNP55Uz2r9UAt5nLz72b7s(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$5(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$nXBEgyfRGpb-_cw-S2MRYIi-fwQ(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$1(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfIUM_FgHqiVun-wI_rLBNgN9LI(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$11(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qoZmOzYz8qJjJyT7OVkPGIinmzo(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$processDone$17(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$sbnnRzHEkfDG02u5ERrfo3vKT8I(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$checkDiscard$15(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w6B2c7fhUJidfDmSGWVfZWaeB2g(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$sortAdmins$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wnnPZIiHbevNgwdOvvVxDjjB8ww(Lorg/telegram/ui/ChatUsersActivity;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->lambda$sortUsers$21(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yzxnLK9ZKgqo3tgVPuwlJD53TQk(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;JZLorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$10(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;JZLorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zX4QURUlTSB-4sCE8P550u64opY(Lorg/telegram/ui/ChatUsersActivity;[Ljava/lang/CharSequence;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$13([Ljava/lang/CharSequence;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zlYGruYXkLdCr6iEOLkS5JeUg5Q(Lorg/telegram/ui/ChatUsersActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$6(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 9

    .line 240
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 114
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    .line 120
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 121
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 122
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "open_search"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "selectType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    .line 245
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p1, :cond_0

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 248
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 249
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 250
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 251
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 252
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 253
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 254
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 255
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 256
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 257
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 258
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 259
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 260
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 261
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 262
    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 263
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 264
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 265
    iget-boolean v8, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 266
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_0

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 268
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 269
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 270
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 271
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 272
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 273
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 276
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->sortUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10100(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChatUsersActivity;II)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->onOwnerChaged(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChatUsersActivity;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChatUsersActivity;)J
    .locals 2

    .line 86
    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Z)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLObject;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ChatUsersActivity;I)I
    .locals 0

    .line 86
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->formatUserPermissions(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ChatUsersActivity;I)I
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->getSecondsForIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ChatUsersActivity;I)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->formatSeconds(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ChatUsersActivity;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setSendMediaEnabled(Z)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChatUsersActivity;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->showItemsAnimated(I)V

    return-void
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingProgressRow:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ChatUsersActivity;I)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->isExpandableSendMediaRow(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatUsersActivity;->updateParticipantWithRights(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V

    return-void
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method private checkDiscard()Z
    .locals 3

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 2072
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2073
    :cond_1
    :goto_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2074
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    const-string v2, "UserRestrictionsApplyChanges"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2075
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v1, :cond_2

    .line 2076
    sget v1, Lorg/telegram/messenger/R$string;->ChannelSettingsChangedAlert:I

    const-string v2, "ChannelSettingsChangedAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2078
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->GroupSettingsChangedAlert:I

    const-string v2, "GroupSettingsChangedAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2080
    :goto_1
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2081
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2082
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0
.end method

.method private createMenuForParticipant(Lorg/telegram/tgnet/TLObject;Z)Z
    .locals 23

    move-object/from16 v12, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_25

    .line 1736
    iget v1, v12, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v1, :cond_0

    goto/16 :goto_15

    .line 1745
    :cond_0
    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 1746
    move-object v1, v7

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1747
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    .line 1748
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    .line 1749
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1750
    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1751
    iget v11, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 1752
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    move-object v13, v9

    move v9, v11

    move-object v11, v1

    goto :goto_0

    .line 1753
    :cond_1
    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_2

    .line 1754
    move-object v1, v7

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1755
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1756
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 1757
    iget-object v8, v12, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    const-string v9, ""

    move-object v11, v9

    const/4 v10, 0x0

    const/4 v13, 0x0

    move v9, v1

    goto :goto_0

    :cond_2
    move-wide v5, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    cmp-long v1, v5, v2

    if-eqz v1, :cond_24

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v14, v5, v2

    if-nez v14, :cond_3

    goto/16 :goto_14

    .line 1772
    :cond_3
    iget v2, v12, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const-string v3, "EditAdminRights"

    const-string v14, "dialogRedIcon"

    const-string v15, "dialogTextRed2"

    const/4 v4, 0x2

    const/4 v0, 0x1

    if-ne v2, v4, :cond_17

    .line 1773
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 1774
    iget-object v1, v12, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-nez v1, :cond_4

    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-nez v1, :cond_4

    instance-of v1, v7, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-nez v1, :cond_4

    if-eqz v8, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 1775
    :goto_1
    instance-of v2, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v2, :cond_6

    instance-of v4, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v4, :cond_6

    instance-of v4, v7, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez v4, :cond_6

    instance-of v4, v7, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v4, :cond_7

    :cond_6
    if-eqz v8, :cond_8

    :cond_7
    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    if-nez v2, :cond_a

    .line 1776
    instance-of v2, v7, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v2, 0x1

    .line 1778
    :goto_4
    iget v4, v12, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v4, :cond_b

    .line 1779
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    xor-int/2addr v4, v0

    and-int/2addr v1, v4

    :cond_b
    if-nez p2, :cond_c

    .line 1786
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1788
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v4

    move-object/from16 v4, v16

    move-object/from16 v22, v20

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_5
    if-eqz v1, :cond_f

    if-eqz p2, :cond_d

    return v0

    :cond_d
    if-eqz v2, :cond_e

    .line 1799
    sget v1, Lorg/telegram/messenger/R$string;->EditAdminRights:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    sget v1, Lorg/telegram/messenger/R$string;->SetAsAdmin:I

    const-string v2, "SetAsAdmin"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object/from16 v3, v21

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1801
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    move-object/from16 v3, v21

    move-object/from16 v2, v22

    .line 1804
    :goto_7
    iget-object v0, v12, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v8, :cond_13

    if-eqz p2, :cond_10

    const/4 v0, 0x1

    return v0

    .line 1808
    :cond_10
    iget-boolean v0, v12, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v0, :cond_12

    .line 1809
    iget-object v0, v12, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v12, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v0, :cond_11

    .line 1810
    sget v0, Lorg/telegram/messenger/R$string;->ChangePermissions:I

    const-string v1, "ChangePermissions"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1812
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    const/4 v0, 0x1

    .line 1814
    :goto_8
    sget v1, Lorg/telegram/messenger/R$string;->KickFromGroup:I

    const-string v0, "KickFromGroup"

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1816
    :cond_12
    sget v0, Lorg/telegram/messenger/R$string;->ChannelRemoveUser:I

    const-string v1, "ChannelRemoveUser"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    :goto_9
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 1819
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x1

    goto :goto_a

    :cond_13
    const/16 v16, 0x0

    :goto_a
    if-eqz v4, :cond_16

    .line 1822
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_c

    .line 1826
    :cond_14
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1827
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->toIntArray(Ljava/util/List;)[I

    move-result-object v2

    move-object/from16 v21, v14

    new-instance v14, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;

    move-object/from16 v22, v15

    move-object v15, v0

    move-object v0, v14

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v12

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move-wide v4, v5

    move v6, v8

    move-object/from16 v7, p1

    move v8, v9

    move-object v9, v10

    move-object v10, v13

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;JZLorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v12, v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1847
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    move-object/from16 v9, p0

    .line 1848
    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz v16, :cond_15

    .line 1850
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    goto :goto_b

    :cond_15
    const/4 v12, 0x1

    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_13

    :cond_16
    :goto_c
    move-object v9, v12

    const/4 v0, 0x0

    return v0

    :cond_17
    move-object v9, v12

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v12, 0x1

    const/4 v0, 0x3

    const-string v4, "ChannelDeleteFromList"

    if-ne v2, v0, :cond_19

    .line 1855
    iget-object v0, v9, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p2, :cond_18

    return v12

    :cond_18
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 1859
    sget v2, Lorg/telegram/messenger/R$string;->ChannelEditPermissions:I

    const-string v3, "ChannelEditPermissions"

    .line 1860
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->ChannelDeleteFromList:I

    .line 1861
    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    new-array v4, v0, [I

    .line 1862
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    aput v0, v4, v3

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v0, v4, v12

    move-object v14, v1

    :goto_d
    move-object v15, v4

    const/4 v2, 0x0

    goto/16 :goto_12

    .line 1865
    :cond_19
    iget v0, v9, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v0, :cond_1d

    iget-object v0, v9, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_1a

    return v12

    :cond_1a
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 1870
    iget-object v0, v9, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-lez v1, :cond_1c

    iget-boolean v0, v9, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v0, :cond_1b

    sget v0, Lorg/telegram/messenger/R$string;->ChannelAddToChannel:I

    const-string v1, "ChannelAddToChannel"

    goto :goto_e

    :cond_1b
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAddToGroup:I

    const-string v1, "ChannelAddToGroup"

    :goto_e
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1c
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    aput-object v0, v2, v1

    sget v0, Lorg/telegram/messenger/R$string;->ChannelDeleteFromList:I

    .line 1871
    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v12

    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 1872
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    aput v0, v4, v1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v0, v4, v12

    move-object v14, v2

    goto :goto_d

    .line 1875
    :cond_1d
    iget v0, v9, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v0, v12, :cond_21

    iget-object v0, v9, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v8, :cond_21

    if-eqz p2, :cond_1e

    return v12

    .line 1879
    :cond_1e
    iget-object v0, v9, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const-string v1, "ChannelRemoveUserAdmin"

    if-nez v0, :cond_20

    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_1f

    if-eqz v8, :cond_1f

    const/4 v0, 0x2

    const/4 v2, 0x0

    goto :goto_10

    :cond_1f
    new-array v4, v12, [Ljava/lang/CharSequence;

    .line 1887
    sget v0, Lorg/telegram/messenger/R$string;->ChannelRemoveUserAdmin:I

    .line 1888
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v4, v2

    new-array v0, v12, [I

    .line 1889
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    aput v1, v0, v2

    goto :goto_11

    :cond_20
    const/4 v2, 0x0

    const/4 v0, 0x2

    :goto_10
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 1880
    sget v8, Lorg/telegram/messenger/R$string;->EditAdminRights:I

    .line 1881
    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    sget v3, Lorg/telegram/messenger/R$string;->ChannelRemoveUserAdmin:I

    .line 1882
    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v12

    new-array v0, v0, [I

    .line 1883
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    aput v1, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    aput v1, v0, v12

    :goto_11
    move-object v15, v0

    move-object v14, v4

    goto :goto_12

    :cond_21
    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_12
    if-nez v14, :cond_22

    return v2

    .line 1899
    :cond_22
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1900
    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v12, v3

    move-wide v3, v5

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v7, p1

    move-object v10, v8

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatUsersActivity;[Ljava/lang/CharSequence;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V

    invoke-virtual {v10, v14, v15, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1990
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1991
    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1992
    iget v1, v9, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 1993
    array-length v1, v14

    sub-int/2addr v1, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    :cond_23
    :goto_13
    return v2

    :cond_24
    :goto_14
    move-object v9, v12

    const/4 v0, 0x0

    return v0

    :cond_25
    :goto_15
    move-object v9, v12

    const/4 v0, 0x0

    return v0
.end method

.method private formatSeconds(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Seconds"

    .line 2062
    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0xe10

    if-ge p1, v2, :cond_1

    .line 2064
    div-int/2addr p1, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Minutes"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2066
    :cond_1
    div-int/2addr p1, v1

    div-int/2addr p1, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Hours"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatUserPermissions(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 2096
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2097
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eq v2, v1, :cond_1

    .line 2098
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoRead:I

    const-string v2, "UserRestrictionsNoRead"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    :cond_1
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    const-string v2, ", "

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eq v1, v3, :cond_3

    .line 2101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendText:I

    const-string v3, "UserRestrictionsNoSendText"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    :cond_3
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eq v3, v1, :cond_5

    .line 2107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendMedia:I

    const-string v3, "UserRestrictionsNoSendMedia"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2112
    :cond_5
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eq v3, v1, :cond_7

    .line 2113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendPhotos:I

    const-string v3, "UserRestrictionsNoSendPhotos"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    :cond_7
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eq v3, v1, :cond_9

    .line 2119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    :cond_8
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendVideos:I

    const-string v3, "UserRestrictionsNoSendVideos"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    :cond_9
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eq v3, v1, :cond_b

    .line 2125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 2126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    :cond_a
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendMusic:I

    const-string v3, "UserRestrictionsNoSendMusic"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    :cond_b
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eq v3, v1, :cond_d

    .line 2131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendDocs:I

    const-string v3, "UserRestrictionsNoSendDocs"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    :cond_d
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eq v3, v1, :cond_f

    .line 2137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    :cond_e
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendVoice:I

    const-string v3, "UserRestrictionsNoSendVoice"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    :cond_f
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eq v3, v1, :cond_11

    .line 2143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 2144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    :cond_10
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendRound:I

    const-string v3, "UserRestrictionsNoSendRound"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    :cond_11
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eq v3, v1, :cond_13

    .line 2150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_12

    .line 2151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    :cond_12
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendStickers:I

    const-string v3, "UserRestrictionsNoSendStickers"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    :cond_13
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v1, :cond_15

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eq v3, v1, :cond_15

    .line 2156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_14

    .line 2157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    :cond_14
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendPolls:I

    const-string v3, "UserRestrictionsNoSendPolls"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    :cond_15
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_17

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eq v3, v1, :cond_17

    .line 2162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 2163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoEmbedLinks:I

    const-string v3, "UserRestrictionsNoEmbedLinks"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    :cond_17
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v1, :cond_19

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eq v3, v1, :cond_19

    .line 2168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 2169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    :cond_18
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoInviteUsers:I

    const-string v3, "UserRestrictionsNoInviteUsers"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    :cond_19
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_1b

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eq v3, v1, :cond_1b

    .line 2174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 2175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    :cond_1a
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoPinMessages:I

    const-string v3, "UserRestrictionsNoPinMessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    :cond_1b
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz p1, :cond_1d

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eq v1, p1, :cond_1d

    .line 2180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 2181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    :cond_1c
    sget p1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoChangeInfo:I

    const-string v1, "UserRestrictionsNoChangeInfo"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2185
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 2186
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    .line 2187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2189
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAnyParticipant(J)Lorg/telegram/tgnet/TLObject;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_0

    .line 1650
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1652
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    .line 1654
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1656
    :goto_1
    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I
    .locals 1

    .line 2235
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2237
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v0, :cond_2

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private getCurrentSlowmode()I
    .locals 2

    .line 2025
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_5

    .line 2026
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/16 v1, 0x12c

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/16 v1, 0x384

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/16 v1, 0xe10

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private getSecondsForIndex(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p1, 0x1e

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/16 p1, 0x3c

    return p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/16 p1, 0x12c

    return p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const/16 p1, 0x384

    return p1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    const/16 p1, 0xe10

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private getSendMediaSelectedCount()I
    .locals 1

    .line 3790
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I

    move-result v0

    return v0
.end method

.method public static getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I
    .locals 2

    .line 3795
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3798
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3801
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3805
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 3808
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 3811
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 3815
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 3818
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 3821
    :cond_6
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 3824
    :cond_7
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3827
    :cond_8
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 3830
    :cond_9
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez p0, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    return v0
.end method

.method private isExpandableSendMediaRow(I)Z
    .locals 1

    .line 3641
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$checkDiscard$15(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2080
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$16(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2081
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$10(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;JZLorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move-object/from16 v5, p6

    move/from16 v11, p12

    .line 1828
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v12, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    move-wide/from16 v2, p3

    .line 1830
    invoke-direct {v12, v2, v3}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    .line 1831
    iget-object v1, v12, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1832
    iget-object v1, v12, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v12, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v2, p3

    .line 1835
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    if-eqz p5, :cond_2

    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v1, :cond_1

    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v1, :cond_2

    .line 1836
    :cond_1
    new-instance v13, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v13, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1837
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v6, "AppName"

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1838
    sget v1, Lorg/telegram/messenger/R$string;->AdminWillBeRemoved:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v0, "AdminWillBeRemoved"

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1839
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move/from16 v4, p7

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p5

    move-object/from16 v10, p1

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1840
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1841
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1843
    :cond_2
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p7

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$11(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 4

    .line 1965
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1966
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1961
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1962
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1963
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1964
    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$Updates;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$13([Ljava/lang/CharSequence;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Landroid/content/DialogInterface;I)V
    .locals 27

    move-object/from16 v12, p0

    move-wide/from16 v14, p2

    move-object/from16 v8, p6

    move/from16 v9, p9

    .line 1901
    iget v0, v12, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1

    if-nez v9, :cond_0

    move-object/from16 v0, p1

    .line 1902
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1903
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v1, v12, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v13, v0

    move-wide/from16 v14, p2

    move-wide/from16 v16, v1

    move-object/from16 v18, p4

    move-object/from16 v21, p5

    invoke-direct/range {v13 .. v25}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1904
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$17;

    invoke-direct {v1, v12, v8}, Lorg/telegram/ui/ChatUsersActivity$17;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1921
    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 1923
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v12, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iget-boolean v5, v12, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    xor-int/lit8 v6, v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, ""

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 1924
    invoke-direct {v12, v14, v15}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    goto/16 :goto_3

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v9, :cond_a

    const/4 v0, 0x0

    cmp-long v3, v14, v1

    if-lez v3, :cond_3

    .line 1980
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    move-object/from16 v26, v1

    move-object v1, v0

    move-object/from16 v0, v26

    goto :goto_0

    .line 1984
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1986
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v12, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p1, v2

    move-wide/from16 p2, v3

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move/from16 p6, v5

    move/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    goto/16 :goto_3

    :cond_4
    :goto_1
    if-nez v9, :cond_6

    if-ne v0, v3, :cond_5

    .line 1929
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v1, v12, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/16 v18, 0x0

    iget-object v3, v12, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v13, v0

    move-wide/from16 v14, p2

    move-wide/from16 v16, v1

    move-object/from16 v19, v3

    move-object/from16 v20, p7

    move-object/from16 v21, p5

    invoke-direct/range {v13 .. v25}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1930
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$18;

    invoke-direct {v1, v12, v8}, Lorg/telegram/ui/ChatUsersActivity$18;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1947
    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    :cond_5
    if-nez v0, :cond_7

    cmp-long v0, v14, v1

    if-lez v0, :cond_7

    .line 1950
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1951
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v12, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    if-ne v9, v10, :cond_7

    .line 1955
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;-><init>()V

    .line 1956
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v12, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1958
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, v12}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_7
    :goto_2
    if-nez v9, :cond_8

    .line 1972
    iget v0, v12, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eqz v0, :cond_9

    :cond_8
    if-ne v9, v10, :cond_a

    .line 1973
    :cond_9
    invoke-direct {v12, v8}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(Lorg/telegram/tgnet/TLObject;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$9(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/DialogInterface;I)V
    .locals 12

    .line 1839
    invoke-virtual/range {p9 .. p10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 2

    .line 1009
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1013
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v0, 0xd

    invoke-static {p2, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz v0, :cond_1

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-lt p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1014
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string v1, "UnknownError"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1004
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1005
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1007
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "CHAT_NOT_MODIFIED"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1008
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1017
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 2

    .line 1039
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1042
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1043
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-eqz v0, :cond_1

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-lt p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1044
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string v1, "UnknownError"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1034
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1035
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1037
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "CHAT_NOT_MODIFIED"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1038
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1047
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 11

    move-object v0, p1

    .line 1233
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object v10, p0

    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 29

    move-object/from16 v10, p0

    move/from16 v0, p3

    .line 734
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "chat_id"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v1, :cond_35

    .line 736
    invoke-direct {v10, v0}, Lorg/telegram/ui/ChatUsersActivity;->isExpandableSendMediaRow(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 737
    move-object/from16 v7, p2

    check-cast v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 739
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    if-ne v0, v8, :cond_1

    .line 740
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v9, :cond_d

    .line 742
    iput-boolean v3, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 743
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_1

    .line 745
    :cond_1
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    if-ne v0, v9, :cond_2

    .line 746
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v9, :cond_d

    .line 748
    iput-boolean v3, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 749
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_1

    .line 751
    :cond_2
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    if-ne v0, v9, :cond_3

    .line 752
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v9, :cond_d

    .line 754
    iput-boolean v3, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 755
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_1

    .line 758
    :cond_3
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    if-ne v0, v9, :cond_4

    .line 759
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    goto/16 :goto_1

    .line 760
    :cond_4
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    if-ne v0, v9, :cond_5

    .line 761
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    goto/16 :goto_1

    .line 762
    :cond_5
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    if-ne v0, v9, :cond_6

    .line 763
    iget-object v9, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v11, v4

    iput-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v11, :cond_d

    .line 766
    iput-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 767
    iget-object v9, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 768
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-boolean v4, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 769
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 770
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-boolean v4, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 771
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 774
    :cond_6
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    if-ne v0, v8, :cond_7

    .line 775
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    goto :goto_1

    .line 776
    :cond_7
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    if-ne v0, v8, :cond_8

    .line 777
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    goto :goto_1

    .line 778
    :cond_8
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    if-ne v0, v8, :cond_9

    .line 779
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    goto :goto_1

    .line 780
    :cond_9
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    if-ne v0, v8, :cond_a

    .line 781
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    goto :goto_1

    .line 782
    :cond_a
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-ne v0, v8, :cond_c

    .line 783
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v8, :cond_b

    .line 784
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 786
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    .line 787
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 791
    :cond_b
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_1

    .line 792
    :cond_c
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-ne v0, v8, :cond_d

    .line 793
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 796
    :cond_d
    :goto_1
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v8

    xor-int/2addr v8, v4

    invoke-virtual {v7, v8, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 797
    iget-object v7, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto/16 :goto_c

    .line 798
    :cond_e
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    const-string v8, "type"

    if-ne v0, v7, :cond_16

    .line 799
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const-string v1, "selectType"

    if-eqz v0, :cond_13

    if-ne v0, v5, :cond_f

    goto :goto_4

    :cond_f
    if-ne v0, v4, :cond_10

    .line 844
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 845
    iget-wide v11, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v2, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 846
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 847
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 848
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 849
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$8;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ChatUsersActivity$8;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V

    .line 893
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 894
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    :cond_10
    if-ne v0, v6, :cond_15

    .line 896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "addToGroup"

    .line 897
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 898
    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v1, :cond_11

    const-string v1, "channelId"

    goto :goto_2

    :cond_11
    const-string v1, "chatId"

    :goto_2
    iget-object v2, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 899
    new-instance v1, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 900
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 901
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    :cond_12
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    :goto_3
    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;->setIgnoreUsers(Landroidx/collection/LongSparseArray;)V

    .line 902
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$9;

    move-object/from16 v2, p1

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/ChatUsersActivity$9;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;)V

    .line 985
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_5

    .line 800
    :cond_13
    :goto_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 801
    iget-wide v3, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 802
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    iget v2, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v2, :cond_14

    const/4 v5, 0x2

    :cond_14
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 805
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 806
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setBannedRights(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V

    .line 807
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$7;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ChatUsersActivity$7;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V

    .line 842
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_15
    :goto_5
    return-void

    .line 988
    :cond_16
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    if-ne v0, v7, :cond_17

    .line 989
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 991
    :cond_17
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    if-ne v0, v7, :cond_1c

    .line 992
    move-object/from16 v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 993
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_18

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v2, :cond_18

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-ge v1, v2, :cond_18

    .line 994
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ChannelAntiSpamForbidden"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_7

    .line 995
    :cond_18
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1b

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    if-nez v1, :cond_1b

    .line 996
    iput-boolean v4, v10, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    .line 997
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    .line 998
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;-><init>()V

    .line 999
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1000
    iget-object v6, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    xor-int/2addr v4, v7

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;->enabled:Z

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1001
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v4

    iget-object v6, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_1a

    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v6, :cond_1a

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-lt v2, v6, :cond_19

    goto :goto_6

    :cond_19
    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_1a
    :goto_6
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, v10, v0, v1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-virtual {v2, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1b
    :goto_7
    return-void

    .line 1021
    :cond_1c
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    if-ne v0, v7, :cond_21

    .line 1022
    move-object/from16 v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 1023
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1d

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-nez v2, :cond_1d

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-ge v1, v2, :cond_1d

    .line 1024
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contacts_sync_off:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ChannelHiddenMembersForbidden"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_9

    .line 1025
    :cond_1d
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_20

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    if-nez v1, :cond_20

    .line 1026
    iput-boolean v4, v10, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    .line 1027
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    .line 1028
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;-><init>()V

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v7, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v5, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1030
    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    xor-int/2addr v4, v7

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;->enabled:Z

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1031
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v4

    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v5, :cond_1f

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-nez v6, :cond_1f

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-lt v5, v6, :cond_1e

    goto :goto_8

    :cond_1e
    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_1f
    :goto_8
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, v10, v0, v1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_20
    :goto_9
    return-void

    .line 1051
    :cond_21
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    if-ne v0, v7, :cond_22

    .line 1052
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1053
    iget-wide v4, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1054
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1056
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1057
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1059
    :cond_22
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    if-ne v0, v7, :cond_23

    .line 1060
    new-instance v7, Lorg/telegram/ui/ChatUsersActivity$10;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v10, v8, v10}, Lorg/telegram/ui/ChatUsersActivity$10;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v10, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 1088
    :cond_23
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    if-ne v0, v7, :cond_25

    .line 1089
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_24

    .line 1090
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v2, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 1091
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 1092
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_24
    return-void

    .line 1095
    :cond_25
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    if-le v0, v7, :cond_35

    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gt v0, v7, :cond_35

    .line 1096
    move-object/from16 v1, p2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 1097
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    .line 1100
    :cond_26
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1101
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    if-eq v0, v1, :cond_27

    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    if-ne v0, v1, :cond_28

    .line 1102
    :cond_27
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->EditCantEditPermissionsPublic:I

    const-string v2, "EditCantEditPermissionsPublic"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_a

    .line 1104
    :cond_28
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->EditCantEditPermissions:I

    const-string v2, "EditCantEditPermissions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_a
    return-void

    .line 1108
    :cond_29
    iget v2, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ne v0, v2, :cond_2a

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 1111
    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    .line 1112
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1113
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void

    .line 1116
    :cond_2a
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 1117
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    if-ne v0, v1, :cond_2b

    .line 1118
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    goto/16 :goto_b

    .line 1119
    :cond_2b
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    if-ne v0, v1, :cond_2c

    .line 1120
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    goto/16 :goto_b

    .line 1121
    :cond_2c
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    if-ne v0, v1, :cond_2d

    .line 1122
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    goto :goto_b

    .line 1123
    :cond_2d
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    if-ne v0, v1, :cond_2e

    .line 1124
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    goto :goto_b

    .line 1126
    :cond_2e
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    if-ne v0, v1, :cond_30

    .line 1127
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 1128
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-ltz v0, :cond_2f

    .line 1129
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1131
    :cond_2f
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ltz v0, :cond_34

    .line 1132
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b

    .line 1134
    :cond_30
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ne v0, v1, :cond_31

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 1136
    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    .line 1137
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1138
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    goto :goto_b

    .line 1139
    :cond_31
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    if-ne v0, v1, :cond_32

    .line 1140
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    goto :goto_b

    .line 1141
    :cond_32
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    if-ne v0, v1, :cond_33

    .line 1142
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_b

    .line 1143
    :cond_33
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-ne v0, v1, :cond_34

    .line 1144
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    :cond_34
    :goto_b
    return-void

    :cond_35
    :goto_c
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-string v11, ""

    if-eqz v1, :cond_3f

    .line 1159
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1160
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_3a

    .line 1161
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1162
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    .line 1163
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1164
    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1165
    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    .line 1166
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v6, :cond_36

    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v6, :cond_37

    :cond_36
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v1, :cond_38

    :cond_37
    const/4 v1, 0x1

    goto :goto_d

    :cond_38
    const/4 v1, 0x0

    .line 1167
    :goto_d
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v6, :cond_39

    .line 1168
    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    iget-object v14, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-nez v14, :cond_39

    .line 1170
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 1171
    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1174
    iget-boolean v6, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v6, :cond_39

    .line 1175
    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    :cond_39
    move-object v6, v0

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    move v14, v1

    :goto_e
    move-wide/from16 v27, v11

    move-object v11, v13

    move-wide/from16 v12, v27

    goto/16 :goto_14

    .line 1179
    :cond_3a
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_3d

    .line 1180
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1181
    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1182
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    .line 1183
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v6, :cond_3b

    .line 1184
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 1185
    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1188
    iget-boolean v14, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v14, :cond_3c

    .line 1189
    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto :goto_f

    :cond_3b
    move-object v6, v9

    :cond_3c
    :goto_f
    move v14, v1

    move-object/from16 v19, v6

    move-object/from16 v22, v11

    move-object v6, v0

    move-object v11, v9

    goto/16 :goto_14

    :cond_3d
    move-object v6, v0

    move-wide v12, v7

    move-object/from16 v19, v9

    move-object/from16 v22, v11

    :cond_3e
    const/4 v14, 0x0

    :goto_10
    move-object/from16 v11, v19

    goto/16 :goto_14

    .line 1194
    :cond_3f
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1195
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_40

    .line 1196
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1198
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->getAnyParticipant(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    move-wide v12, v0

    move-object v0, v6

    goto :goto_12

    .line 1199
    :cond_40
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v1, :cond_42

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_41

    goto :goto_11

    :cond_41
    move-wide v12, v7

    move-object v0, v9

    goto :goto_12

    :cond_42
    :goto_11
    move-wide v12, v7

    .line 1204
    :goto_12
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_46

    .line 1205
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1206
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    .line 1207
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v6, :cond_43

    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v6, :cond_44

    :cond_43
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v6, :cond_45

    :cond_44
    const/4 v6, 0x1

    goto :goto_13

    :cond_45
    const/4 v6, 0x0

    .line 1208
    :goto_13
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1209
    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1210
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v19, v14

    move v14, v6

    move-object v6, v0

    goto/16 :goto_e

    .line 1211
    :cond_46
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_47

    .line 1212
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1213
    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1214
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move-object v6, v0

    move v14, v1

    move-object/from16 v19, v9

    move-object/from16 v22, v11

    goto :goto_10

    :cond_47
    move-object v6, v0

    move-object/from16 v19, v9

    move-object/from16 v22, v11

    if-nez v0, :cond_3e

    const/4 v14, 0x1

    goto :goto_10

    :goto_14
    cmp-long v0, v12, v7

    if-eqz v0, :cond_5d

    .line 1222
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v1, :cond_4f

    if-eq v1, v5, :cond_49

    if-ne v1, v4, :cond_48

    goto :goto_15

    .line 1240
    :cond_48
    invoke-direct {v10, v12, v13}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipant(J)V

    goto/16 :goto_21

    :cond_49
    :goto_15
    if-eq v1, v4, :cond_4b

    if-eqz v14, :cond_4b

    .line 1224
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v0, :cond_4a

    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_4b

    .line 1225
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1230
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1231
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v1, "AppName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1232
    sget v0, Lorg/telegram/messenger/R$string;->AdminWillBeRemoved:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "AdminWillBeRemoved"

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1233
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v6

    move-object/from16 v4, v19

    move-object v5, v11

    move-object/from16 v6, v22

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Z)V

    invoke-virtual {v8, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1234
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1235
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_21

    :cond_4b
    if-ne v1, v4, :cond_4c

    const/4 v8, 0x0

    goto :goto_16

    :cond_4c
    const/4 v8, 0x1

    :goto_16
    if-eq v1, v4, :cond_4e

    if-ne v1, v5, :cond_4d

    goto :goto_17

    :cond_4d
    const/4 v9, 0x0

    goto :goto_18

    :cond_4e
    :goto_17
    const/4 v9, 0x1

    :goto_18
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v6

    move-object/from16 v4, v19

    move-object v5, v11

    move-object/from16 v6, v22

    move v7, v14

    .line 1237
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    goto/16 :goto_21

    .line 1244
    :cond_4f
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v1, v4, :cond_52

    .line 1245
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v1, v12, v7

    if-eqz v1, :cond_51

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_50

    if-eqz v14, :cond_51

    :cond_50
    const/4 v1, 0x1

    goto :goto_1a

    :cond_51
    const/4 v1, 0x0

    goto :goto_1a

    :cond_52
    if-eqz v1, :cond_54

    if-ne v1, v5, :cond_53

    goto :goto_19

    :cond_53
    const/16 v24, 0x0

    goto :goto_1b

    .line 1247
    :cond_54
    :goto_19
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    :goto_1a
    move/from16 v24, v1

    .line 1249
    :goto_1b
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eqz v1, :cond_5a

    if-eq v1, v4, :cond_55

    iget-boolean v5, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v5, :cond_5a

    :cond_55
    const/4 v5, 0x2

    if-ne v1, v5, :cond_56

    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v1, :cond_56

    goto :goto_1f

    :cond_56
    if-nez v11, :cond_57

    .line 1262
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 1263
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 1264
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 1265
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 1266
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 1267
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 1268
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 1269
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 1270
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 1271
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 1272
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 1273
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 1274
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 1275
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 1276
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 1277
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 1278
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 1279
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 1280
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 1281
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 1282
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    move-object/from16 v21, v0

    goto :goto_1c

    :cond_57
    move-object/from16 v21, v11

    .line 1284
    :goto_1c
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v1, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v7, v4, :cond_58

    const/16 v23, 0x0

    goto :goto_1d

    :cond_58
    const/16 v23, 0x1

    :goto_1d
    if-nez v6, :cond_59

    const/16 v25, 0x1

    goto :goto_1e

    :cond_59
    const/16 v25, 0x0

    :goto_1e
    const/16 v26, 0x0

    move-object v14, v0

    move-wide v15, v12

    move-wide/from16 v17, v1

    move-object/from16 v20, v5

    invoke-direct/range {v14 .. v26}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1285
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$11;

    invoke-direct {v1, v10, v6}, Lorg/telegram/ui/ChatUsersActivity$11;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1302
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_21

    .line 1250
    :cond_5a
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v1, v12, v3

    if-nez v1, :cond_5b

    return-void

    .line 1253
    :cond_5b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-lez v0, :cond_5c

    const-string v0, "user_id"

    .line 1255
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_20

    :cond_5c
    neg-long v3, v12

    .line 1257
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1259
    :goto_20
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_5d
    :goto_21
    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;I)Z
    .locals 2

    .line 1308
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-ne p1, v1, :cond_0

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ChatUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLObject;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic lambda$didReceivedNotification$14()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 2010
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$22()V
    .locals 5

    .line 3841
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 3842
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3844
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3845
    instance-of v4, v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_0

    .line 3846
    check-cast v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadChatParticipants$18(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2374
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_14

    move-object/from16 v4, p1

    .line 2375
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    move-object/from16 v8, p2

    .line 2376
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    if-eqz v7, :cond_13

    if-nez v9, :cond_0

    goto/16 :goto_c

    .line 2379
    :cond_0
    iget v10, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v10, v6, :cond_1

    .line 2380
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v1, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v10, v11, v12, v9}, Lorg/telegram/messenger/MessagesController;->processLoadedAdminsResponse(JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V

    .line 2382
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    .line 2385
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    .line 2386
    :goto_1
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 2387
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    cmp-long v15, v13, v10

    if-nez v15, :cond_2

    .line 2388
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2395
    :cond_3
    :goto_2
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v12, v5, :cond_6

    .line 2396
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    sub-int/2addr v12, v6

    iput v12, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2397
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    instance-of v12, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    if-eqz v12, :cond_4

    .line 2398
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    .line 2399
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2400
    :cond_4
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    if-eqz v7, :cond_5

    .line 2401
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    .line 2402
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2404
    :cond_5
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 2405
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2408
    :cond_6
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 2409
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 2410
    invoke-virtual {v12}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2412
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2413
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2414
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_8

    .line 2415
    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move/from16 v16, v3

    .line 2416
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    cmp-long v17, v2, v10

    if-nez v17, :cond_7

    .line 2417
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2419
    :cond_7
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    move/from16 v16, v3

    .line 2422
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 2423
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v0, v5, :cond_f

    .line 2424
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_f

    .line 2425
    iget-object v9, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    .line 2426
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v10, :cond_9

    .line 2427
    iget-object v9, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2432
    :cond_9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2433
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    .line 2435
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_d

    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    goto :goto_8

    .line 2437
    :cond_a
    iget v11, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-ne v11, v6, :cond_b

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_8

    .line 2439
    :cond_b
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->ignoredUsers:Landroidx/collection/LongSparseArray;

    if-eqz v11, :cond_c

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v11

    if-ltz v11, :cond_c

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v11, 0x1

    :goto_9
    if-eqz v11, :cond_e

    .line 2443
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2444
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_7

    :cond_e
    :goto_a
    add-int/2addr v3, v6

    goto :goto_6

    .line 2451
    :cond_f
    :try_start_0
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eqz v0, :cond_10

    const/4 v3, 0x3

    if-eq v0, v3, :cond_10

    if-ne v0, v5, :cond_11

    :cond_10
    iget-object v3, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_11

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_11

    iget-object v3, v1, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_11

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v5, 0xc8

    if-gt v3, v5, :cond_11

    .line 2452
    invoke-direct {v1, v7}, Lorg/telegram/ui/ChatUsersActivity;->sortUsers(Ljava/util/ArrayList;)V

    goto :goto_b

    :cond_11
    if-ne v0, v6, :cond_12

    .line 2454
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 2457
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_12
    :goto_b
    move v0, v2

    goto :goto_d

    :cond_13
    :goto_c
    move/from16 v16, v3

    :goto_d
    add-int/lit8 v3, v16, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2460
    :cond_14
    iget v2, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v2, v5, :cond_15

    iget v2, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    if-gtz v2, :cond_19

    .line 2461
    :cond_15
    iget-object v2, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItemCount()I

    move-result v2

    goto :goto_e

    :cond_16
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v1, v2}, Lorg/telegram/ui/ChatUsersActivity;->showItemsAnimated(I)V

    const/4 v2, 0x0

    .line 2462
    iput-boolean v2, v1, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2463
    iput-boolean v6, v1, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    .line 2464
    iget-object v2, v1, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_19

    .line 2465
    iget v3, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v3, :cond_18

    const/4 v3, 0x5

    if-le v0, v3, :cond_17

    goto :goto_f

    :cond_17
    const/16 v0, 0x8

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2468
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 2469
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_1a

    .line 2470
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 2471
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2473
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, v1, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_1a

    .line 2474
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v3, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2477
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    return-void
.end method

.method private static synthetic lambda$loadChatParticipants$19(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    if-nez p0, :cond_0

    .line 2484
    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    if-eqz p0, :cond_0

    .line 2485
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2486
    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2487
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 2488
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$loadChatParticipants$20(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 2483
    new-instance v8, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda6;

    move-object v0, v8

    move-object v1, p6

    move-object v2, p5

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onOwnerChaged$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 1486
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result p1

    .line 1487
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$processDone$17(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2199
    iput-wide p1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    .line 2200
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2201
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sortAdmins$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 2

    .line 1348
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result v0

    .line 1349
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1355
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_2

    .line 1356
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$sortUsers$21(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 11

    .line 2500
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2504
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2505
    check-cast p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2506
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 2507
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    const v0, 0xc350

    const/16 v6, -0x64

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_3

    .line 2510
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2511
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_2

    .line 2512
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_1

    add-int p2, p1, v0

    goto :goto_0

    .line 2515
    :cond_1
    iget p2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const/16 p2, -0x64

    :goto_0
    cmp-long v2, v4, v7

    if-lez v2, :cond_6

    .line 2523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2524
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_5

    .line 2525
    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p3, :cond_4

    add-int/2addr p1, v0

    goto :goto_1

    .line 2528
    :cond_4
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :goto_1
    move v6, p1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_2
    const/4 p1, -0x1

    const/4 p3, 0x1

    if-lez p2, :cond_9

    if-lez v6, :cond_9

    if-le p2, v6, :cond_7

    return p3

    :cond_7
    if-ge p2, v6, :cond_8

    return p1

    :cond_8
    return v1

    :cond_9
    if-gez p2, :cond_c

    if-gez v6, :cond_c

    if-le p2, v6, :cond_a

    return p3

    :cond_a
    if-ge p2, v6, :cond_b

    return p1

    :cond_b
    return v1

    :cond_c
    if-gez p2, :cond_d

    if-gtz v6, :cond_e

    :cond_d
    if-nez p2, :cond_f

    if-eqz v6, :cond_f

    :cond_e
    return p1

    :cond_f
    if-gez v6, :cond_10

    if-gtz p2, :cond_11

    :cond_10
    if-nez v6, :cond_12

    if-eqz p2, :cond_12

    :cond_11
    return p3

    :cond_12
    :goto_3
    return v1
.end method

.method private loadChatParticipants(II)V
    .locals 1

    .line 2245
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2248
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2249
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    const/4 v0, 0x1

    .line 2250
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(IIZ)V

    return-void
.end method

.method private loadChatParticipants(IIZ)V
    .locals 11

    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 2301
    iput-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2302
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2303
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2304
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2305
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2306
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2307
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2308
    iget p1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne p1, v2, :cond_2

    .line 2309
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_a

    .line 2310
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_a

    .line 2311
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2312
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez p3, :cond_0

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz p3, :cond_1

    .line 2313
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {p3, v2, v3, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 2319
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_a

    .line 2320
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 2321
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_1
    if-ge v1, p3, :cond_a

    .line 2322
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2323
    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_3

    goto/16 :goto_2

    .line 2326
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->ignoredUsers:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_4

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_4

    goto/16 :goto_2

    .line 2329
    :cond_4
    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-ne v3, v2, :cond_6

    .line 2330
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2331
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2333
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2334
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2335
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2338
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2339
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2340
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2342
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2343
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_8

    .line 2344
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2345
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2347
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2348
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2355
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz p1, :cond_b

    .line 2356
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2358
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 2359
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz p1, :cond_f

    .line 2360
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 2363
    :cond_c
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2364
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_d

    .line 2365
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2367
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_e

    .line 2368
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2370
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 2371
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2372
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2479
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2480
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    const/4 v2, 0x0

    .line 2481
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2483
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    new-instance v10, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda16;

    move-object v2, v10

    move-object v3, p2

    move v4, v1

    move-object v5, v0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda16;-><init>(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 2491
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    :goto_4
    return-void
.end method

.method private loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;",
            ">;"
        }
    .end annotation

    .line 2254
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2256
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2258
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v1, :cond_0

    .line 2259
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2261
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 2263
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/16 v5, 0xc8

    if-eqz v1, :cond_2

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gt v1, v5, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_2

    .line 2264
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    .line 2266
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/4 v6, 0x0

    if-ne v1, v2, :cond_4

    .line 2267
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    if-nez v1, :cond_3

    .line 2268
    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2269
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2270
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2271
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2273
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    .line 2276
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    if-nez v1, :cond_5

    .line 2277
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2278
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2279
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2280
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2281
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    if-nez v1, :cond_6

    .line 2282
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2283
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    .line 2284
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2286
    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    :cond_7
    if-ne v1, v3, :cond_8

    .line 2291
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2293
    :cond_8
    :goto_0
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const-string v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 2294
    iput p1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 2295
    iput p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    return-object v0
.end method

.method private onOwnerChaged(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 14

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    neg-long v1, v1

    iget-boolean v3, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_9

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1437
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 1438
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1440
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 1441
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    goto :goto_2

    .line 1443
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1444
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 1446
    :goto_2
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    .line 1447
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v7, :cond_4

    .line 1448
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .line 1449
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1450
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1451
    invoke-virtual {v4, v8, v9, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1452
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 1454
    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 1459
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    .line 1460
    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    .line 1461
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v10, :cond_6

    .line 1462
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    .line 1463
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1464
    iput-wide v7, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1465
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->self:Z

    .line 1466
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    .line 1467
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    .line 1468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v11, v10

    iput v11, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 1469
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1470
    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1473
    iget-boolean v11, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v11, :cond_5

    .line 1474
    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 1476
    :cond_5
    invoke-virtual {v4, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1478
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_7

    .line 1480
    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move v3, v6

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 1485
    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez v2, :cond_a

    .line 1498
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .line 1499
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1500
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1501
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1502
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V

    .line 1504
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 1506
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v0, :cond_b

    .line 1508
    invoke-interface {v0, p1}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_b
    return-void
.end method

.method private openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 20

    move-object/from16 v6, p0

    .line 1606
    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v10, v6, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v13, v6, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_0
    const/16 v19, 0x0

    move-object v7, v5

    move-wide/from16 v8, p1

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p8

    move/from16 v17, p7

    invoke-direct/range {v7 .. v19}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1607
    new-instance v7, Lorg/telegram/ui/ChatUsersActivity$16;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p1

    move-object v8, v5

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatUsersActivity$16;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;JZ)V

    invoke-virtual {v8, v7}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    move/from16 v0, p9

    .line 1631
    invoke-virtual {v6, v8, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p4

    const/4 v1, 0x1

    new-array v14, v1, [Z

    .line 1514
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v2, :cond_1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v17, 0x1

    .line 1515
    :goto_1
    new-instance v10, Lorg/telegram/ui/ChatUsersActivity$14;

    move-object v0, v10

    iget-wide v4, v15, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v7, v15, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v18, v10

    move/from16 v10, p9

    move-object/from16 v19, v14

    move-wide/from16 v15, p1

    invoke-direct/range {v0 .. v16}, Lorg/telegram/ui/ChatUsersActivity$14;-><init>(Lorg/telegram/ui/ChatUsersActivity;JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;[ZJ)V

    .line 1533
    new-instance v8, Lorg/telegram/ui/ChatUsersActivity$15;

    move-object v0, v8

    move/from16 v2, p9

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, v17

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$15;-><init>(Lorg/telegram/ui/ChatUsersActivity;IJIZ[Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1597
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private processDone()V
    .locals 7

    .line 2193
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 2197
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    new-instance v6, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 2206
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 2207
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->setDefaultBannedRole(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2209
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2211
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 2214
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_3

    .line 2215
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->getSecondsForIndex(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    .line 2216
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 2217
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->setChannelSlowMode(JI)V

    .line 2219
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private removeParticipant(J)V
    .locals 4

    .line 1635
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1638
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1639
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v0, :cond_1

    .line 1641
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didKickParticipant(J)V

    .line 1643
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private removeParticipants(J)V
    .locals 7

    .line 1676
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1681
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 1682
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 1684
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 1685
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    goto :goto_1

    .line 1687
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1688
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 1690
    :goto_1
    invoke-virtual {v4, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    if-eqz v6, :cond_3

    .line 1692
    invoke-virtual {v4, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1693
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1695
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_2

    .line 1696
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    sub-int/2addr v4, v3

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    :cond_2
    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 1701
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    .line 1703
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    if-ne v0, v1, :cond_6

    .line 1704
    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->removeUserId(J)V

    :cond_6
    return-void
.end method

.method private removeParticipants(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 1665
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v0, :cond_0

    .line 1666
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1667
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    goto :goto_0

    .line 1668
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_1

    .line 1669
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1670
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBannedRights(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1342
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    :cond_0
    return-void
.end method

.method private setSendMediaEnabled(Z)V
    .locals 2

    .line 3627
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3628
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3629
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3630
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3631
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3632
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3633
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3634
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3635
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/lit8 p1, p1, 0x1

    .line 3636
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 3637
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private showItemsAnimated(I)V
    .locals 4

    .line 1363
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1367
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1368
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1369
    instance-of v3, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1375
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    .line 1380
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$13;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$13;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private sortAdmins(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .line 1347
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortUsers(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .line 2497
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 2498
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatUsersActivity;I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateParticipantWithRights(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1713
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1715
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    .line 1717
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1719
    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    .line 1720
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v4, :cond_2

    .line 1721
    move-object p1, v3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1722
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1723
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p6, :cond_2

    .line 1725
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    :cond_2
    if-eqz p6, :cond_3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 1728
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v4, :cond_3

    .line 1730
    invoke-interface {v4, p4, p5, v3}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didAddParticipantToList(JLorg/telegram/tgnet/TLObject;)V

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateRows()V
    .locals 5

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 286
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    .line 287
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    .line 288
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    .line 289
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    .line 290
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 291
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    .line 292
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    .line 293
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    .line 294
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    .line 295
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    .line 296
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 297
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    .line 298
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 299
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    .line 300
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    .line 301
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    .line 302
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 303
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    .line 304
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    .line 305
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    .line 306
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    .line 307
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    .line 308
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    .line 309
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    .line 310
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    .line 311
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    .line 312
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    .line 313
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    .line 314
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    .line 315
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    .line 316
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    .line 317
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    .line 318
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    .line 319
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    .line 320
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    .line 321
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    .line 322
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    .line 323
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    .line 324
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    .line 325
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    .line 326
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingProgressRow:I

    .line 327
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    .line 328
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    .line 329
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    .line 330
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    .line 331
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    .line 332
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    .line 333
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    .line 334
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    .line 335
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    .line 336
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    const/4 v1, 0x0

    .line 338
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 339
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_13

    const/4 v2, 0x0

    add-int/2addr v2, v4

    .line 340
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    add-int/lit8 v3, v2, 0x1

    .line 341
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    add-int/lit8 v2, v3, 0x1

    .line 342
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    .line 343
    iget-boolean v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 344
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    add-int/lit8 v2, v3, 0x1

    .line 345
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    add-int/lit8 v3, v2, 0x1

    .line 346
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    add-int/lit8 v2, v3, 0x1

    .line 348
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    add-int/lit8 v3, v2, 0x1

    .line 349
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    add-int/lit8 v2, v3, 0x1

    .line 350
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    add-int/lit8 v3, v2, 0x1

    .line 352
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    add-int/lit8 v2, v3, 0x1

    .line 353
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    add-int/lit8 v3, v2, 0x1

    .line 354
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    add-int/lit8 v2, v3, 0x1

    .line 355
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    add-int/lit8 v3, v2, 0x1

    .line 356
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    add-int/lit8 v2, v3, 0x1

    .line 357
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    .line 359
    :cond_1
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    add-int/lit8 v2, v3, 0x1

    .line 360
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    add-int/lit8 v3, v2, 0x1

    .line 361
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    .line 362
    iget-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    .line 363
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    .line 366
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v3, :cond_4

    .line 367
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_3

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 368
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    add-int/lit16 v2, v2, -0x3e8

    if-lt v1, v2, :cond_4

    .line 369
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    add-int/lit8 v1, v2, 0x1

    .line 370
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    add-int/lit8 v2, v1, 0x1

    .line 371
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    add-int/lit8 v1, v2, 0x1

    .line 372
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    .line 376
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v2, :cond_8

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 377
    :cond_6
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_7

    .line 378
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 380
    :cond_7
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    add-int/lit8 v1, v2, 0x1

    .line 381
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    add-int/lit8 v2, v1, 0x1

    .line 382
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    .line 384
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 385
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_9

    .line 386
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 388
    :cond_9
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    .line 390
    :cond_a
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    if-ne v1, v0, :cond_b

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    if-eq v1, v0, :cond_c

    :cond_b
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    if-eq v1, v0, :cond_d

    .line 391
    :cond_c
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    .line 393
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_f

    .line 394
    :cond_e
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 397
    :cond_f
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v1, :cond_10

    if-nez v1, :cond_2e

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_2e

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    if-lez v0, :cond_2e

    .line 400
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto/16 :goto_5

    .line 404
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 405
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 406
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 407
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 409
    :cond_11
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    if-ne v1, v0, :cond_12

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    if-eq v1, v0, :cond_2e

    .line 410
    :cond_12
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    goto/16 :goto_5

    :cond_13
    if-nez v2, :cond_1b

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 415
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_15

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    if-lez v1, :cond_15

    .line 417
    :cond_14
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    .line 420
    :cond_15
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v1, :cond_16

    goto :goto_0

    :cond_16
    if-nez v1, :cond_2e

    .line 438
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 439
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto/16 :goto_5

    .line 421
    :cond_17
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 422
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    .line 423
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 424
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 425
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 427
    :cond_18
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    if-eq v1, v0, :cond_1a

    .line 428
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    if-ne v1, v0, :cond_19

    .line 429
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    goto/16 :goto_5

    .line 431
    :cond_19
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    goto/16 :goto_5

    .line 435
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    goto/16 :goto_5

    :cond_1b
    if-ne v2, v4, :cond_23

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1c

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_1c

    iget-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v2, :cond_1e

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v1, :cond_1e

    .line 443
    :cond_1c
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    .line 444
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 445
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    add-int/lit8 v0, v1, 0x1

    .line 446
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    goto :goto_1

    .line 448
    :cond_1d
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    .line 452
    :cond_1e
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 453
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 455
    :cond_1f
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_20

    goto :goto_2

    :cond_20
    if-nez v0, :cond_2e

    .line 463
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto/16 :goto_5

    .line 456
    :cond_21
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 457
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 458
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 459
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 461
    :cond_22
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    goto/16 :goto_5

    :cond_23
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2e

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-nez v0, :cond_24

    .line 467
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    add-int/lit8 v0, v2, 0x1

    .line 468
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    .line 470
    :cond_24
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 471
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 473
    :cond_25
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 474
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    .line 476
    :cond_26
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_27

    goto :goto_3

    :cond_27
    if-nez v0, :cond_2e

    .line 504
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_28

    .line 505
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    .line 507
    :cond_28
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto :goto_5

    .line 478
    :cond_29
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 479
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    .line 480
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 482
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    const/4 v1, 0x1

    .line 485
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 486
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    .line 487
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 489
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    goto :goto_4

    :cond_2b
    move v4, v1

    .line 492
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v4, :cond_2c

    .line 494
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    .line 496
    :cond_2c
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 497
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 498
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 500
    :cond_2d
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    if-eqz v0, :cond_2e

    add-int/lit8 v1, v0, 0x1

    .line 501
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    :cond_2e
    :goto_5
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 1602
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    .line 530
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 531
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 532
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    const-string v6, "ChannelPermissions"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    const-string v6, "ChannelBlacklist"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 537
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    const-string v6, "ChannelAdministrators"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_7

    .line 539
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v1, :cond_4

    .line 540
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v1, :cond_3

    .line 541
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    const-string v6, "ChannelSubscribers"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 543
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    const-string v6, "ChannelMembers"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    .line 547
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAddAdmin:I

    const-string v6, "ChannelAddAdmin"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    .line 549
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelBlockUser:I

    const-string v6, "ChannelBlockUser"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    .line 551
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAddException:I

    const-string v6, "ChannelAddException"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 555
    :cond_7
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatUsersActivity$1;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 567
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/16 v5, 0x8

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eq v1, v3, :cond_8

    if-eqz v1, :cond_8

    if-ne v1, v4, :cond_d

    .line 568
    :cond_8
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    .line 569
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 570
    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ChatUsersActivity$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ChatUsersActivity$2;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 612
    iget v7, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v7, :cond_9

    .line 613
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 615
    :cond_9
    iget v6, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v6, v4, :cond_a

    .line 616
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$string;->ChannelSearchException:I

    const-string v8, "ChannelSearchException"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 618
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$string;->Search:I

    const-string v8, "Search"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 620
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_b

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_c

    .line 621
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 624
    :cond_c
    iget v6, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v6, v4, :cond_d

    .line 625
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/16 v6, 0x38

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget v7, Lorg/telegram/messenger/R$string;->Done:I

    const-string v8, "Done"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v4, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 629
    :cond_d
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$3;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 636
    check-cast v1, Landroid/widget/FrameLayout;

    .line 638
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 639
    new-instance v6, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v7, 0x6

    .line 640
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 641
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 642
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    .line 643
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 645
    new-instance v6, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    const/16 v7, 0x11

    const/4 v8, -0x2

    .line 646
    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 651
    new-instance v6, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v6, p1, v4, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 652
    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v8, "NoResult"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v8, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 655
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 656
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 658
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 661
    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$4;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 678
    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$5;

    invoke-direct {v5, p0, p1, v2, v0}, Lorg/telegram/ui/ChatUsersActivity$5;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;IZ)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 687
    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatUsersActivity$6;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    const-wide/16 v7, 0x140

    .line 721
    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    const-wide/16 v7, 0x0

    .line 722
    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDelay(J)V

    .line 723
    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDelay(J)V

    .line 724
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 725
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 726
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 727
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 728
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 729
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 730
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_e

    goto :goto_2

    :cond_e
    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 731
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1308
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1309
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_f

    .line 1310
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$12;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1325
    :cond_f
    new-instance v2, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x53

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x8

    .line 1326
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 1330
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1333
    iget-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-eqz p1, :cond_10

    .line 1334
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 1337
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    .line 2001
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    .line 2002
    aget-object p2, p3, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 v0, 0x2

    .line 2003
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 2004
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 2005
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 2006
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p1, :cond_2

    .line 2008
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getCurrentSlowmode()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    .line 2010
    :cond_2
    new-instance p1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3838
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3840
    new-instance v11, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda20;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    .line 3852
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-class v6, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3853
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundGray"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3855
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3856
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v21, "actionBarDefault"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3857
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3858
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v21, "actionBarDefaultTitle"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3859
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3861
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v21, "listSelectorSDK21"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3863
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3865
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v12

    const-string v21, "windowBackgroundGrayShadow"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3866
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v12

    const-string v14, "textView"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteGrayText4"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3868
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v12

    const/16 v21, 0x0

    const-string v22, "windowBackgroundGrayShadow"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3870
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v30, 0x0

    const-string v31, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3872
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    const/16 v22, 0x0

    const-string v23, "key_graySectionText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3873
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v4, v12

    const-string v31, "graySection"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3875
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteBlackText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3876
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v12

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    const/16 v31, 0x0

    const-string v32, "windowBackgroundWhiteValueText"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3878
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteBlackText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3879
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "windowBackgroundWhiteGrayText2"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3880
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v4, v12

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "switch2Track"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3881
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "switch2TrackChecked"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3883
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v12

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteBlackText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3884
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v2, v5, v12

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v10, "windowBackgroundWhiteGrayText"

    move-object v2, v15

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3885
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v2, v5, v12

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "windowBackgroundWhiteBlueText"

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3887
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v19, 0x0

    const-string v23, "undo_background"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3888
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "undo_cancelColor"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3889
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    const-string v23, "undo_cancelColor"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3890
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "undo_infoColor"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3891
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "undo_infoColor"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3892
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "progressPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "undo_infoColor"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3893
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "leftImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "undo_infoColor"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3895
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "windowBackgroundWhiteBlackText"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3896
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v12

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteGrayIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3897
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "windowBackgroundWhiteBlueButton"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3898
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteBlueIcon"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3900
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/StickerEmptyView;

    aput-object v5, v4, v12

    const-string v5, "title"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    const-string v32, "windowBackgroundWhiteBlackText"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3901
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/StickerEmptyView;

    aput-object v4, v3, v12

    const-string v4, "subtitle"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v19, 0x0

    const-string v22, "windowBackgroundWhiteBlackText"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3902
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3903
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v15, v3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v21, "windowBackgroundWhiteGrayText"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3905
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v3, v6, v12

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v10, "avatar_text"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3906
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "avatar_backgroundRed"

    move-object v2, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3907
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3908
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3909
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3910
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3911
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3912
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasSelectType()Z
    .locals 1

    .line 2089
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 2017
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2579
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2580
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 514
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 515
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 516
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 522
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2571
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2573
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2559
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2560
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2561
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 2562
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2564
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_1

    .line 2565
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2599
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 2601
    iget-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-eqz p1, :cond_1

    .line 2602
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2603
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 2604
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;
    .locals 3

    .line 3647
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/ChatUsersActivity$1;)V

    .line 3648
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldRowCount:I

    .line 3650
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotStartRow:I

    .line 3651
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotEndRow:I

    .line 3652
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9400(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3653
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9400(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3655
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsEndRow:I

    .line 3656
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsStartRow:I

    .line 3657
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9500(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3658
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9500(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3660
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsStartRow:I

    .line 3661
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsEndRow:I

    .line 3662
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9600(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3663
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9600(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3665
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    return-object v0
.end method

.method public setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V
    .locals 0

    .line 2021
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 2223
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 2225
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getCurrentSlowmode()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    :cond_0
    return-void
.end method

.method public updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V
    .locals 4

    .line 3670
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-nez v0, :cond_0

    .line 3671
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    return-void

    .line 3674
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 3675
    iget-object v0, p1, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 3676
    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3677
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 3680
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3681
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3683
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 3688
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    return-void
.end method
