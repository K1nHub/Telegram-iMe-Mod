.class public abstract Lorg/telegram/ui/Adapters/BaseLocationAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "BaseLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;
    }
.end annotation


# instance fields
.field private currentAccount:I

.field private currentRequestNum:I

.field private delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

.field private dialogId:J

.field protected iconUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastFoundQuery:Ljava/lang/String;

.field private lastSearchLocation:Landroid/location/Location;

.field private lastSearchQuery:Ljava/lang/String;

.field protected places:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;",
            ">;"
        }
    .end annotation
.end field

.field private searchInProgress:Z

.field private searchRunnable:Ljava/lang/Runnable;

.field protected searched:Z

.field protected searching:Z

.field private searchingUser:Z


# direct methods
.method public static synthetic $r8$lambda$CDlWY4e45t4grUt9aaUbGkqk0g4(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$4(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LhEps_belgVy8dM0QymDPif70Jg(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchBotUser$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5pEnfvG1qE0SmAACEhWNyquPlU(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchDelayed$1(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvLtXxlshhPIHPn-wgGk3kQVpKQ(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchPlacesWithQuery$5(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbxi_Lizh1BkMdDHHUwd4wMkbog(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchDelayed$0(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zKhvRg4tJR67bQmvjIlZlJiWZI8(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    .line 43
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 89
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 90
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 91
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 92
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    new-instance p2, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchDelayed$0(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 73
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    return-void
.end method

.method private synthetic lambda$searchDelayed$1(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .line 71
    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$4(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    .line 178
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    .line 182
    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    .line 184
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 185
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    .line 186
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 187
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v2, "venue"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-nez v1, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->iconUrls:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://ss3.4sqi.net/img/categories_v2/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_64.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 193
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 194
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 195
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    .line 196
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_type:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    .line 197
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    .line 198
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    if-eqz p1, :cond_3

    .line 203
    iget-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;->didLoadSearchResult(Ljava/util/ArrayList;)V

    .line 205
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$searchPlacesWithQuery$5(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 175
    new-instance v0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchBotUser()V
    .locals 3

    .line 80
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchingUser:Z

    .line 84
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 85
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 86
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 49
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    :cond_0
    return-void
.end method

.method public getLastSearchString()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastFoundQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isSearching()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    return v0
.end method

.method public searchDelayed(Ljava/lang/String;Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    .line 71
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x190

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->places:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchInProgress:Z

    .line 64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    return-void
.end method

.method public searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V
    .locals 3

    if-eqz p2, :cond_6

    .line 132
    iget-object p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    if-eqz p4, :cond_0

    invoke-virtual {p2, p4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p4

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float p4, p4, v0

    if-gez p4, :cond_0

    goto/16 :goto_2

    .line 135
    :cond_0
    new-instance p4, Landroid/location/Location;

    invoke-direct {p4, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchLocation:Landroid/location/Location;

    .line 136
    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->lastSearchQuery:Ljava/lang/String;

    .line 137
    iget-boolean p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    .line 138
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 139
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    if-eqz v1, :cond_1

    .line 140
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 141
    iput p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 146
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searching:Z

    .line 148
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searched:Z

    .line 150
    iget p4, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->venueSearchBot:Ljava/lang/String;

    invoke-virtual {p4, v1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object p4

    .line 151
    instance-of v1, p4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchBotUser()V

    :cond_2
    return-void

    .line 157
    :cond_3
    check-cast p4, Lorg/telegram/tgnet/TLRPC$User;

    .line 159
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_4

    move-object v2, v1

    goto :goto_0

    :cond_4
    move-object v2, p1

    .line 160
    :goto_0
    iput-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 161
    iget v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 162
    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 164
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 165
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v1

    iput-wide v1, p4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 166
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v1

    iput-wide v1, p4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 167
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    or-int/2addr p2, v0

    iput p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    .line 169
    iget-wide v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 170
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 172
    :cond_5
    iget p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 175
    :goto_1
    iget p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->currentRequestNum:I

    .line 208
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    :goto_2
    return-void
.end method

.method public setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->dialogId:J

    .line 57
    iput-object p3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->delegate:Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;

    return-void
.end method
