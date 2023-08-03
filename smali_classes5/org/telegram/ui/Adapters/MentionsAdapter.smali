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
.field private allowBots:Z

.field private allowChats:Z

.field private allowStickers:Z

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

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

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

.field private searchInDailogs:Z

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

.field private searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

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

.field private user:Lorg/telegram/tgnet/TLRPC$User;

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
    .locals 4

    .line 183
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowStickers:Z

    .line 71
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    .line 72
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    .line 83
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    .line 110
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    .line 114
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    .line 162
    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$2;

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .line 1438
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    const/4 v1, -0x1

    .line 1490
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    .line 184
    iput-object p7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 185
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    .line 186
    iput-object p6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    .line 187
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    .line 188
    iput-wide p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    .line 189
    iput p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:I

    .line 190
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 191
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    if-nez p2, :cond_0

    .line 205
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 206
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

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    return p0
.end method

.method static synthetic access$1704(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 1

    .line 68
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelLastReqId:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isSearchingMentions:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/MentionsAdapter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/MentionsAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    return p0
.end method

.method private addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 231
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

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 235
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

    .line 238
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 240
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 243
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz p1, :cond_4

    .line 246
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

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 255
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 256
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

    .line 257
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 260
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

    .line 263
    :cond_2
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    .line 264
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 265
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v8, :cond_3

    .line 266
    iget-object p2, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 270
    :cond_4
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 271
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 272
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 274
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v6, v3, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
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

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 686
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

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkStickerFilesExistAndDownload()Z
    .locals 11

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x6

    .line 284
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 286
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 287
    iget-object v3, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 288
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-eqz v4, :cond_2

    .line 289
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const-string v5, "webp"

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 290
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 291
    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
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

    .line 296
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private clearStickers()V
    .locals 3

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 403
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 404
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 405
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v0, :cond_0

    .line 406
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 407
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_1
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1771
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z
    .locals 5

    .line 300
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 301
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 302
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 303
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
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 380
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

    .line 383
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

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    return v0

    .line 386
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

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    return v0

    .line 389
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 392
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

    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 394
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

    .line 1671
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

    .line 538
    aput-boolean p4, p1, p3

    if-eqz p2, :cond_0

    .line 540
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 541
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

    .line 542
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processFoundUser$3([ZLandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 546
    aput-boolean p3, p1, p2

    .line 547
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method private synthetic lambda$processFoundUser$4([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 550
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 551
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$5(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 1

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 739
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 741
    invoke-direct {p0, v0, p4, p1, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_2

    .line 743
    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 745
    :cond_2
    :goto_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-eqz p1, :cond_10

    .line 746
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-nez p2, :cond_3

    .line 747
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p1, :cond_3

    .line 748
    invoke-virtual {p6, p7, p3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 750
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    .line 751
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_4

    .line 752
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 754
    :cond_4
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_webview:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move p1, v0

    .line 755
    :goto_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x1

    if-ge p1, p2, :cond_6

    .line 756
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 757
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

    .line 758
    iget-object p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    .line 761
    :cond_5
    iget-wide p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    add-int/2addr p1, p4

    goto :goto_1

    .line 764
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 769
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 770
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, ""

    .line 771
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    :cond_8
    move p1, p4

    goto :goto_3

    .line 765
    :cond_9
    :goto_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 766
    iget-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->gallery:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    move p1, v0

    .line 774
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p5, 0x0

    if-eqz p2, :cond_a

    .line 775
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 776
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 778
    :cond_a
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 779
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 780
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 781
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 782
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 783
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 784
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 785
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 786
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_c

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p5, :cond_c

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p5, :cond_b

    goto :goto_4

    :cond_b
    move p5, v0

    goto :goto_5

    :cond_c
    :goto_4
    move p5, p4

    :goto_5
    invoke-interface {p2, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    if-eqz p1, :cond_f

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p1, :cond_e

    :cond_d
    move v0, p4

    .line 789
    :cond_e
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

    .line 790
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

    .line 792
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_10
    :goto_6
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$6(Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 735
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

    .line 317
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 318
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez v1, :cond_0

    goto :goto_2

    .line 322
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 324
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

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 326
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 327
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 328
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v0, v3

    :cond_3
    invoke-interface {p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 329
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    :cond_4
    if-eq v1, p1, :cond_5

    .line 332
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$searchServerStickers$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 316
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$7(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1291
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1292
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$8(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1417
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1418
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1419
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1420
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1421
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1422
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1423
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1424
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1425
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

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    const-wide v1, -0x3f70c00000000000L    # -1000.0

    .line 676
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    const/4 v0, 0x1

    .line 678
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

    .line 512
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 513
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 514
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 515
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 516
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 519
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 520
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_0

    .line 522
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 528
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_3

    .line 529
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 530
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

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 532
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 533
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 534
    sget v2, Lorg/telegram/messenger/R$string;->ShareYouLocationTitle:I

    const-string v3, "ShareYouLocationTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 535
    sget v2, Lorg/telegram/messenger/R$string;->ShareYouLocationInline:I

    const-string v3, "ShareYouLocationInline"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-array v2, v1, [Z

    .line 537
    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    const-string v4, "OK"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 545
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 555
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 559
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 560
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 562
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_4

    .line 563
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    goto :goto_1

    .line 565
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_5

    .line 566
    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 568
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

    .line 573
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

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 577
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 582
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 583
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 584
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 586
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

    .line 587
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    if-eqz v0, :cond_5

    .line 588
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 589
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 591
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_6

    .line 592
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 593
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 595
    :cond_6
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 596
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 597
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 598
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 600
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_7

    .line 602
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_7
    if-eqz p1, :cond_e

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    if-nez p2, :cond_b

    .line 609
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p1, :cond_9

    .line 610
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 611
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 613
    :cond_9
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_a

    .line 615
    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_a
    return-void

    .line 619
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_d

    .line 620
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    .line 621
    invoke-interface {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    goto :goto_0

    :cond_c
    const-string v0, "gif"

    .line 622
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 623
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 627
    :cond_d
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    .line 628
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    .line 629
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 630
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x190

    .line 670
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

    .line 716
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    .line 717
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v2, v12}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 718
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 720
    :cond_0
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v10, :cond_8

    if-nez v9, :cond_2

    goto/16 :goto_3

    .line 730
    :cond_2
    iget-boolean v0, v9, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_3

    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_3

    return-void

    .line 733
    :cond_3
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

    if-eqz v1, :cond_4

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_4

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

    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 734
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    .line 735
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

    if-eqz p1, :cond_5

    .line 798
    invoke-virtual {v13, v15, v12}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto/16 :goto_2

    .line 800
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 801
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 802
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 803
    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 804
    iget-boolean v1, v9, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v1, :cond_6

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide v3, -0x3f70c00000000000L    # -1000.0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_6

    .line 805
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    .line 806
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 807
    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 808
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 810
    :cond_6
    iget-wide v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 811
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 813
    :cond_7
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 815
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

    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 727
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-void

    .line 721
    :cond_9
    :goto_4
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_a

    .line 722
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_a
    return-void
.end method

.method private searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 313
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    .line 314
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 315
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    .line 316
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
    .locals 2
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

    .line 1453
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1454
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    if-nez v0, :cond_4

    :cond_0
    if-eqz p1, :cond_4

    .line 1455
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1456
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1457
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    .line 1458
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    if-nez v1, :cond_2

    .line 1459
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1460
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v1, :cond_3

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1461
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1465
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1466
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 1467
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1468
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 1470
    :cond_5
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1471
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p3, :cond_6

    .line 1473
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1474
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 2

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 487
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 216
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_2

    .line 217
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

    .line 218
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/String;

    .line 219
    iget-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 221
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

    .line 1756
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-nez v0, :cond_0

    .line 1758
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    iget v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$8;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;IJI)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    .line 1764
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    .line 1766
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->doSomeAction()V

    :cond_1
    return-void
.end method

.method public getBotCaption()Ljava/lang/String;
    .locals 2

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    return-object v0

    .line 702
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    sget v0, Lorg/telegram/messenger/R$string;->SearchGifsTitle:I

    const-string v1, "SearchGifsTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-object v0
.end method

.method public getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;
    .locals 1

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    return-object v0
.end method

.method public getContextBotId()J
    .locals 2

    .line 500
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

    .line 508
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

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getFoundContextBot()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 1582
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

    .line 1583
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1584
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1590
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v2, :cond_4

    if-nez p1, :cond_2

    return-object v2

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 1597
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_1

    .line 1600
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1

    .line 1601
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    if-ltz p1, :cond_9

    .line 1602
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_8

    goto :goto_2

    .line 1605
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_2
    return-object v1

    .line 1606
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    if-ltz p1, :cond_c

    .line 1607
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_3

    .line 1610
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_3
    return-object v1

    .line 1611
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_f

    .line 1612
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    goto :goto_4

    .line 1615
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_4
    return-object v1

    .line 1616
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    if-ltz p1, :cond_16

    .line 1617
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_11

    goto :goto_6

    .line 1620
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v1, :cond_15

    .line 1621
    :cond_12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1622
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_5

    :cond_13
    const-string p1, ""

    :goto_5
    aput-object p1, v0, v2

    const-string p1, "%s@%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    new-array v0, v2, [Ljava/lang/Object;

    .line 1624
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1627
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_6
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 1494
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getItemCountInternal()I
    .locals 4

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_0

    return v1

    .line 1505
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1506
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1507
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1508
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1509
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1510
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1511
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1512
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1513
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1515
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 1516
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_8
    return v2
.end method

.method public getItemParent(I)Ljava/lang/Object;
    .locals 1

    .line 1577
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

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :cond_1
    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 1553
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 1555
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 1556
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public getLastItemCount()I
    .locals 1

    .line 1498
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getResultLength()I
    .locals 1

    .line 1483
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    return v0
.end method

.method public getResultStartPosition()I
    .locals 1

    .line 1479
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

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBannedInline()Z
    .locals 1

    .line 1649
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

    .line 1637
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

    .line 1645
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

    .line 1658
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

    .line 1633
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

    .line 1653
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

    .line 1641
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

    .line 341
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_3

    .line 351
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 353
    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 354
    new-array v6, v2, [Ljava/lang/Object;

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_2

    .line 356
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v5, :cond_5

    if-ltz v1, :cond_3

    .line 359
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v1, v8, :cond_3

    if-ge v1, v2, :cond_3

    aget-object v7, v7, v1

    aget-object v8, v6, v1

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->itemsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 360
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    move v4, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    sub-int v1, v0, v5

    .line 366
    invoke-virtual {p0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    sub-int v1, v2, v5

    .line 367
    invoke-virtual {p0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    if-eqz v4, :cond_6

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v1, :cond_6

    .line 369
    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 371
    :cond_6
    iput-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    goto :goto_5

    .line 342
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_8

    .line 343
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 345
    :cond_8
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 346
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    .line 347
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 348
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

    .line 1693
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1695
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerCell;

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 1697
    iget-object v0, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/StickerCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 1698
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerCell;->setClearsInputField(Z)V

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 1700
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 1701
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 1703
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v0, :cond_1

    .line 1704
    sget p2, Lorg/telegram/messenger/R$string;->GlobalAttachInlineRestricted:I

    const-string v0, "GlobalAttachInlineRestricted"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1705
    :cond_1
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1706
    sget p2, Lorg/telegram/messenger/R$string;->AttachInlineRestrictedForever:I

    const-string v0, "AttachInlineRestrictedForever"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1708
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

    goto/16 :goto_7

    .line 1711
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v1

    .line 1713
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    if-eqz v0, :cond_12

    .line 1715
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;->text:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;->text:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/BotSwitchCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    if-eqz v0, :cond_8

    add-int/lit8 p2, p2, -0x1

    .line 1721
    :cond_8
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

    if-eq p2, p1, :cond_9

    move v8, v1

    goto :goto_3

    :cond_9
    move v8, v3

    :goto_3
    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    move v9, v1

    goto :goto_4

    :cond_a
    move v9, v3

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    const-string p2, "gif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZZ)V

    goto :goto_7

    .line 1724
    :cond_b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/MentionCell;

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1726
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    .line 1727
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_c

    .line 1728
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_6

    .line 1729
    :cond_c
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_11

    .line 1730
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_6

    .line 1732
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 1733
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setText(Ljava/lang/String;)V

    goto :goto_6

    .line 1734
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 1735
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setEmojiSuggestion(Lorg/telegram/messenger/MediaDataController$KeywordResult;)V

    goto :goto_6

    .line 1736
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 1737
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_5

    :cond_10
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setBotCommand(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1739
    :cond_11
    :goto_6
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/MentionCell;->setDivider(Z)V

    :cond_12
    :goto_7
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

    .line 1685
    new-instance p1, Lorg/telegram/ui/Cells/StickerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/StickerCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 1677
    :cond_0
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 1678
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

    .line 1679
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1680
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object p1, p2

    goto :goto_0

    .line 1674
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/BotSwitchCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1670
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 1671
    new-instance p2, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setDelegate(Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;)V

    goto :goto_0

    .line 1666
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/MentionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/MentionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1667
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setIsDarkTheme(Z)V

    .line 1688
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 5

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 419
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 420
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 422
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 423
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 424
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 426
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_3

    .line 427
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 428
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 430
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 431
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 432
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 433
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 434
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 435
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    if-nez v0, :cond_4

    .line 436
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 437
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

    .line 1745
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_1

    .line 1746
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 1747
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    goto :goto_0

    .line 1749
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public searchForContextBotForNextOffset()V
    .locals 4

    .line 709
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

    .line 712
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V
    .locals 26
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

    .line 820
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 821
    :goto_0
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 823
    iget-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_1

    .line 824
    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 825
    iget-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    .line 827
    :cond_1
    iget-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    .line 828
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 829
    iput-object v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 831
    :cond_2
    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v9, :cond_3

    .line 832
    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    iget v13, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    invoke-virtual {v9, v13, v11}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 833
    iput v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    .line 835
    :cond_3
    iget-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    if-eqz v9, :cond_4

    .line 836
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 837
    iput-object v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    .line 839
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_76

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    iget v13, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v13, v13, Lorg/telegram/messenger/MessagesController;->maxMessageLength:I

    if-le v9, v13, :cond_5

    goto/16 :goto_39

    .line 847
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    add-int/lit8 v9, v1, -0x1

    goto :goto_1

    :cond_6
    move v9, v1

    .line 850
    :goto_1
    iput-object v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 851
    iput-boolean v3, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    .line 852
    iput-boolean v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    .line 853
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_7

    .line 856
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xe

    if-gt v14, v15, :cond_7

    move v14, v11

    goto :goto_2

    :cond_7
    move v14, v12

    :goto_2
    if-eqz v14, :cond_c

    .line 860
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move v11, v12

    move/from16 v10, v16

    move-object v12, v6

    :goto_3
    if-ge v11, v10, :cond_b

    .line 862
    invoke-interface {v12, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move-object/from16 v19, v5

    add-int/lit8 v5, v10, -0x1

    if-ge v11, v5, :cond_8

    move/from16 v20, v9

    add-int/lit8 v9, v11, 0x1

    .line 863
    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    goto :goto_4

    :cond_8
    move/from16 v20, v9

    const/4 v9, 0x0

    :goto_4
    if-ge v11, v5, :cond_9

    const v5, 0xd83c

    if-ne v15, v5, :cond_9

    const v5, 0xdffb

    if-lt v9, v5, :cond_9

    const v5, 0xdfff

    if-gt v9, v5, :cond_9

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 865
    invoke-interface {v12, v5, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v9, v5

    add-int/lit8 v5, v11, 0x2

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-interface {v12, v5, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v9, v12

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_9
    const v5, 0xfe0f

    if-ne v15, v5, :cond_a

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 869
    invoke-interface {v12, v5, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v9, v5

    add-int/lit8 v5, v11, 0x1

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-interface {v12, v5, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v15, 0x1

    aput-object v5, v9, v15

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v15, 0x1

    :goto_6
    add-int/2addr v11, v15

    move-object/from16 v5, v19

    move/from16 v9, v20

    goto :goto_3

    :cond_b
    move-object/from16 v19, v5

    move/from16 v20, v9

    .line 874
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    move-object v5, v6

    goto :goto_7

    :cond_c
    move-object/from16 v19, v5

    move/from16 v20, v9

    :goto_7
    if-eqz v14, :cond_e

    .line 876
    invoke-static {v5}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/Emoji;->isValidEmoji(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    const/4 v9, 0x1

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_11

    .line 877
    instance-of v10, v0, Landroid/text/Spanned;

    if-eqz v10, :cond_11

    .line 878
    move-object v9, v0

    check-cast v9, Landroid/text/Spanned;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v0, :cond_10

    .line 879
    array-length v0, v0

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v0, 0x1

    :goto_a
    move v9, v0

    .line 882
    :cond_11
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowStickers:Z

    if-eqz v0, :cond_24

    if-eqz v9, :cond_24

    if-eqz v7, :cond_12

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 883
    :cond_12
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 884
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_22

    if-nez v9, :cond_13

    goto/16 :goto_13

    :cond_13
    const/4 v9, 0x0

    .line 892
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 893
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 895
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v0, :cond_14

    .line 896
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 897
    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    .line 899
    :goto_b
    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/messenger/MessagesController;->suggestStickersApiOnly:Z

    if-nez v9, :cond_1c

    .line 903
    iget v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 904
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v12, 0x14

    .line 906
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_c
    if-ge v14, v12, :cond_17

    .line 907
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v11, v22

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    .line 908
    iget-object v15, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v11, v15}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    const-string v15, "recent"

    .line 909
    invoke-direct {v8, v11, v15}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    add-int/lit8 v11, v19, 0x1

    const/4 v15, 0x5

    if-lt v11, v15, :cond_15

    goto :goto_d

    :cond_15
    move/from16 v19, v11

    :cond_16
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 916
    :cond_17
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v11, :cond_19

    .line 917
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    .line 918
    iget-object v15, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v14, v15}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_18

    const-string v15, "fav"

    .line 919
    invoke-direct {v8, v14, v15}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    :cond_18
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 923
    :cond_19
    iget v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 924
    iget-object v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    goto :goto_f

    :cond_1a
    const/4 v11, 0x0

    :goto_f
    if-eqz v11, :cond_1b

    .line 925
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1b

    const/4 v12, 0x0

    .line 926
    invoke-direct {v8, v11, v12}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 928
    :cond_1b
    iget-object v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v11, :cond_1c

    .line 929
    new-instance v12, Lorg/telegram/ui/Adapters/MentionsAdapter$5;

    invoke-direct {v12, v8, v0, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 968
    :cond_1c
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-eqz v0, :cond_1d

    if-eqz v9, :cond_1e

    .line 969
    :cond_1d
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_1e
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 973
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-nez v0, :cond_1f

    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x5

    if-ge v0, v5, :cond_1f

    .line 975
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 976
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    goto :goto_10

    .line 978
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 979
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 980
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v5, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    const/4 v0, 0x1

    .line 981
    iput-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 983
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_11

    .line 984
    :cond_20
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v0, :cond_21

    .line 985
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 986
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    goto :goto_12

    :cond_21
    :goto_11
    const/4 v5, 0x0

    :goto_12
    const/4 v0, 0x4

    goto/16 :goto_18

    :cond_22
    :goto_13
    const/4 v5, 0x0

    .line 885
    iget-boolean v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 886
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 887
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_23
    return-void

    :cond_24
    const/4 v5, 0x0

    if-nez v3, :cond_2d

    .line 988
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v0, :cond_2d

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-ne v0, v5, :cond_2d

    const/16 v0, 0x20

    .line 989
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 990
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v5, :cond_25

    const/4 v9, 0x1

    .line 994
    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v5, v9

    .line 995
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v0

    const/4 v0, 0x1

    goto :goto_14

    :cond_25
    add-int/lit8 v5, v0, -0x1

    .line 996
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x74

    if-ne v5, v9, :cond_26

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x6f

    if-ne v5, v9, :cond_26

    const/4 v5, 0x3

    sub-int/2addr v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x62

    if-ne v0, v5, :cond_26

    const/4 v0, 0x1

    .line 997
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v19

    goto :goto_14

    :cond_26
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1000
    invoke-direct {v8, v5, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_14
    if-eqz v5, :cond_2b

    .line 1002
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v0, :cond_2b

    const/4 v0, 0x1

    .line 1003
    :goto_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_2c

    .line 1004
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_27

    const/16 v11, 0x39

    if-le v10, v11, :cond_2a

    :cond_27
    const/16 v11, 0x61

    if-lt v10, v11, :cond_28

    const/16 v11, 0x7a

    if-le v10, v11, :cond_2a

    :cond_28
    const/16 v11, 0x41

    if-lt v10, v11, :cond_29

    const/16 v11, 0x5a

    if-le v10, v11, :cond_2a

    :cond_29
    const/16 v11, 0x5f

    if-eq v10, v11, :cond_2a

    goto :goto_16

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    :goto_16
    move-object/from16 v5, v19

    .line 1013
    :cond_2c
    invoke-direct {v8, v5, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_2d
    const/4 v0, 0x0

    .line 1015
    invoke-direct {v8, v0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    const/4 v0, -0x1

    .line 1017
    :goto_18
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_2e

    return-void

    .line 1020
    :cond_2e
    iget v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    if-eqz v3, :cond_2f

    const/4 v5, 0x1

    .line 1023
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1024
    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1025
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x0

    :goto_19
    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_1a
    const/4 v11, 0x0

    goto/16 :goto_22

    :cond_2f
    move/from16 v5, v20

    :goto_1b
    if-ltz v5, :cond_3c

    .line 1029
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v5, v10, :cond_30

    const/4 v11, 0x0

    const/16 v12, 0x40

    goto/16 :goto_20

    .line 1032
    :cond_30
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eqz v5, :cond_32

    add-int/lit8 v12, v5, -0x1

    .line 1033
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_32

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0xa

    if-eq v12, v14, :cond_32

    if-ne v10, v11, :cond_31

    goto :goto_1c

    :cond_31
    const/4 v11, 0x0

    const/16 v12, 0x40

    goto/16 :goto_1f

    :cond_32
    :goto_1c
    const/16 v12, 0x40

    if-ne v10, v12, :cond_35

    .line 1035
    iget-boolean v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    if-nez v11, :cond_33

    iget-boolean v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    if-nez v14, :cond_33

    iget-boolean v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v14, :cond_3b

    if-nez v5, :cond_3b

    :cond_33
    if-nez v11, :cond_34

    .line 1036
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_34

    if-eqz v5, :cond_34

    .line 1037
    iput-object v6, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1038
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1039
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    .line 1040
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 1045
    :cond_34
    iput v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1046
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v14, 0x1

    add-int/2addr v0, v14

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    goto :goto_1a

    :cond_35
    const/4 v14, 0x1

    const/16 v15, 0x23

    if-ne v10, v15, :cond_37

    .line 1050
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1052
    iput v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1053
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v14

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x0

    .line 1054
    invoke-virtual {v13, v0, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v11, v0

    const/4 v0, 0x1

    goto :goto_21

    .line 1057
    :cond_36
    iput-object v6, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1058
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1059
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-void

    :cond_37
    if-nez v5, :cond_38

    .line 1063
    iget-object v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    if-eqz v14, :cond_38

    const/16 v14, 0x2f

    if-ne v10, v14, :cond_38

    .line 1065
    iput v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1066
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x2

    goto/16 :goto_19

    :cond_38
    if-ne v10, v11, :cond_3b

    .line 1068
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_3b

    const/4 v11, 0x0

    .line 1069
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    const-string v11, " !\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~\n"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_39

    const/4 v11, 0x1

    goto :goto_1d

    :cond_39
    const/4 v11, 0x0

    :goto_1d
    if-eqz v11, :cond_3a

    .line 1070
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v14, 0x1

    if-le v11, v14, :cond_3b

    goto :goto_1e

    :cond_3a
    const/4 v14, 0x1

    .line 1072
    :goto_1e
    iput v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1073
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v14

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x3

    goto/16 :goto_19

    :cond_3b
    const/4 v11, 0x0

    .line 1078
    :goto_1f
    invoke-virtual {v13, v11, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_20
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1b

    :cond_3c
    const/4 v11, 0x0

    :goto_21
    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_22
    if-ne v0, v1, :cond_3d

    .line 1082
    iput-boolean v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    const/4 v1, 0x0

    .line 1083
    iput-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1084
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    :cond_3d
    const/4 v1, 0x0

    if-nez v0, :cond_6b

    .line 1088
    iput-boolean v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    .line 1089
    iput-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_3f

    const/4 v1, 0x0

    :goto_23
    const/16 v6, 0x64

    .line 1092
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v6, :cond_3f

    .line 1093
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v14

    cmp-long v6, v14, v10

    if-lez v6, :cond_3e

    .line 1094
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 1095
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1099
    :cond_3f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x20

    .line 1100
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_40

    const/4 v1, 0x1

    goto :goto_24

    :cond_40
    const/4 v1, 0x0

    .line 1101
    :goto_24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1103
    new-instance v13, Landroidx/collection/LongSparseArray;

    invoke-direct {v13}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1104
    iget v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    if-nez v3, :cond_45

    .line 1105
    iget-boolean v15, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v15, :cond_45

    if-nez v5, :cond_45

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_45

    const/4 v5, 0x0

    const/4 v15, 0x0

    .line 1107
    :goto_25
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_45

    .line 1108
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-nez v10, :cond_41

    move-object v11, v0

    move/from16 p3, v1

    goto :goto_27

    .line 1112
    :cond_41
    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    .line 1113
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_43

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_42

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_43

    .line 1114
    :cond_42
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v0

    move/from16 p3, v1

    .line 1115
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v0, v1, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1116
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v13, v0, v1, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    :cond_43
    move-object v11, v0

    move/from16 p3, v1

    :goto_26
    const/4 v0, 0x5

    if-ne v15, v0, :cond_44

    goto :goto_28

    :cond_44
    :goto_27
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p3

    move-object v0, v11

    goto :goto_25

    :cond_45
    move-object v11, v0

    move/from16 p3, v1

    .line 1126
    :goto_28
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_46

    .line 1127
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1128
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadId()I

    move-result v1

    move-object v7, v0

    move v5, v1

    goto :goto_29

    .line 1129
    :cond_46
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_47

    .line 1130
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v7, v0

    :cond_47
    const/4 v5, 0x0

    .line 1136
    :goto_29
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v7, :cond_58

    .line 1137
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_58

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v1, :cond_58

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_58

    :cond_48
    const/4 v1, -0x2

    move v10, v1

    .line 1138
    :goto_2a
    iget-object v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_58

    if-ne v10, v1, :cond_4b

    if-eqz v0, :cond_4a

    if-nez v3, :cond_49

    goto :goto_2b

    .line 1148
    :cond_49
    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1149
    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1150
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v2

    .line 1152
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object v3, v0

    move-object/from16 v23, v15

    move-object v15, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v23

    goto/16 :goto_2d

    :cond_4a
    :goto_2b
    move-object/from16 v21, v0

    move-object v14, v2

    goto/16 :goto_30

    :cond_4b
    move-object/from16 v19, v2

    const/4 v1, -0x1

    if-ne v10, v1, :cond_4e

    if-nez v4, :cond_4c

    goto/16 :goto_2f

    .line 1157
    :cond_4c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4d

    .line 1158
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 1161
    :cond_4d
    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1163
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v18

    .line 1165
    iget-wide v1, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    move-object v3, v7

    move-object v15, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v18

    const/16 v18, 0x0

    goto :goto_2d

    .line 1167
    :cond_4e
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v0, :cond_4f

    .line 1168
    iget-wide v14, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v2, v14, v2

    if-nez v2, :cond_4f

    goto/16 :goto_2f

    .line 1171
    :cond_4f
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 1172
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 v14, v19

    invoke-virtual {v14, v2, v3}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_50

    :goto_2c
    move-object/from16 v21, v0

    goto/16 :goto_30

    .line 1175
    :cond_50
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_51

    .line 1176
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v2, :cond_51

    .line 1177
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1181
    :cond_51
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1182
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1183
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v18

    move-object v15, v2

    move-object/from16 v19, v3

    .line 1185
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-wide/from16 v23, v2

    move-object v3, v1

    move-wide/from16 v1, v23

    move-object/from16 v25, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v25

    .line 1187
    :goto_2d
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_52

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_2e

    :cond_52
    move-object/from16 v21, v0

    .line 1188
    :goto_2e
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1189
    :cond_53
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_54
    if-eqz p3, :cond_57

    move-object/from16 v0, v18

    .line 1190
    invoke-static {v15, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1191
    :cond_55
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-virtual {v13, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_30

    :cond_56
    :goto_2f
    move-object/from16 v21, v0

    move-object/from16 v14, v19

    :cond_57
    :goto_30
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, p4

    move-object v2, v14

    move-object/from16 v0, v21

    const/4 v1, -0x2

    goto/16 :goto_2a

    :cond_58
    move-object v14, v2

    .line 1196
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    if-eqz v0, :cond_66

    .line 1197
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 1199
    :goto_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 1204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v17, 0x0

    cmp-long v2, v2, v17

    if-lez v2, :cond_60

    .line 1206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 1207
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_5f

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v14, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_59

    goto :goto_32

    .line 1210
    :cond_59
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5a

    .line 1211
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v3, :cond_5a

    .line 1212
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 1216
    :cond_5a
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1217
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1218
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 p1, v7

    .line 1220
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 1221
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5b

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5e

    .line 1222
    :cond_5b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5c

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5e

    .line 1223
    :cond_5c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5d

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5e

    :cond_5d
    if-eqz p3, :cond_65

    .line 1224
    invoke-static {v3, v4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1225
    :cond_5e
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-virtual {v13, v7, v8, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_33

    :cond_5f
    :goto_32
    move-object/from16 p1, v7

    goto :goto_33

    :cond_60
    move-object/from16 p1, v7

    .line 1228
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 1229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 1230
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v3, :cond_65

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v14, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_61

    goto :goto_33

    .line 1233
    :cond_61
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_62

    .line 1234
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1237
    :cond_62
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1238
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 1240
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 1241
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_63

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 1242
    :cond_63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1243
    :cond_64
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    invoke-virtual {v13, v7, v8, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_65
    :goto_33
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    goto/16 :goto_31

    :cond_66
    move-object/from16 p1, v7

    .line 1249
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$6;

    move-object/from16 v8, p0

    move-object v1, v11

    invoke-direct {v0, v8, v13, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 1282
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1283
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1284
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1285
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1286
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1287
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    move-object/from16 v7, p1

    if-eqz p1, :cond_67

    .line 1288
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_68

    :cond_67
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    if-eqz v0, :cond_6a

    :cond_68
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6a

    .line 1289
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_69

    .line 1290
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8, v12, v13}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_34

    :cond_69
    const/4 v0, 0x1

    .line 1295
    invoke-direct {v8, v12, v13, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    .line 1298
    :goto_34
    new-instance v10, Lorg/telegram/ui/Adapters/MentionsAdapter$7;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v6

    move v4, v5

    move-object v5, v12

    move-object v6, v13

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter$7;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/String;ILjava/util/ArrayList;Landroidx/collection/LongSparseArray;Lorg/telegram/messenger/MessagesController;)V

    iput-object v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-static {v10, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_38

    :cond_6a
    const/4 v1, 0x1

    .line 1357
    invoke-direct {v8, v12, v13, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    goto/16 :goto_38

    :cond_6b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6e

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1362
    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 1363
    :goto_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    .line 1364
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    if-eqz v4, :cond_6c

    .line 1365
    iget-object v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    if-eqz v5, :cond_6c

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1366
    iget-object v4, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 1369
    :cond_6d
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1370
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1371
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1372
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1373
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1374
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1375
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1376
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1377
    iput-boolean v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    .line 1378
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1380
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_38

    :cond_6e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_72

    .line 1382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1386
    :goto_36
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 1387
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$BotInfo;

    const/4 v6, 0x0

    .line 1388
    :goto_37
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_70

    .line 1389
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    if-eqz v7, :cond_6f

    .line 1390
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    if-eqz v10, :cond_6f

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 1391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_71
    const/4 v4, 0x0

    .line 1397
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1398
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1399
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1400
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1401
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1402
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1403
    iput-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1404
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 1405
    iput-boolean v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    .line 1406
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1407
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1408
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto :goto_38

    :cond_72
    const/4 v1, 0x3

    if-ne v0, v1, :cond_74

    .line 1410
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1411
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 1412
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1414
    :cond_73
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    .line 1415
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    goto :goto_38

    :cond_74
    const/4 v1, 0x4

    if-ne v0, v1, :cond_75

    const/4 v0, 0x0

    .line 1428
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1429
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1430
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1431
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1432
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1433
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1434
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    :cond_75
    :goto_38
    return-void

    :cond_76
    :goto_39
    move-object v0, v10

    .line 840
    invoke-direct {v8, v0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 842
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 843
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->clearStickers()V

    return-void
.end method

.method public setAllowBots(Z)V
    .locals 0

    .line 1792
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowBots:Z

    return-void
.end method

.method public setAllowChats(Z)V
    .locals 0

    .line 1796
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowChats:Z

    return-void
.end method

.method public setAllowStickers(Z)V
    .locals 0

    .line 1788
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->allowStickers:Z

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

    .line 475
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setBotsCount(I)V
    .locals 0

    .line 479
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    .line 446
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    .line 447
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 448
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 451
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 452
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 455
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 461
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 462
    iget v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    :cond_1
    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 1775
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    return-void
.end method

.method public setIsReversed(Z)V
    .locals 1

    .line 1440
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    if-eq v0, p1, :cond_1

    .line 1441
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    .line 1442
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 1444
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 1447
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public setNeedBotContext(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    return-void
.end method

.method public setNeedUsernames(Z)V
    .locals 0

    .line 467
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    return-void
.end method

.method public setParentFragment(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method public setSearchInDailogs(Z)V
    .locals 0

    .line 1784
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchInDailogs:Z

    return-void
.end method

.method public setSearchingMentions(Z)V
    .locals 0

    .line 696
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isSearchingMentions:Z

    return-void
.end method

.method public setUserOrChar(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 1779
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1780
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method
