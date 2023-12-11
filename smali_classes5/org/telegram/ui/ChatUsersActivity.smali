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

.method public static synthetic $r8$lambda$4X5VSmYXj9-Sq2KTa0NeWwUHOB4(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$83cuvWTvEomVCiH_ck3NovlPseQ(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$14(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YOvFm_Lj5po9EkZ4JPupsfifjI(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$loadChatParticipants$26(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bzkz5varA3wN12n9j3x1POG6yc0(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$3(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C-uE0qQQC3C3buZLicjue903rBs(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$processDone$25(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$G68KHa2wBDWtwFaIUhj5gdfBZxU(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->lambda$deletePeer$20(Lorg/telegram/tgnet/TLRPC$Updates;)V

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

.method public static synthetic $r8$lambda$MuLRVuMyxQ9Oi4BM873Iu3tZwQ8(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ChatUsersActivity;->lambda$loadChatParticipants$28(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O2VcF9h3VfuYFjEYuI9rNosHsP4(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$4(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMLBYz_Xn5bNaJrBTySgzulYPLg(Lorg/telegram/ui/ChatUsersActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$5(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$afR11sf-5gR9nNWhZ1YrqTTYKjw(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$19(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9P18Jv9NWz9asy5ZFvceq8sVKs(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$13(Lorg/telegram/tgnet/TLRPC$User;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$bHm0GpzIXK5zSCZgHaBJXkQbR1k(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$9(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fwFXXIzfc7h9XV1fBdbS65eDk7c(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->lambda$didReceivedNotification$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$hRYY3VxAvY3oq694sNHkrpXT3qM(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$15(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hzqI3tJMsCdPRkPU0jl-JT4EkEY(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$10(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSHDWD90f9M18ZHH2WkxuGAsJJ8(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->lambda$getThemeDescriptions$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$nDiTymfqsB5WUk9oUVMKFvIRwWM(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$17(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$nXBEgyfRGpb-_cw-S2MRYIi-fwQ(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$1(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rKEXBI6DWubk4XcEJrNoj8p6drM(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$checkDiscard$23(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s21JsES_9agG0pIvFwb13RBz_WM(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$deletePeer$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vecunPlSeNgEzYO0O_tfV5uCzI4(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$checkDiscard$24(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vlmhSGTin77zF5k6iYRgXM27-4o(Lorg/telegram/ui/ChatUsersActivity;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->lambda$sortUsers$29(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w6B2c7fhUJidfDmSGWVfZWaeB2g(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$sortAdmins$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xc6xy4OH85EqS1Qczd9xt6_OdXs(Lorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$11(Lorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpWZVWi5L20G7KhvoQgapIRXzec(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ChatUsersActivity;->lambda$loadChatParticipants$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yqMdjbAEI1o9n5WEOJGtaTTQ3xU(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$16(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ysZKccOxUE8CT6TRRT31nLbS7no(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$18(JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

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

    .line 244
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 118
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    .line 124
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 125
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 126
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "open_search"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "selectType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    .line 249
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

    .line 250
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p1, :cond_0

    .line 251
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 252
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 253
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 254
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 255
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 256
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 257
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 258
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 259
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 260
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 261
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 262
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 263
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 264
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 265
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 266
    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 267
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 268
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 269
    iget-boolean v8, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 270
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_0

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 272
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 273
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 274
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 275
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 276
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 277
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 280
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    .line 281
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

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->sortUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChatUsersActivity;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->onOwnerChaged(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChatUsersActivity;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChatUsersActivity;)J
    .locals 2

    .line 90
    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    return-wide v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ChatUsersActivity;I)I
    .locals 0

    .line 90
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->formatUserPermissions(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ChatUsersActivity;I)I
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->getSecondsForIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ChatUsersActivity;I)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->formatSeconds(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ChatUsersActivity;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setSendMediaEnabled(Z)V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChatUsersActivity;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->showItemsAnimated(I)V

    return-void
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    return p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    return p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    return p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingProgressRow:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ChatUsersActivity;I)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->isExpandableSendMediaRow(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatUsersActivity;->updateParticipantWithRights(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V

    return-void
.end method

.method private checkDiscard()Z
    .locals 3

    .line 1967
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 1968
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

    .line 1969
    :cond_1
    :goto_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1970
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    const-string v2, "UserRestrictionsApplyChanges"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1971
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v1, :cond_2

    .line 1972
    sget v1, Lorg/telegram/messenger/R$string;->ChannelSettingsChangedAlert:I

    const-string v2, "ChannelSettingsChangedAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1974
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->GroupSettingsChangedAlert:I

    const-string v2, "GroupSettingsChangedAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1976
    :goto_1
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    const-string v2, "ApplyTheme"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1977
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1978
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, 0x0

    return v0
.end method

.method private createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    if-eqz v11, :cond_20

    .line 1717
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v0, :cond_0

    goto/16 :goto_12

    .line 1726
    :cond_0
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1727
    move-object v0, v11

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1728
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 1729
    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    .line 1730
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1731
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1732
    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 1733
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    move-wide v14, v3

    move v4, v8

    move-object v8, v0

    move-object/from16 v26, v7

    move-object v7, v6

    move-object/from16 v6, v26

    goto :goto_0

    .line 1734
    :cond_1
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v0, :cond_2

    .line 1735
    move-object v0, v11

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1736
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1737
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 1738
    iget-object v6, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    const-string v7, ""

    move-wide v14, v4

    move v5, v6

    move-object v8, v7

    move v4, v0

    move-object v6, v3

    move-object v7, v6

    goto :goto_0

    :cond_2
    move-wide v14, v1

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    cmp-long v0, v14, v1

    if-eqz v0, :cond_1f

    .line 1750
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    cmp-long v1, v14, v1

    if-nez v1, :cond_3

    goto/16 :goto_11

    .line 1753
    :cond_3
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v2, 0x2

    const-string v9, "EditAdminRights"

    const/4 v13, 0x1

    if-ne v1, v2, :cond_14

    .line 1754
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1755
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-nez v0, :cond_4

    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-nez v0, :cond_4

    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-nez v0, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    move v0, v13

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 1756
    :goto_1
    instance-of v1, v11, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v1, :cond_6

    instance-of v3, v11, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v3, :cond_6

    instance-of v3, v11, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez v3, :cond_6

    instance-of v3, v11, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v3, :cond_7

    :cond_6
    if-eqz v5, :cond_8

    :cond_7
    move/from16 v16, v13

    goto :goto_2

    :cond_8
    const/16 v16, 0x0

    :goto_2
    if-nez v1, :cond_a

    .line 1757
    instance-of v1, v11, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    const/16 v17, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    move/from16 v17, v13

    .line 1758
    :goto_4
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v16, :cond_b

    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v1, :cond_b

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v1, :cond_b

    move v5, v13

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    .line 1760
    :goto_5
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v1, :cond_c

    .line 1761
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    xor-int/2addr v1, v13

    and-int/2addr v0, v1

    :cond_c
    move v3, v0

    if-nez v3, :cond_e

    .line 1764
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v16, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    move v0, v13

    :goto_7
    if-nez p2, :cond_13

    if-nez v0, :cond_f

    goto/16 :goto_b

    .line 1769
    :cond_f
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda23;

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 p2, v2

    move v11, v3

    move-wide v2, v14

    move-wide/from16 v18, v14

    move v14, v5

    move-object/from16 v5, p1

    move-object v15, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Z)V

    .line 1772
    invoke-static {v10, v12}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 1773
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    if-eqz v17, :cond_10

    .line 1774
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminRights:I

    invoke-static {v15, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_10
    sget v2, Lorg/telegram/messenger/R$string;->SetAsAdmin:I

    const-string v3, "SetAsAdmin"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v13}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v11, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    sget v2, Lorg/telegram/messenger/R$string;->ChangePermissions:I

    const-string v3, "ChangePermissions"

    .line 1775
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda14;

    move-object/from16 v9, p1

    move-object/from16 v4, p2

    invoke-direct {v3, v10, v9, v4, v13}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v14, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v20

    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1789
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v16, :cond_11

    const/16 v21, 0x1

    goto :goto_9

    :cond_11
    const/16 v21, 0x0

    :goto_9
    sget v22, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    iget-boolean v0, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v0, :cond_12

    sget v0, Lorg/telegram/messenger/R$string;->ChannelRemoveUser:I

    const-string v1, "ChannelRemoveUser"

    goto :goto_a

    :cond_12
    sget v0, Lorg/telegram/messenger/R$string;->KickFromGroup:I

    const-string v1, "KickFromGroup"

    :goto_a
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    const/16 v24, 0x1

    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda16;

    move-wide/from16 v13, v18

    invoke-direct {v0, v10, v4, v13, v14}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;J)V

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/16 v11, 0xbe

    .line 1796
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1797
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_f

    :cond_13
    :goto_b
    return v0

    :cond_14
    move-wide v13, v14

    move-object v15, v9

    move-object v9, v11

    const/16 v11, 0xbe

    .line 1800
    invoke-static {v10, v12}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v12

    .line 1802
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v2, 0x3

    const-string v4, "ChannelDeleteFromList"

    if-ne v1, v2, :cond_15

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1803
    sget v15, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    sget v0, Lorg/telegram/messenger/R$string;->ChannelEditPermissions:I

    const-string v1, "ChannelEditPermissions"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda12;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide v2, v13

    move-object v11, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v8

    move-object v8, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v12, v15, v8, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1824
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v1, Lorg/telegram/messenger/R$string;->ChannelDeleteFromList:I

    invoke-static {v11, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v10, v13, v14}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    const/4 v3, 0x1

    invoke-virtual {v12, v0, v1, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_d

    :cond_15
    move-object v11, v4

    .line 1825
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v1, :cond_18

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1826
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-lez v0, :cond_17

    .line 1827
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v1, :cond_16

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAddToChannel:I

    const-string v2, "ChannelAddToChannel"

    goto :goto_c

    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->ChannelAddToGroup:I

    const-string v2, "ChannelAddToGroup"

    :goto_c
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, v10, v13, v14}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    invoke-virtual {v12, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1832
    :cond_17
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v1, Lorg/telegram/messenger/R$string;->ChannelDeleteFromList:I

    invoke-static {v11, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v10, v13, v14}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    const/4 v3, 0x1

    invoke-virtual {v12, v0, v1, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_d

    :cond_18
    const/4 v3, 0x1

    .line 1833
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v0, v3, :cond_1b

    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz v5, :cond_1b

    .line 1834
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_19

    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_1a

    .line 1835
    :cond_19
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    sget v0, Lorg/telegram/messenger/R$string;->EditAdminRights:I

    invoke-static {v15, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda11;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide v2, v13

    move-object v4, v6

    move-object v5, v8

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v12, v7, v11, v15}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1857
    :cond_1a
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    sget v1, Lorg/telegram/messenger/R$string;->ChannelRemoveUserAdmin:I

    const-string v2, "ChannelRemoveUserAdmin"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v10, v13, v14}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    const/4 v3, 0x1

    invoke-virtual {v12, v0, v1, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1863
    :cond_1b
    :goto_d
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    const/16 v0, 0xbe

    .line 1864
    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 1866
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v13, 0x1

    goto :goto_e

    :cond_1c
    const/4 v13, 0x0

    :goto_e
    if-nez p2, :cond_1e

    if-nez v13, :cond_1d

    goto :goto_10

    .line 1871
    :cond_1d
    invoke-virtual {v12}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    :goto_f
    const/4 v0, 0x1

    return v0

    :cond_1e
    :goto_10
    return v13

    :cond_1f
    :goto_11
    const/4 v0, 0x0

    return v0

    :cond_20
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method private deletePeer(J)V
    .locals 3

    .line 1877
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;-><init>()V

    .line 1878
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1879
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1880
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1881
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private formatSeconds(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Seconds"

    .line 1958
    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0xe10

    if-ge p1, v2, :cond_1

    .line 1960
    div-int/2addr p1, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Minutes"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1962
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

    .line 1992
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1993
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eq v2, v1, :cond_1

    .line 1994
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoRead:I

    const-string v2, "UserRestrictionsNoRead"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    :cond_1
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    const-string v2, ", "

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eq v1, v3, :cond_3

    .line 1997
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1998
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendText:I

    const-string v3, "UserRestrictionsNoSendText"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    :cond_3
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eq v3, v1, :cond_5

    .line 2003
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2004
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendMedia:I

    const-string v3, "UserRestrictionsNoSendMedia"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2008
    :cond_5
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eq v3, v1, :cond_7

    .line 2009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2010
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendPhotos:I

    const-string v3, "UserRestrictionsNoSendPhotos"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    :cond_7
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eq v3, v1, :cond_9

    .line 2015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2016
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    :cond_8
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendVideos:I

    const-string v3, "UserRestrictionsNoSendVideos"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    :cond_9
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eq v3, v1, :cond_b

    .line 2021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 2022
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    :cond_a
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendMusic:I

    const-string v3, "UserRestrictionsNoSendMusic"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    :cond_b
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eq v3, v1, :cond_d

    .line 2027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2028
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendDocs:I

    const-string v3, "UserRestrictionsNoSendDocs"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    :cond_d
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eq v3, v1, :cond_f

    .line 2033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2034
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    :cond_e
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendVoice:I

    const-string v3, "UserRestrictionsNoSendVoice"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    :cond_f
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eq v3, v1, :cond_11

    .line 2039
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 2040
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    :cond_10
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendRound:I

    const-string v3, "UserRestrictionsNoSendRound"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    :cond_11
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eq v3, v1, :cond_13

    .line 2046
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_12

    .line 2047
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    :cond_12
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendStickers:I

    const-string v3, "UserRestrictionsNoSendStickers"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    :cond_13
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v1, :cond_15

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eq v3, v1, :cond_15

    .line 2052
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_14

    .line 2053
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    :cond_14
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendPolls:I

    const-string v3, "UserRestrictionsNoSendPolls"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    :cond_15
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_17

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eq v3, v1, :cond_17

    .line 2058
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 2059
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    :cond_16
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoEmbedLinks:I

    const-string v3, "UserRestrictionsNoEmbedLinks"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    :cond_17
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v1, :cond_19

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eq v3, v1, :cond_19

    .line 2064
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 2065
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    :cond_18
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoInviteUsers:I

    const-string v3, "UserRestrictionsNoInviteUsers"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    :cond_19
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_1b

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eq v3, v1, :cond_1b

    .line 2070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 2071
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    :cond_1a
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoPinMessages:I

    const-string v3, "UserRestrictionsNoPinMessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    :cond_1b
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz p1, :cond_1d

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eq v1, p1, :cond_1d

    .line 2076
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 2077
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    :cond_1c
    sget p1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoChangeInfo:I

    const-string v1, "UserRestrictionsNoChangeInfo"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 2082
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    .line 2083
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2085
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

    .line 1631
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1633
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    .line 1635
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1637
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

    .line 2131
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2133
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

    .line 1921
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_5

    .line 1922
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

.method private getParticipantsCount()I
    .locals 2

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1314
    :cond_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 1315
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    return v1
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

    .line 3686
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I

    move-result v0

    return v0
.end method

.method public static getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I
    .locals 2

    .line 3691
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3694
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3697
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3701
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 3704
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 3707
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 3711
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 3714
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 3717
    :cond_6
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 3720
    :cond_7
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 3723
    :cond_8
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 3726
    :cond_9
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez p0, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    return v0
.end method

.method private isExpandableSendMediaRow(I)Z
    .locals 1

    .line 3537
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

.method private synthetic lambda$checkDiscard$23(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$24(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1977
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static synthetic lambda$createMenuForParticipant$10(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1774
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createMenuForParticipant$11(Lorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 1781
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 1776
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1786
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_1

    .line 1777
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1778
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    .line 1779
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->AdminWillBeRemoved:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1780
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "AdminWillBeRemoved"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string v0, "OK"

    .line 1781
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    .line 1782
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1783
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1777
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_1
    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$13(Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 3

    .line 1790
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    .line 1791
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    .line 1792
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1793
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$14(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 15

    move-object v0, p0

    .line 1804
    new-instance v14, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v4, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v13}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1805
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$17;

    move-object/from16 v2, p5

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ChatUsersActivity$17;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1822
    invoke-virtual {p0, v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$15(J)V
    .locals 0

    .line 1824
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->deletePeer(J)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$16(J)V
    .locals 9

    .line 1828
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1829
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$17(J)V
    .locals 0

    .line 1832
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->deletePeer(J)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$18(JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 15

    move-object v0, p0

    .line 1836
    new-instance v14, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v4, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v13}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1837
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$18;

    move-object/from16 v2, p5

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ChatUsersActivity$18;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1854
    invoke-virtual {p0, v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$19(J)V
    .locals 12

    .line 1858
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iget-boolean v5, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    xor-int/lit8 v6, v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, ""

    move-object v7, p0

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 1859
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$9(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 11

    .line 1770
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 2

    .line 974
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 978
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v0, 0xd

    invoke-static {p2, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result p2

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

    .line 979
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

    .line 969
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 970
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 972
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "CHAT_NOT_MODIFIED"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 973
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda17;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 982
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 2

    .line 1004
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1008
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result p2

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

    .line 1009
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

    .line 999
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1000
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1002
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "CHAT_NOT_MODIFIED"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1003
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda18;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1012
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 11

    move-object v0, p1

    .line 1198
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object v10, p0

    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v3

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

.method private synthetic lambda$createView$5(Landroid/view/View;IFF)V
    .locals 29

    move-object/from16 v10, p0

    move/from16 v0, p2

    .line 741
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, "chat_id"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v1, :cond_35

    .line 743
    invoke-direct {v10, v0}, Lorg/telegram/ui/ChatUsersActivity;->isExpandableSendMediaRow(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 744
    move-object/from16 v7, p1

    check-cast v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 746
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    if-ne v0, v8, :cond_1

    .line 747
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v9, :cond_d

    .line 749
    iput-boolean v3, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 750
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_1

    .line 752
    :cond_1
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    if-ne v0, v9, :cond_2

    .line 753
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v9, :cond_d

    .line 755
    iput-boolean v3, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 756
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_1

    .line 758
    :cond_2
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    if-ne v0, v9, :cond_3

    .line 759
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v9, :cond_d

    .line 761
    iput-boolean v3, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 762
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_1

    .line 765
    :cond_3
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    if-ne v0, v9, :cond_4

    .line 766
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    goto/16 :goto_1

    .line 767
    :cond_4
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    if-ne v0, v9, :cond_5

    .line 768
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    goto/16 :goto_1

    .line 769
    :cond_5
    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    if-ne v0, v9, :cond_6

    .line 770
    iget-object v9, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v11, v4

    iput-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v11, :cond_d

    .line 773
    iput-boolean v4, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 774
    iget-object v9, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 775
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-boolean v4, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 776
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 777
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-boolean v4, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 778
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 781
    :cond_6
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    if-ne v0, v8, :cond_7

    .line 782
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    goto :goto_1

    .line 783
    :cond_7
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    if-ne v0, v8, :cond_8

    .line 784
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    goto :goto_1

    .line 785
    :cond_8
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    if-ne v0, v8, :cond_9

    .line 786
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    goto :goto_1

    .line 787
    :cond_9
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    if-ne v0, v8, :cond_a

    .line 788
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    goto :goto_1

    .line 789
    :cond_a
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-ne v0, v8, :cond_c

    .line 790
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v8, :cond_b

    .line 791
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v9, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 793
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    .line 794
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 798
    :cond_b
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_1

    .line 799
    :cond_c
    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-ne v0, v8, :cond_d

    .line 800
    iget-object v8, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr v9, v4

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 803
    :cond_d
    :goto_1
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v8

    xor-int/2addr v8, v4

    invoke-virtual {v7, v8, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 804
    iget-object v7, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto/16 :goto_c

    .line 805
    :cond_e
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    const-string v8, "type"

    if-ne v0, v7, :cond_16

    .line 806
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const-string v1, "selectType"

    if-eqz v0, :cond_13

    if-ne v0, v5, :cond_f

    goto :goto_4

    :cond_f
    if-ne v0, v4, :cond_10

    .line 851
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 852
    iget-wide v11, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v2, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 853
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 854
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 856
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$8;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ChatUsersActivity$8;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V

    .line 900
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 901
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    :cond_10
    if-ne v0, v6, :cond_15

    .line 903
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "addToGroup"

    .line 904
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 905
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

    .line 906
    new-instance v1, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 907
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 908
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

    .line 909
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$9;

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ChatUsersActivity$9;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;)V

    .line 950
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_5

    .line 807
    :cond_13
    :goto_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 808
    iget-wide v3, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 809
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    iget v2, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v2, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 812
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 813
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setBannedRights(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V

    .line 814
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$7;

    invoke-direct {v0, v10}, Lorg/telegram/ui/ChatUsersActivity$7;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V

    .line 849
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_15
    :goto_5
    return-void

    .line 953
    :cond_16
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    if-ne v0, v7, :cond_17

    .line 954
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 956
    :cond_17
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    if-ne v0, v7, :cond_1c

    .line 957
    move-object/from16 v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 958
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_18

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v1, :cond_18

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-ge v1, v2, :cond_18

    .line 959
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

    .line 960
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

    .line 961
    iput-boolean v4, v10, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    .line 962
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    .line 963
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;-><init>()V

    .line 964
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 965
    iget-object v6, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    xor-int/2addr v4, v7

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;->enabled:Z

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 966
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v4

    iget-object v6, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_1a

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v2, :cond_1a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v2

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

    .line 967
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda27;

    invoke-direct {v3, v10, v0, v1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-virtual {v2, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1b
    :goto_7
    return-void

    .line 986
    :cond_1c
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    if-ne v0, v7, :cond_21

    .line 987
    move-object/from16 v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 988
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-ge v1, v2, :cond_1d

    .line 989
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

    .line 990
    :cond_1d
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_20

    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    if-nez v1, :cond_20

    .line 991
    iput-boolean v4, v10, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    .line 992
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    .line 993
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;-><init>()V

    .line 994
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v7, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v5, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 995
    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    xor-int/2addr v4, v7

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;->enabled:Z

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 996
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v4

    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v5, :cond_1f

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-nez v5, :cond_1f

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v5

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

    .line 997
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda26;

    invoke-direct {v4, v10, v0, v1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_20
    :goto_9
    return-void

    .line 1016
    :cond_21
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    if-ne v0, v7, :cond_22

    .line 1017
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1018
    iget-wide v4, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1019
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1020
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1021
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1022
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1024
    :cond_22
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    if-ne v0, v7, :cond_23

    .line 1025
    new-instance v7, Lorg/telegram/ui/ChatUsersActivity$10;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v10, v8, v10}, Lorg/telegram/ui/ChatUsersActivity$10;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v10, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 1053
    :cond_23
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    if-ne v0, v7, :cond_25

    .line 1054
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_24

    .line 1055
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v2, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 1056
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 1057
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_24
    return-void

    .line 1060
    :cond_25
    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    if-le v0, v7, :cond_35

    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    iget v8, v10, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gt v0, v7, :cond_35

    .line 1061
    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 1062
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    .line 1065
    :cond_26
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1066
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    if-eq v0, v1, :cond_27

    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    if-ne v0, v1, :cond_28

    .line 1067
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

    .line 1069
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

    .line 1073
    :cond_29
    iget v2, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ne v0, v2, :cond_2a

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 1076
    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    .line 1077
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1078
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void

    .line 1081
    :cond_2a
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 1082
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    if-ne v0, v1, :cond_2b

    .line 1083
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    goto/16 :goto_b

    .line 1084
    :cond_2b
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    if-ne v0, v1, :cond_2c

    .line 1085
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    goto/16 :goto_b

    .line 1086
    :cond_2c
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    if-ne v0, v1, :cond_2d

    .line 1087
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    goto :goto_b

    .line 1088
    :cond_2d
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    if-ne v0, v1, :cond_2e

    .line 1089
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    goto :goto_b

    .line 1091
    :cond_2e
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    if-ne v0, v1, :cond_30

    .line 1092
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 1093
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-ltz v0, :cond_2f

    .line 1094
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1096
    :cond_2f
    iget v0, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ltz v0, :cond_34

    .line 1097
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b

    .line 1099
    :cond_30
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ne v0, v1, :cond_31

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    .line 1101
    iget-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    .line 1102
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1103
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    goto :goto_b

    .line 1104
    :cond_31
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    if-ne v0, v1, :cond_32

    .line 1105
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    goto :goto_b

    .line 1106
    :cond_32
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    if-ne v0, v1, :cond_33

    .line 1107
    iget-object v0, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_b

    .line 1108
    :cond_33
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-ne v0, v1, :cond_34

    .line 1109
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

    if-eqz v1, :cond_3e

    .line 1124
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1125
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_3a

    .line 1126
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1127
    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    .line 1128
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1129
    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1130
    iget-object v15, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    .line 1131
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v6, :cond_36

    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v6, :cond_37

    :cond_36
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v1, :cond_38

    :cond_37
    move v1, v4

    goto :goto_d

    :cond_38
    move v1, v3

    .line 1132
    :goto_d
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v6, :cond_39

    .line 1133
    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    iget-object v14, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-nez v14, :cond_39

    .line 1135
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 1136
    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1139
    iget-boolean v6, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v6, :cond_39

    .line 1140
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

    .line 1144
    :cond_3a
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_3d

    .line 1145
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1146
    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1147
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    .line 1148
    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v6, :cond_3b

    .line 1149
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 1150
    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1153
    iget-boolean v14, v10, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v14, :cond_3c

    .line 1154
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

    move v14, v3

    move-wide v12, v7

    :goto_10
    move-object/from16 v19, v9

    move-object/from16 v22, v11

    move-object/from16 v11, v19

    goto/16 :goto_14

    .line 1159
    :cond_3e
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1160
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_3f

    .line 1161
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1163
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->getAnyParticipant(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    move-wide v12, v0

    move-object v0, v6

    goto :goto_12

    .line 1164
    :cond_3f
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v1, :cond_41

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_40

    goto :goto_11

    :cond_40
    move-wide v12, v7

    move-object v0, v9

    goto :goto_12

    :cond_41
    :goto_11
    move-wide v12, v7

    .line 1169
    :goto_12
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_45

    .line 1170
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1171
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    .line 1172
    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v6, :cond_42

    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v6, :cond_43

    :cond_42
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v6, :cond_44

    :cond_43
    move v6, v4

    goto :goto_13

    :cond_44
    move v6, v3

    .line 1173
    :goto_13
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1174
    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1175
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    move-object/from16 v22, v1

    move-object/from16 v19, v14

    move v14, v6

    move-object v6, v0

    goto/16 :goto_e

    .line 1176
    :cond_45
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v1, :cond_46

    .line 1177
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1178
    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1179
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move-object v6, v0

    move v14, v1

    goto :goto_10

    :cond_46
    move-object v6, v0

    if-nez v0, :cond_47

    move v14, v4

    goto :goto_10

    :cond_47
    move v14, v3

    goto :goto_10

    :goto_14
    cmp-long v0, v12, v7

    if-eqz v0, :cond_5d

    .line 1187
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v1, :cond_4f

    if-eq v1, v5, :cond_49

    if-ne v1, v4, :cond_48

    goto :goto_15

    .line 1205
    :cond_48
    invoke-direct {v10, v12, v13}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipant(J)V

    goto/16 :goto_21

    :cond_49
    :goto_15
    if-eq v1, v4, :cond_4b

    if-eqz v14, :cond_4b

    .line 1189
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v0, :cond_4a

    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_4b

    .line 1190
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1195
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1196
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v1, "AppName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1197
    sget v0, Lorg/telegram/messenger/R$string;->AdminWillBeRemoved:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "AdminWillBeRemoved"

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1198
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v6

    move-object/from16 v4, v19

    move-object v5, v11

    move-object/from16 v6, v22

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Z)V

    invoke-virtual {v8, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1199
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1200
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_21

    :cond_4b
    if-ne v1, v4, :cond_4c

    move v8, v3

    goto :goto_16

    :cond_4c
    move v8, v4

    :goto_16
    if-eq v1, v4, :cond_4e

    if-ne v1, v5, :cond_4d

    goto :goto_17

    :cond_4d
    move v9, v3

    goto :goto_18

    :cond_4e
    :goto_17
    move v9, v4

    :goto_18
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v6

    move-object/from16 v4, v19

    move-object v5, v11

    move-object/from16 v6, v22

    move v7, v14

    .line 1202
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    goto/16 :goto_21

    .line 1209
    :cond_4f
    iget v1, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v1, v4, :cond_52

    .line 1210
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
    move v1, v4

    goto :goto_1a

    :cond_51
    move v1, v3

    goto :goto_1a

    :cond_52
    if-eqz v1, :cond_54

    if-ne v1, v5, :cond_53

    goto :goto_19

    :cond_53
    move/from16 v24, v3

    goto :goto_1b

    .line 1212
    :cond_54
    :goto_19
    iget-object v1, v10, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    :goto_1a
    move/from16 v24, v1

    .line 1214
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

    .line 1227
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 1228
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 1229
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 1230
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 1231
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 1232
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 1233
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 1234
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 1235
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 1236
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 1237
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 1238
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 1239
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 1240
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 1241
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 1242
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 1243
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 1244
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 1245
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 1246
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 1247
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    move-object/from16 v21, v0

    goto :goto_1c

    :cond_57
    move-object/from16 v21, v11

    .line 1249
    :goto_1c
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v1, v10, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v5, v10, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v7, v10, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v7, v4, :cond_58

    move/from16 v23, v3

    goto :goto_1d

    :cond_58
    move/from16 v23, v4

    :goto_1d
    if-nez v6, :cond_59

    move/from16 v25, v4

    goto :goto_1e

    :cond_59
    move/from16 v25, v3

    :goto_1e
    const/16 v26, 0x0

    move-object v14, v0

    move-wide v15, v12

    move-wide/from16 v17, v1

    move-object/from16 v20, v5

    invoke-direct/range {v14 .. v26}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1250
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$11;

    invoke-direct {v1, v10, v6}, Lorg/telegram/ui/ChatUsersActivity$11;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1267
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_21

    .line 1215
    :cond_5a
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v1, v12, v3

    if-nez v1, :cond_5b

    return-void

    .line 1218
    :cond_5b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-lez v0, :cond_5c

    const-string v0, "user_id"

    .line 1220
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_20

    :cond_5c
    neg-long v3, v12

    .line 1222
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1224
    :goto_20
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_5d
    :goto_21
    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;I)Z
    .locals 3

    .line 1274
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-ne v0, v2, :cond_0

    .line 1275
    invoke-virtual {v2, p2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p2

    invoke-direct {p0, p2, v1, p1}, Lorg/telegram/ui/ChatUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private synthetic lambda$deletePeer$20(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 4

    .line 1887
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1888
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$deletePeer$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1883
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1884
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1885
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1886
    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$Updates;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$22()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 1906
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$30()V
    .locals 5

    .line 3737
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 3738
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3740
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3741
    instance-of v4, v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_0

    .line 3742
    check-cast v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadChatParticipants$26(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v0, v2

    move v3, v0

    .line 2270
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_14

    move-object/from16 v4, p1

    .line 2271
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    move-object/from16 v8, p2

    .line 2272
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    if-eqz v7, :cond_13

    if-nez v9, :cond_0

    goto/16 :goto_c

    .line 2275
    :cond_0
    iget v10, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v10, v6, :cond_1

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v1, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v10, v11, v12, v9}, Lorg/telegram/messenger/MessagesController;->processLoadedAdminsResponse(JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V

    .line 2278
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2279
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2280
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    .line 2281
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v12, :cond_3

    move v12, v2

    .line 2282
    :goto_1
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 2283
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    cmp-long v13, v13, v10

    if-nez v13, :cond_2

    .line 2284
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2291
    :cond_3
    :goto_2
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v12, v5, :cond_6

    .line 2292
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    sub-int/2addr v12, v6

    iput v12, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2293
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    instance-of v12, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    if-eqz v12, :cond_4

    .line 2294
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    .line 2295
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2296
    :cond_4
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    if-eqz v7, :cond_5

    .line 2297
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    .line 2298
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2300
    :cond_5
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 2301
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2304
    :cond_6
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 2305
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 2306
    invoke-virtual {v12}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2308
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2309
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2310
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v2

    :goto_4
    if-ge v14, v13, :cond_8

    .line 2311
    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move/from16 v16, v3

    .line 2312
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_7

    .line 2313
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2315
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

    .line 2318
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 2319
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v0, v5, :cond_f

    .line 2320
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_f

    .line 2321
    iget-object v9, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    .line 2322
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v10, :cond_9

    .line 2323
    iget-object v9, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2328
    :cond_9
    check-cast v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2329
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    .line 2331
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_d

    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    goto :goto_8

    .line 2333
    :cond_a
    iget v11, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-ne v11, v6, :cond_b

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_b

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

    .line 2335
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
    move v11, v6

    :goto_9
    if-eqz v11, :cond_e

    .line 2339
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2340
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_7

    :cond_e
    :goto_a
    add-int/2addr v3, v6

    goto :goto_6

    .line 2347
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

    .line 2348
    invoke-direct {v1, v7}, Lorg/telegram/ui/ChatUsersActivity;->sortUsers(Ljava/util/ArrayList;)V

    goto :goto_b

    :cond_11
    if-ne v0, v6, :cond_12

    .line 2350
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 2353
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

    .line 2356
    :cond_14
    iget v2, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v2, v5, :cond_15

    iget v2, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    if-gtz v2, :cond_19

    .line 2357
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

    .line 2358
    iput-boolean v2, v1, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2359
    iput-boolean v6, v1, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    .line 2360
    iget-object v2, v1, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_19

    .line 2361
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

    .line 2364
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 2365
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_1a

    .line 2366
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 2367
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2369
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, v1, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_1a

    .line 2370
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v3, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2373
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    return-void
.end method

.method private static synthetic lambda$loadChatParticipants$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    if-nez p0, :cond_0

    .line 2380
    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    if-eqz p0, :cond_0

    .line 2381
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2382
    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2383
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 2384
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$loadChatParticipants$28(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 2379
    new-instance v8, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;

    move-object v0, v8

    move-object v1, p6

    move-object v2, p5

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onOwnerChaged$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 1467
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result p1

    .line 1468
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

.method private synthetic lambda$processDone$25(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2095
    iput-wide p1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    .line 2096
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2097
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sortAdmins$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 2

    .line 1329
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result v0

    .line 1330
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1336
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_2

    .line 1337
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

.method private synthetic lambda$sortUsers$29(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 10

    .line 2396
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2400
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2401
    check-cast p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2402
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 2403
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    const v2, 0xc350

    const/16 v3, -0x64

    if-lez v0, :cond_3

    .line 2406
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2407
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_2

    .line 2408
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_1

    add-int p2, p1, v2

    goto :goto_0

    .line 2411
    :cond_1
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 2419
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2420
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_5

    .line 2421
    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p3, :cond_4

    add-int/2addr p1, v2

    goto :goto_1

    .line 2424
    :cond_4
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :goto_1
    move v3, p1

    goto :goto_2

    :cond_5
    move v3, v1

    :cond_6
    :goto_2
    const/4 p1, -0x1

    const/4 p3, 0x1

    if-lez p2, :cond_9

    if-lez v3, :cond_9

    if-le p2, v3, :cond_7

    return p3

    :cond_7
    if-ge p2, v3, :cond_8

    return p1

    :cond_8
    return v1

    :cond_9
    if-gez p2, :cond_c

    if-gez v3, :cond_c

    if-le p2, v3, :cond_a

    return p3

    :cond_a
    if-ge p2, v3, :cond_b

    return p1

    :cond_b
    return v1

    :cond_c
    if-gez p2, :cond_d

    if-gtz v3, :cond_e

    :cond_d
    if-nez p2, :cond_f

    if-eqz v3, :cond_f

    :cond_e
    return p1

    :cond_f
    if-gez v3, :cond_10

    if-gtz p2, :cond_11

    :cond_10
    if-nez v3, :cond_12

    if-eqz p2, :cond_12

    :cond_11
    return p3

    :cond_12
    :goto_3
    return v1
.end method

.method private loadChatParticipants(II)V
    .locals 1

    .line 2141
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2144
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2145
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    const/4 v0, 0x1

    .line 2146
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(IIZ)V

    return-void
.end method

.method private loadChatParticipants(IIZ)V
    .locals 11

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 2197
    iput-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2198
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2199
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2200
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2201
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2202
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2203
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2204
    iget p1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne p1, v2, :cond_2

    .line 2205
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_a

    .line 2206
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_a

    .line 2207
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2208
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez p3, :cond_0

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz p3, :cond_1

    .line 2209
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {p3, v2, v3, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 2215
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_a

    .line 2216
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 2217
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_1
    if-ge v1, p3, :cond_a

    .line 2218
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2219
    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 2222
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->ignoredUsers:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_4

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_4

    goto/16 :goto_2

    .line 2225
    :cond_4
    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-ne v3, v2, :cond_6

    .line 2226
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2227
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2229
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

    .line 2230
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2234
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2235
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2238
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2239
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_8

    .line 2240
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2243
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2244
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2251
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz p1, :cond_b

    .line 2252
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2254
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 2255
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz p1, :cond_f

    .line 2256
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 2259
    :cond_c
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2260
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_d

    .line 2261
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2263
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_e

    .line 2264
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2266
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 2267
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2268
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2375
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2376
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    const/4 v2, 0x0

    .line 2377
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    new-instance v10, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda24;

    move-object v2, v10

    move-object v3, p2

    move v4, v1

    move-object v5, v0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda24;-><init>(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 2387
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

    .line 2150
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2154
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v1, :cond_0

    .line 2155
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2157
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 2159
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/16 v5, 0xc8

    if-eqz v1, :cond_2

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gt v1, v5, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_2

    .line 2160
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    .line 2162
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/4 v6, 0x0

    if-ne v1, v2, :cond_4

    .line 2163
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    if-nez v1, :cond_3

    .line 2164
    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2165
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2166
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2167
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2169
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    .line 2172
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    if-nez v1, :cond_5

    .line 2173
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2174
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2175
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2176
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2177
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    if-nez v1, :cond_6

    .line 2178
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2179
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    .line 2180
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2182
    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    :cond_7
    if-ne v1, v3, :cond_8

    .line 2187
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2189
    :cond_8
    :goto_0
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const-string v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 2190
    iput p1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 2191
    iput p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    return-object v0
.end method

.method private onOwnerChaged(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 14

    .line 1410
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

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move v0, v1

    move v2, v0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_9

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1418
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 1419
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1421
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 1422
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    goto :goto_2

    .line 1424
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1425
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 1427
    :goto_2
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    .line 1428
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v7, :cond_4

    .line 1429
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .line 1430
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1431
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1432
    invoke-virtual {v4, v8, v9, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1433
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 1435
    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v2, v3

    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v1

    .line 1440
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    .line 1441
    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    .line 1442
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v10, :cond_6

    .line 1443
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    .line 1444
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1445
    iput-wide v7, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1446
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->self:Z

    .line 1447
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    .line 1448
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    .line 1449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 1450
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1451
    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1454
    iget-boolean v11, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v11, :cond_5

    .line 1455
    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 1457
    :cond_5
    invoke-virtual {v4, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1459
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_7

    .line 1461
    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move v3, v6

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 1466
    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez v2, :cond_a

    .line 1479
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .line 1480
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1481
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1482
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1483
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V

    .line 1485
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 1487
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v0, :cond_b

    .line 1489
    invoke-interface {v0, p1}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_b
    return-void
.end method

.method private openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 20

    move-object/from16 v6, p0

    .line 1587
    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v10, v6, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v13, v6, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v18, v0

    const/16 v19, 0x0

    move-object v7, v5

    move-wide/from16 v8, p1

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p8

    move/from16 v17, p7

    invoke-direct/range {v7 .. v19}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1588
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

    .line 1612
    invoke-virtual {v6, v8, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p4

    const/4 v1, 0x1

    new-array v14, v1, [Z

    .line 1495
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v2, :cond_1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v17, v0

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v17, v1

    .line 1496
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

    .line 1514
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

    .line 1578
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private processDone()V
    .locals 7

    .line 2089
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2092
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

    .line 2093
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    new-instance v6, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda22;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 2102
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 2103
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2104
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->setDefaultBannedRole(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2105
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2107
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 2110
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_3

    .line 2111
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->getSecondsForIndex(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 2113
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->setChannelSlowMode(JI)V

    .line 2115
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private removeParticipant(J)V
    .locals 4

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1619
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1620
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v0, :cond_1

    .line 1622
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didKickParticipant(J)V

    .line 1624
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private removeParticipants(J)V
    .locals 7

    .line 1657
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1662
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 1663
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 1665
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 1666
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    goto :goto_1

    .line 1668
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1669
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 1671
    :goto_1
    invoke-virtual {v4, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    if-eqz v6, :cond_3

    .line 1673
    invoke-virtual {v4, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1674
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1676
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_2

    .line 1677
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    sub-int/2addr v4, v3

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    :cond_2
    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 1682
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    .line 1684
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    if-ne v0, v1, :cond_6

    .line 1685
    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->removeUserId(J)V

    :cond_6
    return-void
.end method

.method private setBannedRights(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1323
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    :cond_0
    return-void
.end method

.method private setSendMediaEnabled(Z)V
    .locals 2

    .line 3523
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3524
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3525
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3526
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3527
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3528
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3529
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3530
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3531
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/lit8 p1, p1, 0x1

    .line 3532
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 3533
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private showItemsAnimated(I)V
    .locals 4

    .line 1344
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

    .line 1348
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1349
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1350
    instance-of v3, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1356
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    .line 1361
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

    .line 1328
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

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

    .line 2393
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 2394
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatUsersActivity;I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateParticipantWithRights(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1694
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1696
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    .line 1698
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1700
    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    .line 1701
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v4, :cond_2

    .line 1702
    move-object p1, v3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1703
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1704
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p6, :cond_2

    .line 1706
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    :cond_2
    if-eqz p6, :cond_3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 1709
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v4, :cond_3

    .line 1711
    invoke-interface {v4, p4, p5, v3}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didAddParticipantToList(JLorg/telegram/tgnet/TLObject;)V

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateRows()V
    .locals 5

    .line 286
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

    .line 290
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    .line 291
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    .line 292
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    .line 293
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    .line 294
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 295
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    .line 296
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    .line 297
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    .line 298
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    .line 299
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    .line 300
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 301
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    .line 302
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 303
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    .line 304
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    .line 305
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    .line 306
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 307
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    .line 308
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    .line 309
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    .line 310
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    .line 311
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    .line 312
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    .line 313
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    .line 314
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    .line 315
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    .line 316
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    .line 317
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    .line 318
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    .line 319
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    .line 320
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    .line 321
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    .line 322
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    .line 323
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    .line 324
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    .line 325
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    .line 326
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    .line 327
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    .line 328
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    .line 329
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    .line 330
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingProgressRow:I

    .line 331
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    .line 332
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    .line 333
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    .line 334
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    .line 335
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    .line 336
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    .line 337
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    .line 338
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    .line 339
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    .line 340
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    const/4 v1, 0x0

    .line 342
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 343
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_13

    const/4 v2, 0x0

    add-int/2addr v2, v4

    .line 344
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    add-int/lit8 v3, v2, 0x1

    .line 345
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    add-int/lit8 v2, v3, 0x1

    .line 346
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    .line 347
    iget-boolean v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 348
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    add-int/lit8 v2, v3, 0x1

    .line 349
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    add-int/lit8 v3, v2, 0x1

    .line 350
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    add-int/lit8 v2, v3, 0x1

    .line 352
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGifsRow:I

    add-int/lit8 v3, v2, 0x1

    .line 353
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendGamesRow:I

    add-int/lit8 v2, v3, 0x1

    .line 354
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendInlineRow:I

    add-int/lit8 v3, v2, 0x1

    .line 356
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    add-int/lit8 v2, v3, 0x1

    .line 357
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    add-int/lit8 v3, v2, 0x1

    .line 358
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    add-int/lit8 v2, v3, 0x1

    .line 359
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    add-int/lit8 v3, v2, 0x1

    .line 360
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    add-int/lit8 v2, v3, 0x1

    .line 361
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    .line 363
    :cond_1
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    add-int/lit8 v2, v3, 0x1

    .line 364
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    add-int/lit8 v3, v2, 0x1

    .line 365
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    .line 366
    iget-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    .line 367
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    .line 370
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

    .line 371
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_3

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    add-int/lit16 v2, v2, -0x3e8

    if-lt v1, v2, :cond_4

    .line 373
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    add-int/lit8 v1, v2, 0x1

    .line 374
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    add-int/lit8 v2, v1, 0x1

    .line 375
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    add-int/lit8 v1, v2, 0x1

    .line 376
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    .line 380
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

    .line 381
    :cond_6
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_7

    .line 382
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 384
    :cond_7
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    add-int/lit8 v1, v2, 0x1

    .line 385
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    add-int/lit8 v2, v1, 0x1

    .line 386
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    .line 388
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 389
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_9

    .line 390
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 392
    :cond_9
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    .line 394
    :cond_a
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    if-ne v1, v0, :cond_b

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    if-eq v1, v0, :cond_c

    :cond_b
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    if-eq v1, v0, :cond_d

    .line 395
    :cond_c
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    .line 397
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v1

    if-le v1, v4, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_f

    .line 398
    :cond_e
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 401
    :cond_f
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v1, :cond_10

    if-nez v1, :cond_2e

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_2e

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    if-lez v0, :cond_2e

    .line 404
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto/16 :goto_5

    .line 408
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 409
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 410
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 411
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 413
    :cond_11
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    if-ne v1, v0, :cond_12

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    if-eq v1, v0, :cond_2e

    .line 414
    :cond_12
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    goto/16 :goto_5

    :cond_13
    if-nez v2, :cond_1b

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 419
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 420
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

    .line 421
    :cond_14
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    .line 424
    :cond_15
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v1, :cond_16

    goto :goto_0

    :cond_16
    if-nez v1, :cond_2e

    .line 442
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 443
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto/16 :goto_5

    .line 425
    :cond_17
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 426
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    .line 427
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 429
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 431
    :cond_18
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    if-eq v1, v0, :cond_1a

    .line 432
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    if-ne v1, v0, :cond_19

    .line 433
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    goto/16 :goto_5

    .line 435
    :cond_19
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    goto/16 :goto_5

    .line 439
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    goto/16 :goto_5

    :cond_1b
    if-ne v2, v4, :cond_23

    .line 446
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

    .line 447
    :cond_1c
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    .line 448
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 449
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    add-int/lit8 v0, v1, 0x1

    .line 450
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    goto :goto_1

    .line 452
    :cond_1d
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    .line 456
    :cond_1e
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 457
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 459
    :cond_1f
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_20

    goto :goto_2

    :cond_20
    if-nez v0, :cond_2e

    .line 467
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto/16 :goto_5

    .line 460
    :cond_21
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 461
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 462
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 463
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 465
    :cond_22
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    goto/16 :goto_5

    :cond_23
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2e

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-nez v0, :cond_24

    .line 472
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    add-int/lit8 v0, v2, 0x1

    .line 473
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    .line 476
    :cond_24
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 477
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 479
    :cond_25
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 480
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    .line 482
    :cond_26
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_27

    goto :goto_3

    :cond_27
    if-nez v0, :cond_2e

    .line 510
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_28

    .line 511
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    .line 513
    :cond_28
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto :goto_5

    .line 484
    :cond_29
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 485
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    .line 486
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 488
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    move v1, v4

    .line 491
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 492
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    .line 493
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 495
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    goto :goto_4

    :cond_2b
    move v4, v1

    .line 498
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v4, :cond_2c

    .line 500
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    .line 502
    :cond_2c
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 503
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 504
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 506
    :cond_2d
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    if-eqz v0, :cond_2e

    add-int/lit8 v1, v0, 0x1

    .line 507
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    :cond_2e
    :goto_5
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 1583
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    .line 536
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 537
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 538
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 539
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    const-string v6, "ChannelPermissions"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 541
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    const-string v6, "ChannelBlacklist"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    const-string v6, "ChannelAdministrators"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_7

    .line 545
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v1, :cond_4

    .line 546
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v1, :cond_3

    .line 547
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    const-string v6, "ChannelSubscribers"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 549
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

    .line 553
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAddAdmin:I

    const-string v6, "ChannelAddAdmin"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    .line 555
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelBlockUser:I

    const-string v6, "ChannelBlockUser"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAddException:I

    const-string v6, "ChannelAddException"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 561
    :cond_7
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatUsersActivity$1;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 573
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/16 v5, 0x8

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eq v1, v3, :cond_8

    if-eqz v1, :cond_8

    if-ne v1, v4, :cond_d

    .line 574
    :cond_8
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    .line 575
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 576
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

    .line 618
    iget v7, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v7, :cond_9

    .line 619
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 621
    :cond_9
    iget v6, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v6, v4, :cond_a

    .line 622
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$string;->ChannelSearchException:I

    const-string v8, "ChannelSearchException"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 624
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$string;->Search:I

    const-string v8, "Search"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 626
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_b

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_c

    .line 627
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 630
    :cond_c
    iget v6, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v6, v4, :cond_d

    .line 631
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

    .line 635
    :cond_d
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$3;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 642
    check-cast v1, Landroid/widget/FrameLayout;

    .line 644
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 645
    new-instance v6, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v7, 0x6

    .line 646
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 647
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 648
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    .line 649
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v6, v7, v8, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(III)V

    .line 650
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 652
    new-instance v6, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    const/16 v7, 0x11

    const/4 v8, -0x2

    .line 653
    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 658
    new-instance v6, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v6, p1, v4, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 659
    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v8, "NoResult"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v7, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v8, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 662
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 663
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 665
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 668
    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$4;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 685
    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$5;

    invoke-direct {v5, p0, p1, v2, v0}, Lorg/telegram/ui/ChatUsersActivity$5;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;IZ)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 694
    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatUsersActivity$6;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    const-wide/16 v7, 0x140

    .line 728
    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    const-wide/16 v7, 0x0

    .line 729
    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDelay(J)V

    .line 730
    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDelay(J)V

    .line 731
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 732
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 733
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 734
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 735
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 736
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 737
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_e

    goto :goto_2

    :cond_e
    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 738
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1273
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda30;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1279
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_f

    .line 1280
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$12;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1295
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

    .line 1296
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 1300
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1301
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1303
    iget-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-eqz p1, :cond_10

    .line 1304
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 1307
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 1897
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    .line 1898
    aget-object p2, p3, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 v0, 0x2

    .line 1899
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 1900
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1901
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 1902
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p1, :cond_2

    .line 1904
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getCurrentSlowmode()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    .line 1906
    :cond_2
    new-instance p1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3736
    new-instance v11, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    .line 3748
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

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3749
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3751
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v21

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3752
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3753
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3754
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3755
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3757
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3759
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3761
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v12

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v21, v24

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3762
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v12

    const-string v14, "textView"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v29

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3764
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3766
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v29

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3768
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3769
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v4, v12

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3771
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v29

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3772
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v12

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3774
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v24

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move/from16 v28, v29

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3775
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3776
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v4, v12

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_switch2Track:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3777
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3779
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v12

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const/16 v22, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3780
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v2, v5, v12

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v15

    move-object v9, v11

    move/from16 v10, v30

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3781
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v2, v5, v12

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3783
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3784
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    const/16 v33, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v39, v23

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3785
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3786
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move/from16 v39, v5

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v12

    const-string v6, "textPaint"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v23, v5

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3788
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v12

    const-string v6, "progressPaint"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3789
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v4, v12

    const-string v6, "leftImageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v19

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3791
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v12

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3793
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3794
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3796
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/StickerEmptyView;

    aput-object v5, v4, v12

    const-string v5, "title"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const/16 v22, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3797
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/StickerEmptyView;

    aput-object v5, v4, v12

    const-string v5, "subtitle"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3798
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v27, v29

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v23, v30

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3801
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v12

    sget-object v36, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v33, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3802
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3803
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3804
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3805
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3806
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3807
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3808
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasSelectType()Z
    .locals 1

    .line 1985
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

    .line 1913
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard()Z

    move-result v0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2476
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 520
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 521
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 522
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 528
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 529
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2467
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2468
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2469
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2455
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2456
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2457
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 2458
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2460
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_1

    .line 2461
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2495
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 2497
    iget-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-eqz p1, :cond_1

    .line 2498
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2499
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 2500
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;
    .locals 3

    .line 3543
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/ChatUsersActivity$1;)V

    .line 3544
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldRowCount:I

    .line 3546
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotStartRow:I

    .line 3547
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotEndRow:I

    .line 3548
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9500(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3549
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9500(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3551
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsEndRow:I

    .line 3552
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsStartRow:I

    .line 3553
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9600(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3554
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9600(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3556
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsStartRow:I

    .line 3557
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsEndRow:I

    .line 3558
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9700(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3559
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->access$9700(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3561
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    return-object v0
.end method

.method public setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V
    .locals 0

    .line 1917
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 2119
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 2121
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getCurrentSlowmode()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    :cond_0
    return-void
.end method

.method public updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V
    .locals 4

    .line 3566
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-nez v0, :cond_0

    .line 3567
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    return-void

    .line 3570
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 3571
    iget-object v0, p1, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 3572
    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3573
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

    move v2, v1

    .line 3576
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3577
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3579
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

    .line 3584
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
