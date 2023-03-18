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

    .line 174
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 78
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    .line 106
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    .line 109
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    .line 153
    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$2;

    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    const/4 v1, 0x0

    .line 1346
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    const/4 v1, -0x1

    .line 1387
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    .line 175
    iput-object p7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 176
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    .line 177
    iput-object p6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    .line 178
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    .line 179
    iput-wide p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    .line 180
    iput p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:I

    .line 181
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 182
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    if-nez p2, :cond_0

    .line 196
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 197
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

    .line 222
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

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 226
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

    .line 229
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 234
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz p1, :cond_4

    .line 237
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

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 246
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 247
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

    .line 248
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 251
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

    .line 254
    :cond_2
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    .line 255
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 256
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v8, :cond_3

    .line 257
    iget-object p2, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 261
    :cond_4
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 262
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 263
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 265
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    invoke-direct {v6, v3, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
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

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 677
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

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkStickerFilesExistAndDownload()Z
    .locals 11

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x6

    .line 275
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 277
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 278
    iget-object v3, v2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x5a

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 279
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-eqz v4, :cond_2

    .line 280
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const-string v5, "webp"

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
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

    .line 287
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private clearStickers()V
    .locals 3

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    .line 393
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 394
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 395
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 396
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v0, :cond_0

    .line 397
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 398
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    :cond_1
    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1668
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

    .line 291
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 292
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 293
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 294
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

    .line 371
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

    .line 374
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

    .line 377
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

    .line 380
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 383
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

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 385
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

    .line 1568
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

    .line 529
    aput-boolean p4, p1, p3

    if-eqz p2, :cond_0

    .line 531
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 532
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

    .line 533
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processFoundUser$3([ZLandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 537
    aput-boolean p3, p1, p2

    .line 538
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    return-void
.end method

.method private synthetic lambda$processFoundUser$4([ZLandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 541
    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 542
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$5(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 730
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 732
    invoke-direct {p0, v0, p4, p1, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_2

    .line 734
    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 736
    :cond_2
    :goto_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-eqz p1, :cond_11

    .line 737
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-nez p2, :cond_3

    .line 738
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p1, :cond_3

    .line 739
    invoke-virtual {p6, p7, p3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 741
    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    .line 742
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_4

    .line 743
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 745
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-nez p1, :cond_5

    .line 746
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->switch_webview:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    :cond_5
    const/4 p1, 0x0

    .line 748
    :goto_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x1

    if-ge p1, p2, :cond_7

    .line 749
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 750
    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez p6, :cond_6

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez p6, :cond_6

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string p7, "game"

    invoke-virtual {p7, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_6

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez p6, :cond_6

    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of p6, p6, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz p6, :cond_6

    .line 751
    iget-object p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    .line 754
    :cond_6
    iget-wide p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide p6, p2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    add-int/2addr p1, p4

    goto :goto_1

    .line 757
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    .line 762
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 763
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, ""

    .line 764
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;

    :cond_9
    const/4 p1, 0x1

    goto :goto_3

    .line 758
    :cond_a
    :goto_2
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 759
    iget-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->gallery:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z

    const/4 p1, 0x0

    .line 767
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p5, 0x0

    if-eqz p2, :cond_b

    .line 768
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 769
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 771
    :cond_b
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 772
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 773
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 774
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 775
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 776
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 777
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 778
    iput-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 779
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_d

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p5, :cond_d

    iget-object p5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p5, :cond_c

    goto :goto_4

    :cond_c
    const/4 p5, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 p5, 0x1

    :goto_5
    invoke-interface {p2, p5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    if-eqz p1, :cond_10

    .line 781
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz p1, :cond_f

    :cond_e
    const/4 v0, 0x1

    .line 782
    :cond_f
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

    .line 783
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

    .line 785
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_11
    :goto_6
    return-void
.end method

.method private synthetic lambda$searchForContextBotResults$6(Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 726
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

    .line 308
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez v1, :cond_0

    goto :goto_2

    .line 313
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .line 314
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 315
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

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 317
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 318
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 319
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 320
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    :cond_4
    if-eq v1, p1, :cond_5

    .line 323
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$searchServerStickers$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 307
    new-instance p3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$7(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1203
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 1204
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method private synthetic lambda$searchUsernameOrHashtag$8(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1325
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1326
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1327
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1328
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1329
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1330
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1331
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1332
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1333
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

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    const-wide v1, -0x3f70c00000000000L    # -1000.0

    .line 667
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    const/4 v0, 0x1

    .line 669
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

    .line 503
    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 504
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 505
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 506
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 511
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_0

    .line 513
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 519
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_3

    .line 520
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 521
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

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 524
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 525
    sget v2, Lorg/telegram/messenger/R$string;->ShareYouLocationTitle:I

    const-string v3, "ShareYouLocationTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 526
    sget v2, Lorg/telegram/messenger/R$string;->ShareYouLocationInline:I

    const-string v3, "ShareYouLocationInline"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-array v2, v1, [Z

    .line 528
    sget v3, Lorg/telegram/messenger/R$string;->OK:I

    const-string v4, "OK"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 536
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[Z)V

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_0

    .line 546
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 550
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 551
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 553
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_4

    .line 554
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    goto :goto_1

    .line 556
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_5

    .line 557
    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 559
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

    .line 564
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

    .line 567
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 568
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 573
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 574
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 575
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 577
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

    .line 578
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    if-eqz v0, :cond_5

    .line 579
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 580
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 582
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_6

    .line 583
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 584
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 586
    :cond_6
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 587
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 588
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 589
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 591
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_7

    .line 593
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_7
    if-eqz p1, :cond_e

    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    if-nez p2, :cond_b

    .line 600
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz p1, :cond_9

    .line 601
    iget p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 602
    iput v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 604
    :cond_9
    iput-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz p1, :cond_a

    .line 606
    invoke-interface {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_a
    return-void

    .line 610
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_d

    .line 611
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    .line 612
    invoke-interface {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    goto :goto_0

    :cond_c
    const-string v0, "gif"

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 614
    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 618
    :cond_d
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    .line 619
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    .line 620
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 621
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$4;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x190

    .line 661
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

    .line 707
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    .line 708
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v2, v12}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 709
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 711
    :cond_0
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_2

    .line 712
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_1

    .line 713
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz v10, :cond_9

    if-nez v9, :cond_3

    goto/16 :goto_3

    .line 721
    :cond_3
    iget-boolean v0, v9, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v0, :cond_4

    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_4

    return-void

    .line 724
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

    .line 725
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    .line 726
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

    .line 791
    invoke-virtual {v13, v15, v12}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto/16 :goto_2

    .line 793
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 794
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 795
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 796
    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 797
    iget-boolean v1, v9, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v1, :cond_7

    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide v3, -0x3f70c00000000000L    # -1000.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_7

    .line 798
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    const/4 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    .line 799
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 800
    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 801
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 803
    :cond_7
    iget-wide v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 804
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 806
    :cond_8
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 808
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

    .line 718
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    return-void
.end method

.method private searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 304
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    .line 305
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 306
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    .line 307
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

    .line 1361
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1362
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1363
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1364
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1365
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 1367
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    .line 1368
    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 1370
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1371
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

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 2

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 478
    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 207
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_2

    .line 208
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

    .line 209
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/String;

    .line 210
    iget-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 212
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

    .line 1652
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1653
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    if-nez v0, :cond_0

    .line 1654
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->dialog_id:J

    iget v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->threadMessageId:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$8;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;IJI)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    .line 1660
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->checkVisibility()V

    .line 1662
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mentionsStickersActionTracker:Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->doSomeAction()V

    :cond_1
    return-void
.end method

.method public getBotCaption()Ljava/lang/String;
    .locals 2

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    return-object v0

    .line 693
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

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    return-object v0
.end method

.method public getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    return-object v0
.end method

.method public getContextBotId()J
    .locals 2

    .line 491
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

    .line 499
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

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getFoundContextBot()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 1478
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 1479
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

    .line 1480
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1481
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1487
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-eqz v2, :cond_4

    if-nez p1, :cond_2

    return-object v2

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 1494
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_1

    .line 1497
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1

    .line 1498
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    if-ltz p1, :cond_9

    .line 1499
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_8

    goto :goto_2

    .line 1502
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_2
    return-object v1

    .line 1503
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    if-ltz p1, :cond_c

    .line 1504
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_3

    .line 1507
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_3
    return-object v1

    .line 1508
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_f

    .line 1509
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    goto :goto_4

    .line 1512
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_4
    return-object v1

    .line 1513
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    if-ltz p1, :cond_16

    .line 1514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_11

    goto :goto_6

    .line 1517
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v1, :cond_15

    .line 1518
    :cond_12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1519
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

    .line 1521
    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1524
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

    .line 1391
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getItemCountInternal()I
    .locals 4

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_0

    return v1

    .line 1402
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1403
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1404
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1405
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1406
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1407
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1408
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1409
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1410
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1411
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1412
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 1413
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_8
    return v2
.end method

.method public getItemParent(I)Ljava/lang/Object;
    .locals 1

    .line 1474
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

    .line 1467
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

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 1450
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 1452
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 1453
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

    .line 1395
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    return v0
.end method

.method public getResultLength()I
    .locals 1

    .line 1380
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    return v0
.end method

.method public getResultStartPosition()I
    .locals 1

    .line 1376
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

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBannedInline()Z
    .locals 1

    .line 1546
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

    .line 1534
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

    .line 1542
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

    .line 1555
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

    .line 1530
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

    .line 1550
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

    .line 1538
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

    .line 332
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastItemCount:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_3

    .line 342
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 344
    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 345
    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_2

    .line 347
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v5, :cond_5

    if-ltz v1, :cond_3

    .line 350
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v1, v8, :cond_3

    if-ge v1, v2, :cond_3

    aget-object v7, v7, v1

    aget-object v8, v6, v1

    invoke-direct {p0, v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->itemsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 351
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    sub-int v1, v0, v5

    .line 357
    invoke-virtual {p0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    sub-int v1, v2, v5

    .line 358
    invoke-virtual {p0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    if-eqz v4, :cond_6

    .line 359
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v1, :cond_6

    .line 360
    invoke-interface {v1, v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 362
    :cond_6
    iput-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    goto :goto_5

    .line 333
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    if-eqz v0, :cond_8

    .line 334
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onItemCountUpdate(II)V

    .line 336
    :cond_8
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 337
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    .line 338
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastData:[Ljava/lang/Object;

    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 339
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

    .line 1590
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1592
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerCell;

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;

    .line 1594
    iget-object v0, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/ui/Adapters/MentionsAdapter$StickerResult;->parent:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/StickerCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 1595
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerCell;->setClearsInputField(Z)V

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 1597
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 1598
    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 1600
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v0, :cond_1

    .line 1601
    sget p2, Lorg/telegram/messenger/R$string;->GlobalAttachInlineRestricted:I

    const-string v0, "GlobalAttachInlineRestricted"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1602
    :cond_1
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1603
    sget p2, Lorg/telegram/messenger/R$string;->AttachInlineRestrictedForever:I

    const-string v0, "AttachInlineRestrictedForever"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1605
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

    .line 1608
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotWebViewSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 1610
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    if-eqz v0, :cond_12

    .line 1612
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

    .line 1618
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

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    const/4 v9, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    const-string p2, "gif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZZ)V

    goto/16 :goto_7

    .line 1621
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 1622
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    .line 1623
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_c

    .line 1624
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/MentionCell;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/MentionCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_6

    .line 1625
    :cond_c
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_11

    .line 1626
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/MentionCell;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/MentionCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_6

    .line 1628
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 1629
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setText(Ljava/lang/String;)V

    goto :goto_6

    .line 1630
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 1631
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/MentionCell;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setEmojiSuggestion(Lorg/telegram/messenger/MediaDataController$KeywordResult;)V

    goto :goto_6

    .line 1632
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 1633
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

    if-eqz v4, :cond_10

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_5

    :cond_10
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {v1, v0, v2, p2}, Lorg/telegram/ui/Cells/MentionCell;->setBotCommand(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1635
    :cond_11
    :goto_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/MentionCell;

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

    .line 1582
    new-instance p1, Lorg/telegram/ui/Cells/StickerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/StickerCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1574
    :cond_0
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 1575
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

    .line 1576
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "windowBackgroundWhiteGrayText2"

    .line 1577
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object p1, p2

    goto :goto_0

    .line 1571
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/BotSwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/BotSwitchCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1567
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 1568
    new-instance p2, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setDelegate(Lorg/telegram/ui/Cells/ContextLinkCell$ContextLinkCellDelegate;)V

    goto :goto_0

    .line 1563
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/MentionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/MentionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1564
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/MentionCell;->setIsDarkTheme(Z)V

    .line 1585
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 5

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 410
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 411
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 413
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 414
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 415
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I

    .line 417
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    if-eqz v0, :cond_3

    .line 418
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 419
    iput v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I

    .line 421
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    .line 422
    iput-boolean v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 423
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;

    .line 424
    iput-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 425
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z

    .line 426
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isDarkTheme:Z

    if-nez v0, :cond_4

    .line 427
    iget v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 428
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

    .line 1641
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz p1, :cond_1

    .line 1642
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 1643
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    goto :goto_0

    .line 1645
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->onLocationUnavailable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public searchForContextBotForNextOffset()V
    .locals 4

    .line 700
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

    .line 703
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

    .line 813
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 814
    :goto_0
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 815
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 816
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    .line 818
    :cond_1
    iget v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_2

    .line 819
    iget v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    iget v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    invoke-virtual {v7, v12, v11}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 820
    iput v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->channelReqId:I

    .line 822
    :cond_2
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_3

    .line 823
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 824
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchGlobalRunnable:Ljava/lang/Runnable;

    .line 826
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

    .line 834
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    add-int/lit8 v7, v1, -0x1

    goto :goto_1

    :cond_5
    move v7, v1

    .line 837
    :goto_1
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 838
    iput-boolean v3, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastUsernameOnly:Z

    .line 839
    iput-boolean v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastForSearch:Z

    .line 840
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_6

    .line 843
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

    .line 847
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move-object v11, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_a

    .line 849
    invoke-interface {v11, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    add-int/lit8 v14, v15, -0x1

    if-ge v9, v14, :cond_7

    move-object/from16 v17, v5

    add-int/lit8 v5, v9, 0x1

    .line 850
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

    .line 852
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

    .line 856
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

    .line 861
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

    .line 863
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

    .line 864
    instance-of v10, v0, Landroid/text/Spanned;

    if-eqz v10, :cond_10

    .line 865
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

    .line 866
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

    .line 869
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

    .line 870
    :cond_11
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 871
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    const/4 v15, 0x2

    if-eq v0, v15, :cond_21

    if-nez v9, :cond_12

    goto/16 :goto_13

    :cond_12
    const/4 v9, 0x0

    .line 879
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 880
    iput-object v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersMap:Ljava/util/HashMap;

    .line 882
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    if-eqz v0, :cond_13

    .line 883
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    const/4 v15, 0x1

    invoke-virtual {v0, v9, v15}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 884
    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastReqId:I

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    .line 886
    :goto_b
    iget v9, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/messenger/MessagesController;->suggestStickersApiOnly:Z

    if-nez v9, :cond_1b

    .line 890
    iget v15, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v15

    invoke-virtual {v15, v0}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 891
    iget v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v11, 0x14

    .line 893
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_c
    if-ge v13, v11, :cond_16

    .line 894
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    .line 895
    iget-object v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v10, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    const-string v14, "recent"

    .line 896
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

    .line 903
    :cond_16
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v10, :cond_18

    .line 904
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    .line 905
    iget-object v14, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v13, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isValidSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    const-string v14, "fav"

    .line 906
    invoke-direct {v8, v13, v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickerToResult(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 910
    :cond_18
    iget v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v10

    if-eqz v10, :cond_19

    .line 911
    iget-object v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_1a

    .line 912
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1a

    const/4 v11, 0x0

    .line 913
    invoke-direct {v8, v10, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addStickersToResult(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 915
    :cond_1a
    iget-object v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v10, :cond_1b

    .line 916
    new-instance v11, Lorg/telegram/ui/Adapters/MentionsAdapter$5;

    invoke-direct {v11, v8, v0, v15}, Lorg/telegram/ui/Adapters/MentionsAdapter$5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 955
    :cond_1b
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-eqz v0, :cond_1c

    if-eqz v9, :cond_1d

    .line 956
    :cond_1c
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSticker:Ljava/lang/String;

    invoke-direct {v8, v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchServerStickers(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_1d
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 960
    sget v0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-nez v0, :cond_1e

    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x5

    if-ge v0, v5, :cond_1e

    .line 962
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 963
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    goto :goto_10

    .line 965
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->checkStickerFilesExistAndDownload()Z

    .line 966
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickersToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 967
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v5, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    const/4 v0, 0x1

    .line 968
    iput-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 970
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_11

    .line 971
    :cond_1f
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v0, :cond_20

    .line 972
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 973
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

    .line 872
    iget-boolean v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 873
    iput-boolean v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->visibleByStickersSearch:Z

    .line 874
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    :cond_22
    return-void

    :cond_23
    const/4 v5, 0x0

    if-nez v3, :cond_2c

    .line 975
    iget-boolean v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v0, :cond_2c

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-ne v0, v5, :cond_2c

    const/16 v0, 0x20

    .line 976
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 977
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v5, :cond_24

    const/4 v9, 0x1

    .line 981
    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v5, v9

    .line 982
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v0

    const/4 v0, 0x1

    goto :goto_14

    :cond_24
    add-int/lit8 v5, v0, -0x1

    .line 983
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

    .line 984
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v17

    goto :goto_14

    :cond_25
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 987
    invoke-direct {v8, v5, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_14
    if-eqz v5, :cond_2a

    .line 989
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v0, :cond_2a

    const/4 v0, 0x1

    .line 990
    :goto_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_2b

    .line 991
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

    .line 1000
    :cond_2b
    invoke-direct {v8, v5, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    const/4 v0, 0x0

    .line 1002
    invoke-direct {v8, v0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    const/4 v0, -0x1

    .line 1004
    :goto_18
    iget-object v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_2d

    return-void

    .line 1007
    :cond_2d
    iget v5, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    if-eqz v3, :cond_2e

    const/4 v5, 0x1

    .line 1010
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1011
    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1012
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

    .line 1016
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v7, v5, :cond_2f

    const/4 v10, 0x0

    const/16 v11, 0x40

    goto/16 :goto_21

    .line 1019
    :cond_2f
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x3a

    if-eqz v7, :cond_31

    add-int/lit8 v11, v7, -0x1

    .line 1020
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

    .line 1022
    iget-boolean v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    if-nez v10, :cond_33

    iget-boolean v10, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v10, :cond_32

    if-nez v7, :cond_32

    goto :goto_1d

    :cond_32
    const/4 v10, 0x0

    goto/16 :goto_20

    .line 1023
    :cond_33
    :goto_1d
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_34

    if-eqz v7, :cond_34

    .line 1024
    iput-object v6, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1025
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1026
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    .line 1027
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    .line 1032
    :cond_34
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1033
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

    .line 1037
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1039
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1040
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v13

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, 0x0

    .line 1041
    invoke-virtual {v12, v0, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 1044
    :cond_36
    iput-object v6, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 1045
    iput v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastPosition:I

    .line 1046
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->messages:Ljava/util/ArrayList;

    return-void

    :cond_37
    if-nez v7, :cond_38

    .line 1050
    iget-object v13, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    if-eqz v13, :cond_38

    const/16 v13, 0x2f

    if-ne v5, v13, :cond_38

    .line 1052
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1053
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

    .line 1055
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_32

    const/4 v10, 0x0

    .line 1056
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

    .line 1057
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v13, 0x1

    if-le v10, v13, :cond_32

    goto :goto_1f

    :cond_3a
    const/4 v13, 0x1

    .line 1059
    :goto_1f
    iput v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultStartPosition:I

    .line 1060
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, v13

    iput v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->resultLength:I

    const/4 v0, -0x1

    const/4 v5, 0x3

    goto/16 :goto_19

    .line 1065
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

    .line 1069
    iget-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    invoke-interface {v0, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    return-void

    :cond_3c
    if-nez v5, :cond_57

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_23
    const/16 v1, 0x64

    .line 1074
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v5, v1, :cond_3e

    .line 1075
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v1, v10, v13

    if-lez v1, :cond_3d

    .line 1076
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1077
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 1080
    :cond_3e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x20

    .line 1081
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_24

    :cond_3f
    const/4 v1, 0x0

    .line 1082
    :goto_24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1084
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1085
    iget v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    if-nez v3, :cond_44

    .line 1086
    iget-boolean v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    if-eqz v12, :cond_44

    if-nez v7, :cond_44

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_44

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 1088
    :goto_25
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_44

    .line 1089
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

    .line 1093
    :cond_40
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    .line 1094
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

    .line 1095
    :cond_41
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v14, v15, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1097
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

    .line 1107
    :cond_44
    :goto_27
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_45

    .line 1108
    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1109
    iget-object v11, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChatActivity;->getThreadId()I

    move-result v11

    goto :goto_29

    .line 1110
    :cond_45
    iget-object v7, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v7, :cond_46

    .line 1111
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

    .line 1117
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

    .line 1118
    :goto_2b
    iget-object v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_54

    const/4 v12, -0x1

    if-ne v4, v12, :cond_4a

    .line 1125
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_49

    .line 1126
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    .line 1129
    :cond_49
    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1131
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    .line 1133
    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v12, v12

    move-object/from16 p1, v2

    move-wide v2, v12

    move-object v13, v15

    const/4 v15, 0x0

    move-object v12, v7

    goto :goto_2c

    .line 1135
    :cond_4a
    iget-object v12, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1136
    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    if-eqz v12, :cond_52

    if-nez v3, :cond_4b

    .line 1137
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-nez v13, :cond_52

    :cond_4b
    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v13, v14}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v13

    if-ltz v13, :cond_4c

    goto :goto_2d

    .line 1140
    :cond_4c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4d

    .line 1141
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-nez v13, :cond_4d

    .line 1142
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1146
    :cond_4d
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1147
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1148
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v2

    .line 1150
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 v19, v15

    move-object v15, v14

    move-object/from16 v14, v19

    .line 1152
    :goto_2c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4e

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_51

    .line 1153
    :cond_4e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4f

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_51

    .line 1154
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

    .line 1155
    invoke-static {v13, v15}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 1156
    :cond_51
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
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

    .line 1161
    :cond_54
    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter$6;

    invoke-direct {v1, v8, v10, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$6;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 1194
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1195
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1196
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1197
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1198
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1199
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    if-eqz v7, :cond_56

    .line 1200
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_56

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_56

    .line 1201
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_55

    .line 1202
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8, v6, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->cancelDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2f

    :cond_55
    const/4 v0, 0x1

    .line 1207
    invoke-direct {v8, v6, v10, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    .line 1210
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

    .line 1269
    invoke-direct {v8, v6, v10, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->showUsersResult(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    goto/16 :goto_33

    :cond_57
    const/4 v0, 0x1

    if-ne v5, v0, :cond_5a

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1274
    iget-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v10, 0x0

    .line 1275
    :goto_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_59

    .line 1276
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    if-eqz v3, :cond_58

    .line 1277
    iget-object v4, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    if-eqz v4, :cond_58

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1278
    iget-object v3, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    .line 1281
    :cond_59
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1282
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1283
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1284
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1285
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1286
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1287
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1288
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1289
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1290
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

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 1296
    :goto_31
    iget-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v5, v4, :cond_5d

    .line 1297
    iget-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInfo;

    const/4 v6, 0x0

    .line 1298
    :goto_32
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5c

    .line 1299
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    if-eqz v7, :cond_5b

    .line 1300
    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    if-eqz v10, :cond_5b

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 1301
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
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

    .line 1307
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1308
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->stickers:Ljava/util/ArrayList;

    .line 1309
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1310
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1311
    iput-object v4, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1312
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1313
    iput-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1314
    iput-object v2, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 1316
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

    .line 1318
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1319
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1320
    iget v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1322
    :cond_5f
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    .line 1323
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

    .line 1336
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 1337
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 1338
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernamesMap:Landroidx/collection/LongSparseArray;

    .line 1339
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultSuggestions:Ljava/util/ArrayList;

    .line 1340
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;

    .line 1341
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;

    .line 1342
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;

    :cond_61
    :goto_33
    return-void

    :cond_62
    :goto_34
    move-object v0, v9

    .line 827
    invoke-direct {v8, v0, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBot(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v1, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 829
    iput-object v0, v8, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    .line 830
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

    .line 466
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botInfo:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setBotsCount(I)V
    .locals 0

    .line 470
    iput p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->botsCount:I

    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    .line 437
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->currentAccount:I

    .line 438
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 439
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 442
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    .line 443
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendInline(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->inlineMediaEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 452
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->lastText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 453
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

    .line 1348
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    if-eq v0, p1, :cond_1

    .line 1349
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isReversed:Z

    .line 1350
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getLastItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 1352
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 1355
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public setNeedBotContext(Z)V
    .locals 0

    .line 462
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needBotContext:Z

    return-void
.end method

.method public setNeedUsernames(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->needUsernames:Z

    return-void
.end method

.method public setParentFragment(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method public setSearchingMentions(Z)V
    .locals 0

    .line 687
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter;->isSearchingMentions:Z

    return-void
.end method
