.class public Lorg/telegram/ui/Adapters/MentionsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MentionsAdapter.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;,
        Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    }
.end annotation


# instance fields
.field private botInfo:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private botsCount:I

.field private cancelDelayRunnable:Ljava/lang/Runnable;

.field private channelLastReqId:I

.field private channelReqId:I

.field private contextMedia:Z

.field private contextQueryReqid:I

.field private contextQueryRunnable:Ljava/lang/Runnable;

.field private contextUsernameReqid:I

.field private currentAccount:I

.field private delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

.field private dialog_id:J

.field private foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private inlineMediaEnabled:Z

.field private isDarkTheme:Z

.field private isReversed:Z

.field private isSearchingMentions:Z

.field private lastData:[Ljava/lang/Object;

.field private lastForSearch:Z

.field private lastItemCount:I

.field private lastKnownLocation:Landroid/location/Location;

.field private lastPosition:I

.field private lastReqId:I

.field private lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private lastSticker:Ljava/lang/String;

.field private lastText:Ljava/lang/String;

.field private lastUsernameOnly:Z

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private mContext:Landroid/content/Context;

.field private mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private needBotContext:Z

.field private needUsernames:Z

.field private nextQueryOffset:Ljava/lang/String;

.field private noUserName:Z

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private resultLength:I

.field private resultStartPosition:I

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchGlobalRunnable:Ljava/lang/Runnable;

.field private searchResultBotContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

.field private searchResultCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultCommandsHelp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultCommandsUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultHashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaDataController$KeywordResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultUsernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultUsernamesMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchingContextQuery:Ljava/lang/String;

.field private searchingContextUsername:Ljava/lang/String;

.field private stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;",
            ">;"
        }
    .end annotation
.end field

.field private stickersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private stickersToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadMessageId:I

.field private visibleByStickersSearch:Z


# direct methods
.method public static synthetic $r8$lambda$7VOW9r6Q7UQLRFa7lqtsaj0SP0s(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchForContextBotResults$6(Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LPOGkJ2nuzPoh1-f5SA8dbaQtbo(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$processFoundUser$3([ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PbCVlNEfcvLCEBt7ee8dK46cZ4k(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchServerStickers$0(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PgkoIECCC2WIQsWcurN_UBMmU4o(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchForContextBotResults$5(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VNzCbsjAmFhXbHgPhru1_kkQQrI(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchServerStickers$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOKo8wZ6czGtXVRDFzlUPA3U2KA(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$processFoundUser$2([ZLorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$d4dl4gkfAu-9v-PITGgHYSG5VBQ(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/ui/Cells/ContextLinkCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$onCreateViewHolder$9(Lorg/telegram/ui/Cells/ContextLinkCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNDAm_YfK9yBjS93edRWWrG_HHU(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchUsernameOrHashtag$8(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h_np7JTtaSu6BbfQMTzuEncMOUw(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$searchUsernameOrHashtag$7(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wKd-byuvCbsrPFez-MNQc4NSt0Q(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->lambda$processFoundUser$4([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJILorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 173
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 78
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    .line 105
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    .line 108
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    .line 152
    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$2;

    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    const/4 v1, 0x0

    .line 1334
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    const/4 v1, -0x1

    .line 1375
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    .line 174
    iput-object p7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 175
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    .line 176
    iput-object p6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    .line 177
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    .line 178
    iput-wide p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    .line 179
    iput p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:I

    .line 180
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 181
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    if-nez p2, :cond_0

    .line 195
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 196
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I
    .locals 0

    .line 67
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    return p0
.end method

.method static synthetic access$1704(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 1

    .line 67
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I
    .locals 0

    .line 67
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isSearchingMentions:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    return p0
.end method

.method private addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 221
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 224
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 229
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz p1, :cond_4

    .line 232
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_4
    return-void
.end method

.method private addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 241
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 246
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 249
    :cond_2
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    .line 250
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 251
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v8, :cond_3

    .line 252
    iget-object p2, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 256
    :cond_4
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 258
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 260
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v6, v3, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-void
.end method

.method private checkLocationPermissionsOrStart()V
    .locals 3

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkStickerFilesExistAndDownload()Z
    .locals 11

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x6

    .line 270
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 272
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 273
    iget-object v3, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 274
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-eqz v4, :cond_2

    .line 275
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const-string v5, "webp"

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 277
    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v4, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v7, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v8, "webp"

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private clearStickers()V
    .locals 3

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 389
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 390
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 391
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v0, :cond_0

    .line 392
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_1
    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1648
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1649
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z
    .locals 5

    .line 286
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 287
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 288
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 289
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private itemsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 366
    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    if-eqz v1, :cond_1

    instance-of v1, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne v1, v2, :cond_1

    return v0

    .line 369
    :cond_1
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_2

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object v3, p2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    return v0

    .line 372
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    move-object v3, p2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    return v0

    .line 375
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 378
    :cond_4
    instance-of v1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    if-eqz v1, :cond_5

    check-cast p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->keyword:Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->keyword:Ljava/lang/String;

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 380
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$9(Lorg/telegram/ui/Cells/ContextLinkCell;)V
    .locals 1

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ContextLinkCell;->getResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V

    return-void
.end method

.method private synthetic lambda$processFoundUser$2([ZLorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 520
    aput-boolean p4, p1, p3

    if-eqz p2, :cond_0

    .line 522
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 523
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inlinegeo_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processFoundUser$3([ZLandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 528
    aput-boolean p3, p1, p2

    .line 529
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method private synthetic lambda$processFoundUser$4([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 532
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 533
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$5(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 721
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 723
    invoke-direct {p0, v0, p4, p1, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_2

    .line 725
    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 727
    :cond_2
    :goto_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-eqz p1, :cond_f

    .line 728
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-nez p2, :cond_3

    .line 729
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p1, :cond_3

    .line 730
    invoke-virtual {p6, p7, p3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 732
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    .line 733
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_4

    .line 734
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    :cond_4
    const/4 p1, 0x0

    .line 736
    :goto_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x1

    if-ge p1, p2, :cond_6

    .line 737
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 738
    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez p6, :cond_5

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez p6, :cond_5

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string p7, "game"

    invoke-virtual {p7, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_5

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez p6, :cond_5

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz p6, :cond_5

    .line 739
    iget-object p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    .line 742
    :cond_5
    iget-wide p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    add-int/2addr p1, p4

    goto :goto_1

    .line 745
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 750
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 751
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, ""

    .line 752
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    :cond_8
    const/4 p1, 0x1

    goto :goto_3

    .line 746
    :cond_9
    :goto_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 747
    iget-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->gallery:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    const/4 p1, 0x0

    .line 755
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p5, 0x0

    if-eqz p2, :cond_a

    .line 756
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 757
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 759
    :cond_a
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 760
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 761
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 762
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 763
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 764
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 765
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 766
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 767
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_c

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz p5, :cond_b

    goto :goto_4

    :cond_b
    const/4 p5, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 p5, 0x1

    :goto_5
    invoke-interface {p2, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    if-eqz p1, :cond_e

    .line 769
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    .line 770
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    sub-int/2addr p1, p4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_6

    .line 773
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_f
    :goto_6
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$6(Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 717
    new-instance v9, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda4;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p7

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchServerStickers$0(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez v1, :cond_0

    goto :goto_2

    .line 308
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 310
    :goto_0
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sticker_search_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 312
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 313
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 314
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 315
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    :cond_4
    if-eq v1, p1, :cond_5

    .line 318
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$searchServerStickers$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 302
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$7(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1191
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1192
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$8(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1312
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1313
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1314
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1315
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1316
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1317
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1318
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1319
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1320
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1321
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void
.end method

.method private onLocationUnavailable()V
    .locals 4

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    const-wide v1, -0x3f70c00000000000L    # -1000.0

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    const/4 v0, 0x1

    .line 660
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    const/4 v0, 0x0

    .line 494
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 496
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 497
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 501
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 502
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_0

    .line 504
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 510
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_3

    .line 511
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inlinegeo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 515
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 516
    sget v2, Lorg/telegram/messenger/R$string;->ShareYouLocationTitle:I

    const-string v3, "ShareYouLocationTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 517
    sget v2, Lorg/telegram/messenger/R$string;->ShareYouLocationInline:I

    const-string v3, "ShareYouLocationInline"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-array v2, v1, [Z

    .line 519
    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    const-string v4, "OK"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 527
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 537
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 541
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 542
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 544
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_4

    .line 545
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    goto :goto_1

    .line 547
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_5

    .line 548
    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 550
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 559
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 564
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 565
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 566
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 568
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 569
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    if-eqz v0, :cond_5

    .line 570
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 571
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 573
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_6

    .line 574
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 575
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 577
    :cond_6
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 578
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 579
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 580
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 582
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_7

    .line 584
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_7
    if-eqz p1, :cond_e

    .line 586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    if-nez p2, :cond_b

    .line 591
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p1, :cond_9

    .line 592
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 593
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 595
    :cond_9
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_a

    .line 597
    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_a
    return-void

    .line 601
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_d

    .line 602
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    .line 603
    invoke-interface {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    goto :goto_0

    :cond_c
    const-string v0, "gif"

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 605
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 609
    :cond_d
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    .line 610
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    .line 611
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 612
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x190

    .line 652
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_e
    :goto_1
    return-void
.end method

.method private searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 698
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    .line 699
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v2, v12}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 700
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 702
    :cond_0
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_2

    .line 703
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_1

    .line 704
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz v10, :cond_9

    if-nez v9, :cond_3

    goto/16 :goto_3

    .line 712
    :cond_3
    iget-boolean v0, v9, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_4

    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_4

    return-void

    .line 715
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v9, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    const-wide v13, -0x3f70c00000000000L    # -1000.0

    if-eqz v1, :cond_5

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double v3, v1, v13

    if-eqz v3, :cond_5

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 716
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    .line 717
    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v12, v6

    move-object v6, v7

    move-object v13, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 779
    invoke-virtual {v13, v15, v12}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto/16 :goto_2

    .line 781
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 782
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 783
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 784
    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 785
    iget-boolean v1, v9, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v1, :cond_7

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide v3, -0x3f70c00000000000L    # -1000.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_7

    .line 786
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    .line 787
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 788
    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 789
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 791
    :cond_7
    iget-wide v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 792
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 794
    :cond_8
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 796
    :goto_1
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v12, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    :goto_2
    return-void

    :cond_9
    :goto_3
    const/4 v0, 0x0

    .line 709
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-void
.end method

.method private searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 299
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    .line 300
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 301
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    .line 302
    iget p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    return-void
.end method

.method private showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;Z)V"
        }
    .end annotation

    .line 1349
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1350
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1351
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1352
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1353
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 1355
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1356
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 1358
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1359
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 2

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 471
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 473
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 202
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_2

    .line 203
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 204
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/String;

    .line 205
    iget-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-interface {p2, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_2
    return-void
.end method

.method public doSomeStickersAction()V
    .locals 7

    .line 1633
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-nez v0, :cond_0

    .line 1635
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    iget v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$8;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;IJI)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    .line 1641
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    .line 1643
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->doSomeAction()V

    :cond_1
    return-void
.end method

.method public getBotCaption()Ljava/lang/String;
    .locals 2

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    return-object v0

    .line 684
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Search GIFs"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-object v0
.end method

.method public getContextBotId()J
    .locals 2

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getContextBotName()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getContextBotUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 1466
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object v1, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_0
    return-object v1

    .line 1467
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1468
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :cond_3
    if-ltz p1, :cond_5

    .line 1475
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    .line 1478
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v1

    .line 1479
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    if-ltz p1, :cond_8

    .line 1480
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_7

    goto :goto_1

    .line 1483
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v1

    .line 1484
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_b

    .line 1485
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    goto :goto_2

    .line 1488
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_2
    return-object v1

    .line 1489
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    if-ltz p1, :cond_e

    .line 1490
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_3

    .line 1493
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_3
    return-object v1

    .line 1494
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    if-ltz p1, :cond_15

    .line 1495
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    goto :goto_5

    .line 1498
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v1, :cond_14

    .line 1499
    :cond_11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1500
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_4

    :cond_12
    const-string p1, ""

    :goto_4
    aput-object p1, v0, v2

    const-string p1, "%s@%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    new-array v0, v2, [Ljava/lang/Object;

    .line 1502
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1505
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_5
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 1379
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getItemCountInternal()I
    .locals 4

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_0

    return v1

    .line 1390
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1392
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1393
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1394
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1395
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1396
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1397
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1398
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1399
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1400
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1401
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_7
    return v2
.end method

.method public getItemParent(I)Ljava/lang/Object;
    .locals 1

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemPosition(I)I
    .locals 1

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 1437
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 1439
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 1440
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getLastItemCount()I
    .locals 1

    .line 1383
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getResultLength()I
    .locals 1

    .line 1368
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    return v0
.end method

.method public getResultStartPosition()I
    .locals 1

    .line 1364
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    return v0
.end method

.method public getSearchResultBotContext()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBannedInline()Z
    .locals 1

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBotCommands()Z
    .locals 1

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBotContext()Z
    .locals 1

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1536
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLongClickEnabled()Z
    .locals 1

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMediaLayout()Z
    .locals 1

    .line 1531
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStickers()Z
    .locals 1

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 9

    .line 327
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_3

    .line 337
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 339
    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 340
    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_2

    .line 342
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v5, :cond_5

    if-ltz v1, :cond_3

    .line 345
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v1, v8, :cond_3

    if-ge v1, v2, :cond_3

    aget-object v7, v7, v1

    aget-object v8, v6, v1

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->itemsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 346
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    sub-int v1, v0, v5

    .line 352
    invoke-virtual {p0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    sub-int v1, v2, v5

    .line 353
    invoke-virtual {p0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    if-eqz v4, :cond_6

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v1, :cond_6

    .line 355
    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 357
    :cond_6
    iput-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    goto :goto_5

    .line 328
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_8

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 331
    :cond_8
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 332
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    .line 333
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 334
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1571
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1573
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerCell;

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 1575
    iget-object v0, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/StickerCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 1576
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerCell;->setClearsInputField(Z)V

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 1578
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 1579
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 1581
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v0, :cond_1

    .line 1582
    sget p2, Lorg/telegram/messenger/R$string;->GlobalAttachInlineRestricted:I

    const-string v0, "GlobalAttachInlineRestricted"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1583
    :cond_1
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1584
    sget p2, Lorg/telegram/messenger/R$string;->AttachInlineRestrictedForever:I

    const-string v0, "AttachInlineRestrictedForever"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1586
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->AttachInlineRestricted:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v4, p2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "AttachInlineRestricted"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1589
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 1591
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    if-eqz v0, :cond_10

    .line 1593
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/BotSwitchCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    if-eqz v0, :cond_6

    add-int/lit8 p2, p2, -0x1

    .line 1599
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-eq p2, p1, :cond_7

    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    :goto_1
    if-eqz v0, :cond_8

    if-nez p2, :cond_8

    const/4 v9, 0x1

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    const-string p2, "gif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZZ)V

    goto/16 :goto_5

    .line 1602
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1603
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    .line 1604
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_a

    .line 1605
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/MentionCell;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/MentionCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_4

    .line 1606
    :cond_a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_f

    .line 1607
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/MentionCell;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/MentionCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_4

    .line 1609
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 1610
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 1611
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1612
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setEmojiSuggestion(Lorg/telegram/messenger/MediaDataController$KeywordResult;)V

    goto :goto_4

    .line 1613
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 1614
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_3

    :cond_e
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {v1, v0, v2, p2}, Lorg/telegram/ui/Cells/MentionCell;->setBotCommand(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1616
    :cond_f
    :goto_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/MentionCell;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/MentionCell;->setDivider(Z)V

    :cond_10
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 1563
    new-instance p1, Lorg/telegram/ui/Cells/StickerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/StickerCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1555
    :cond_0
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 1556
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 1557
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "windowBackgroundWhiteGrayText2"

    .line 1558
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object p1, p2

    goto :goto_0

    .line 1552
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/BotSwitchCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1548
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 1549
    new-instance p2, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setDelegate(Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;)V

    goto :goto_0

    .line 1544
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/MentionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/MentionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1545
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setIsDarkTheme(Z)V

    .line 1566
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 5

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 405
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 406
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 408
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 409
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 410
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 412
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_3

    .line 413
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 414
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 416
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 417
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 418
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 419
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 420
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 421
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    if-nez v0, :cond_4

    .line 422
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 423
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_4
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 1622
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_1

    .line 1623
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 1624
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    goto :goto_0

    .line 1626
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public searchForContextBotForNextOffset()V
    .locals 4

    .line 691
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 694
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const-string v5, ""

    if-nez v0, :cond_0

    move-object v6, v5

    goto :goto_0

    .line 801
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 802
    :goto_0
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 803
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 804
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 806
    :cond_1
    iget v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_2

    .line 807
    iget v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    iget v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    invoke-virtual {v7, v12, v11}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 808
    iput v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    .line 810
    :cond_2
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_3

    .line 811
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 812
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    .line 814
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    iget v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget v12, v12, Lorg/telegram/messenger/MessagesController;->maxMessageLength:I

    if-le v7, v12, :cond_4

    goto/16 :goto_34

    .line 822
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    add-int/lit8 v7, v1, -0x1

    goto :goto_1

    :cond_5
    move v7, v1

    .line 825
    :goto_1
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 826
    iput-boolean v3, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    .line 827
    iput-boolean v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    .line 828
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_6

    .line 831
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xe

    if-gt v13, v14, :cond_6

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_b

    .line 835
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move-object v11, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_a

    .line 837
    invoke-interface {v11, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    add-int/lit8 v14, v15, -0x1

    if-ge v9, v14, :cond_7

    move-object/from16 v17, v5

    add-int/lit8 v5, v9, 0x1

    .line 838
    invoke-interface {v11, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_7
    move-object/from16 v17, v5

    const/4 v5, 0x0

    :goto_4
    if-ge v9, v14, :cond_8

    const v14, 0xd83c

    if-ne v10, v14, :cond_8

    const v14, 0xdffb

    if-lt v5, v14, :cond_8

    const v14, 0xdfff

    if-gt v5, v14, :cond_8

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 840
    invoke-interface {v11, v5, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v10, v5

    add-int/lit8 v5, v9, 0x2

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v11, v5, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    add-int/lit8 v15, v15, -0x2

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_8
    const v5, 0xfe0f

    if-ne v10, v5, :cond_9

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 844
    invoke-interface {v11, v5, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v10, v5

    add-int/lit8 v5, v9, 0x1

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v11, v5, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v10, v14

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v14, 0x1

    :goto_6
    add-int/2addr v9, v14

    move-object/from16 v5, v17

    const/4 v10, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v17, v5

    .line 849
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    move-object v5, v6

    goto :goto_7

    :cond_b
    move-object/from16 v17, v5

    :goto_7
    if-eqz v13, :cond_d

    .line 851
    invoke-static {v5}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_c
    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_10

    .line 852
    instance-of v10, v0, Landroid/text/Spanned;

    if-eqz v10, :cond_10

    .line 853
    move-object v9, v0

    check-cast v9, Landroid/text/Spanned;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_f

    .line 854
    array-length v0, v0

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v0, 0x1

    :goto_a
    move v9, v0

    :cond_10
    if-eqz v9, :cond_23

    .line 857
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 858
    :cond_11
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const/4 v15, 0x2

    if-eq v0, v15, :cond_21

    if-nez v9, :cond_12

    goto/16 :goto_13

    :cond_12
    const/4 v9, 0x0

    .line 867
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 868
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 870
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v0, :cond_13

    .line 871
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    const/4 v15, 0x1

    invoke-virtual {v0, v9, v15}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 872
    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    .line 874
    :goto_b
    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/messenger/MessagesController;->suggestStickersApiOnly:Z

    if-nez v9, :cond_1b

    .line 878
    iget v15, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v15

    invoke-virtual {v15, v0}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 879
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v11, 0x14

    .line 881
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_c
    if-ge v13, v11, :cond_16

    .line 882
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    .line 883
    iget-object v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v10, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    const-string v14, "recent"

    .line 884
    invoke-direct {v8, v10, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    add-int/lit8 v10, v17, 0x1

    const/4 v14, 0x5

    if-lt v10, v14, :cond_14

    goto :goto_d

    :cond_14
    move/from16 v17, v10

    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 891
    :cond_16
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v10, :cond_18

    .line 892
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    .line 893
    iget-object v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v13, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    const-string v14, "fav"

    .line 894
    invoke-direct {v8, v13, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 898
    :cond_18
    iget v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v10

    if-eqz v10, :cond_19

    .line 899
    iget-object v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_1a

    .line 900
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1a

    const/4 v11, 0x0

    .line 901
    invoke-direct {v8, v10, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 903
    :cond_1a
    iget-object v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v10, :cond_1b

    .line 904
    new-instance v11, Lorg/telegram/ui/Adapters/MentionsAdapter$5;

    invoke-direct {v11, v8, v0, v15}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 943
    :cond_1b
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-eqz v0, :cond_1c

    if-eqz v9, :cond_1d

    .line 944
    :cond_1c
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_1d
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 948
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-nez v0, :cond_1e

    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x5

    if-ge v0, v5, :cond_1e

    .line 950
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 951
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    goto :goto_10

    .line 953
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 954
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 955
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v5, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    const/4 v0, 0x1

    .line 956
    iput-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 958
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_11

    .line 959
    :cond_1f
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v0, :cond_20

    .line 960
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 961
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    goto :goto_12

    :cond_20
    :goto_11
    const/4 v5, 0x0

    :goto_12
    const/4 v0, 0x4

    goto/16 :goto_18

    :cond_21
    :goto_13
    const/4 v5, 0x0

    .line 860
    iget-boolean v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 861
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 862
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_22
    return-void

    :cond_23
    const/4 v5, 0x0

    if-nez v3, :cond_2c

    .line 963
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v0, :cond_2c

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-ne v0, v5, :cond_2c

    const/16 v0, 0x20

    .line 964
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 965
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v5, :cond_24

    const/4 v9, 0x1

    .line 969
    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v5, v9

    .line 970
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v0

    const/4 v0, 0x1

    goto :goto_14

    :cond_24
    add-int/lit8 v5, v0, -0x1

    .line 971
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x74

    if-ne v5, v9, :cond_25

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x6f

    if-ne v5, v9, :cond_25

    const/4 v5, 0x3

    sub-int/2addr v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x62

    if-ne v0, v5, :cond_25

    const/4 v0, 0x1

    .line 972
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v17

    goto :goto_14

    :cond_25
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 975
    invoke-direct {v8, v5, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_14
    if-eqz v5, :cond_2a

    .line 977
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v0, :cond_2a

    const/4 v0, 0x1

    .line 978
    :goto_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_2b

    .line 979
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_26

    const/16 v11, 0x39

    if-le v10, v11, :cond_29

    :cond_26
    const/16 v11, 0x61

    if-lt v10, v11, :cond_27

    const/16 v11, 0x7a

    if-le v10, v11, :cond_29

    :cond_27
    const/16 v11, 0x41

    if-lt v10, v11, :cond_28

    const/16 v11, 0x5a

    if-le v10, v11, :cond_29

    :cond_28
    const/16 v11, 0x5f

    if-eq v10, v11, :cond_29

    goto :goto_16

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2a
    :goto_16
    move-object/from16 v5, v17

    .line 988
    :cond_2b
    invoke-direct {v8, v5, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    const/4 v0, 0x0

    .line 990
    invoke-direct {v8, v0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    const/4 v0, -0x1

    .line 992
    :goto_18
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_2d

    return-void

    .line 995
    :cond_2d
    iget v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    if-eqz v3, :cond_2e

    const/4 v5, 0x1

    .line 998
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 999
    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1000
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, -0x1

    const/4 v5, 0x0

    :goto_19
    const/4 v7, -0x1

    :goto_1a
    const/4 v10, 0x0

    goto/16 :goto_22

    :cond_2e
    :goto_1b
    if-ltz v7, :cond_3b

    .line 1004
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v7, v5, :cond_2f

    const/4 v10, 0x0

    const/16 v11, 0x40

    goto/16 :goto_21

    .line 1007
    :cond_2f
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x3a

    if-eqz v7, :cond_31

    add-int/lit8 v11, v7, -0x1

    .line 1008
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_31

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0xa

    if-eq v11, v13, :cond_31

    if-ne v5, v10, :cond_30

    goto :goto_1c

    :cond_30
    const/4 v10, 0x0

    const/16 v11, 0x40

    goto/16 :goto_20

    :cond_31
    :goto_1c
    const/16 v11, 0x40

    if-ne v5, v11, :cond_35

    .line 1010
    iget-boolean v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    if-nez v10, :cond_33

    iget-boolean v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v10, :cond_32

    if-nez v7, :cond_32

    goto :goto_1d

    :cond_32
    const/4 v10, 0x0

    goto/16 :goto_20

    .line 1011
    :cond_33
    :goto_1d
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_34

    if-eqz v7, :cond_34

    .line 1012
    iput-object v6, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1013
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1014
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    .line 1015
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 1020
    :cond_34
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1021
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v13, 0x1

    add-int/2addr v0, v13

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, -0x1

    const/4 v5, 0x0

    goto :goto_1a

    :cond_35
    const/4 v13, 0x1

    const/16 v14, 0x23

    if-ne v5, v14, :cond_37

    .line 1025
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1027
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1028
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v13

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x0

    .line 1029
    invoke-virtual {v12, v0, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 1032
    :cond_36
    iput-object v6, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1033
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1034
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-void

    :cond_37
    if-nez v7, :cond_38

    .line 1038
    iget-object v13, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    if-eqz v13, :cond_38

    const/16 v13, 0x2f

    if-ne v5, v13, :cond_38

    .line 1040
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1041
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, -0x1

    const/4 v5, 0x2

    goto/16 :goto_19

    :cond_38
    if-ne v5, v10, :cond_32

    .line 1043
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_32

    const/4 v10, 0x0

    .line 1044
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const-string v10, " !\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~\n"

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_39

    const/4 v10, 0x1

    goto :goto_1e

    :cond_39
    const/4 v10, 0x0

    :goto_1e
    if-eqz v10, :cond_3a

    .line 1045
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v13, 0x1

    if-le v10, v13, :cond_32

    goto :goto_1f

    :cond_3a
    const/4 v13, 0x1

    .line 1047
    :goto_1f
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1048
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v13

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, -0x1

    const/4 v5, 0x3

    goto/16 :goto_19

    .line 1053
    :goto_20
    invoke-virtual {v12, v10, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_21
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1b

    :cond_3b
    const/4 v10, 0x0

    move v5, v0

    const/4 v0, -0x1

    const/4 v7, -0x1

    :goto_22
    if-ne v5, v0, :cond_3c

    .line 1057
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    :cond_3c
    if-nez v5, :cond_57

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_23
    const/16 v1, 0x64

    .line 1062
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v5, v1, :cond_3e

    .line 1063
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v1, v10, v13

    if-lez v1, :cond_3d

    .line 1064
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1065
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 1068
    :cond_3e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x20

    .line 1069
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_24

    :cond_3f
    const/4 v1, 0x0

    .line 1070
    :goto_24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1072
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1073
    iget v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    if-nez v3, :cond_44

    .line 1074
    iget-boolean v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v12, :cond_44

    if-nez v7, :cond_44

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_44

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 1076
    :goto_25
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_44

    .line 1077
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v13, v13, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    if-nez v13, :cond_40

    goto :goto_26

    .line 1081
    :cond_40
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    .line 1082
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_42

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_41

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_42

    .line 1083
    :cond_41
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v14, v15, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1085
    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v14, v15, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    :cond_42
    const/4 v13, 0x5

    if-ne v12, v13, :cond_43

    goto :goto_27

    :cond_43
    :goto_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1095
    :cond_44
    :goto_27
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_45

    .line 1096
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1097
    iget-object v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChatActivity;->getThreadId()I

    move-result v11

    goto :goto_29

    .line 1098
    :cond_45
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v7, :cond_46

    .line 1099
    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    goto :goto_28

    :cond_46
    const/4 v7, 0x0

    :goto_28
    const/4 v11, 0x0

    :goto_29
    if-eqz v7, :cond_54

    .line 1105
    iget-object v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v12, :cond_54

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v12, :cond_54

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    if-eqz v12, :cond_47

    iget-boolean v12, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v12, :cond_54

    :cond_47
    if-eqz v4, :cond_48

    const/16 v16, -0x1

    goto :goto_2a

    :cond_48
    const/16 v16, 0x0

    :goto_2a
    move/from16 v4, v16

    .line 1106
    :goto_2b
    iget-object v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_54

    const/4 v12, -0x1

    if-ne v4, v12, :cond_4a

    .line 1113
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_49

    .line 1114
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    .line 1117
    :cond_49
    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1119
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    .line 1121
    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v12, v12

    move-object/from16 p1, v2

    move-wide v2, v12

    move-object v13, v15

    const/4 v15, 0x0

    move-object v12, v7

    goto :goto_2c

    .line 1123
    :cond_4a
    iget-object v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1124
    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    if-eqz v12, :cond_52

    if-nez v3, :cond_4b

    .line 1125
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-nez v13, :cond_52

    :cond_4b
    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v13, v14}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v13

    if-ltz v13, :cond_4c

    goto :goto_2d

    .line 1128
    :cond_4c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4d

    .line 1129
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v13, :cond_4d

    .line 1130
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1134
    :cond_4d
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1135
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1136
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v2

    .line 1138
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 v19, v15

    move-object v15, v14

    move-object/from16 v14, v19

    .line 1140
    :goto_2c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4e

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_51

    .line 1141
    :cond_4e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4f

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_51

    .line 1142
    :cond_4f
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_50

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_51

    :cond_50
    if-eqz v1, :cond_53

    .line 1143
    invoke-static {v13, v15}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 1144
    :cond_51
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    invoke-virtual {v10, v2, v3, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2e

    :cond_52
    :goto_2d
    move-object/from16 p1, v2

    :cond_53
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p4

    goto/16 :goto_2b

    .line 1149
    :cond_54
    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$6;

    invoke-direct {v1, v8, v10, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 1182
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1183
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1184
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1185
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1186
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1187
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v7, :cond_56

    .line 1188
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_56

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_56

    .line 1189
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_55

    .line 1190
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8, v6, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2f

    :cond_55
    const/4 v0, 0x1

    .line 1195
    invoke-direct {v8, v6, v10, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    .line 1198
    :goto_2f
    new-instance v12, Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v5

    move v4, v11

    move-object v5, v6

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter$7;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;ILjava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/messenger/MessagesController;)V

    iput-object v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-static {v12, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_33

    :cond_56
    const/4 v0, 0x1

    .line 1257
    invoke-direct {v8, v6, v10, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    goto/16 :goto_33

    :cond_57
    const/4 v0, 0x1

    if-ne v5, v0, :cond_5a

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1262
    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v10, 0x0

    .line 1263
    :goto_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_59

    .line 1264
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    if-eqz v3, :cond_58

    .line 1265
    iget-object v4, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    if-eqz v4, :cond_58

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1266
    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    .line 1269
    :cond_59
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1270
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1271
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1272
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1273
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1274
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1275
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1276
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1278
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_33

    :cond_5a
    const/4 v0, 0x2

    if-ne v5, v0, :cond_5e

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 1284
    :goto_31
    iget-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v5, v4, :cond_5d

    .line 1285
    iget-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInfo;

    const/4 v6, 0x0

    .line 1286
    :goto_32
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5c

    .line 1287
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    if-eqz v7, :cond_5b

    .line 1288
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    if-eqz v10, :cond_5b

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 1289
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_5d
    const/4 v4, 0x0

    .line 1295
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1296
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1297
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1298
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1299
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1300
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1301
    iput-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1302
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1304
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto :goto_33

    :cond_5e
    const/4 v0, 0x3

    if-ne v5, v0, :cond_60

    .line 1306
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1307
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1308
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1310
    :cond_5f
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    .line 1311
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    goto :goto_33

    :cond_60
    const/4 v0, 0x4

    if-ne v5, v0, :cond_61

    const/4 v0, 0x0

    .line 1324
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1325
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1326
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1327
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1328
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1329
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1330
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    :cond_61
    :goto_33
    return-void

    :cond_62
    :goto_34
    move-object v0, v9

    .line 815
    invoke-direct {v8, v0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 817
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 818
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->clearStickers()V

    return-void
.end method

.method public setBotInfo(Landroidx/collection/LongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;)V"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setBotsCount(I)V
    .locals 0

    .line 465
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    .line 432
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    .line 433
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 434
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 437
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 438
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 440
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 447
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 448
    iget v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    :cond_1
    return-void
.end method

.method public setIsReversed(Z)V
    .locals 1

    .line 1336
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    if-eq v0, p1, :cond_1

    .line 1337
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    .line 1338
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 1340
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 1343
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public setNeedBotContext(Z)V
    .locals 0

    .line 457
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    return-void
.end method

.method public setNeedUsernames(Z)V
    .locals 0

    .line 453
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    return-void
.end method

.method public setParentFragment(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method public setSearchingMentions(Z)V
    .locals 0

    .line 678
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isSearchingMentions:Z

    return-void
.end method
