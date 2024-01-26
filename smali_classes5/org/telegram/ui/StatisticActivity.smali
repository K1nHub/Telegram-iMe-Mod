.class public Lorg/telegram/ui/StatisticActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "StatisticActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StatisticActivity$MemberData;,
        Lorg/telegram/ui/StatisticActivity$OverviewCell;,
        Lorg/telegram/ui/StatisticActivity$OverviewChatData;,
        Lorg/telegram/ui/StatisticActivity$OverviewChannelData;,
        Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;,
        Lorg/telegram/ui/StatisticActivity$RecentPostInfo;,
        Lorg/telegram/ui/StatisticActivity$ChartViewData;,
        Lorg/telegram/ui/StatisticActivity$ZoomCancelable;,
        Lorg/telegram/ui/StatisticActivity$BaseChartCell;,
        Lorg/telegram/ui/StatisticActivity$ChartCell;,
        Lorg/telegram/ui/StatisticActivity$Adapter;
    }
.end annotation


# instance fields
.field private actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

.field private animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

.field private chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private final chatId:J

.field private childDataCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Lorg/telegram/ui/Charts/data/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

.field private followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private initialLoading:Z

.field private interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final isMegagroup:Z

.field private ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private loadFromId:I

.field private maxDateOverview:J

.field private membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private messagesIsLoading:Z

.field private minDateOverview:J

.field private newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private onlyBoostsStat:Z

.field private overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

.field private overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

.field private progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field private progressLayout:Landroid/widget/LinearLayout;

.field private reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final recentAllSortedDataLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$RecentPostInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

.field private final recentPostsAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$RecentPostInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final recentPostsLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$RecentPostInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final recentStoriesAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$RecentPostInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

.field private final recentStoriesLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$RecentPostInfo;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

.field private final showProgressbar:Ljava/lang/Runnable;

.field private startFromBoosts:Z

.field private storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field private storiesListId:I

.field private storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private topAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$MemberData;",
            ">;"
        }
    .end annotation
.end field

.field private topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private topInviters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$MemberData;",
            ">;"
        }
    .end annotation
.end field

.field private topMembersAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$MemberData;",
            ">;"
        }
    .end annotation
.end field

.field private topMembersVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/StatisticActivity$MemberData;",
            ">;"
        }
    .end annotation
.end field

.field private viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;


# direct methods
.method public static synthetic $r8$lambda$-B8NX1JfEjNIvQXmzmC5mQr2Jj8(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$loadMessages$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1AcHMyD3vcvhBJaQYuwG1KLM38A(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$6(Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3hfuyo4Aubvuj356DChLconsU60(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$2([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B5ds69sa-RefXDPK7-VHVuzU77E(Lorg/telegram/ui/StatisticActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$7(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DJ2X0x2RVnuEJSuXiN5uu_woNi4(Lorg/telegram/ui/StatisticActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadMessages$8(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DqTP-v7M8-DZGl_VayYyAH6uNOw(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/Components/BottomPagerTabs;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$4(Lorg/telegram/ui/Components/BottomPagerTabs;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQ7XYIUDFEkUyNER-zy4TsEfJ2A(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWTZgtGLrVf8fsfyeCET2_UlTGM(Lorg/telegram/ui/StatisticActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$doN09VnfBPAXCGuXlg61Wb20yqI(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$1([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t12a9aCHUysiN2Dy1Tfc-bEpwsA(Lorg/telegram/ui/StatisticActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkN_cSuYYlnpEcqASXO4KJjvw7E(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->lambda$getThemeDescriptions$10()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .line 166
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Lorg/telegram/messenger/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->childDataCache:Lorg/telegram/messenger/LruCache;

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 160
    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, -0x1

    .line 175
    iput v1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    .line 176
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    .line 177
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    .line 184
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    .line 189
    new-instance v0, Lorg/telegram/ui/StatisticActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StatisticActivity$1;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    const-string v0, "chat_id"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    const-string v2, "is_megagroup"

    const/4 v3, 0x0

    .line 168
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    const-string v2, "start_from_boosts"

    .line 169
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/StatisticActivity;->startFromBoosts:Z

    const-string v2, "only_boosts"

    .line 170
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StatisticActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/ChannelBoostLayout;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$Adapter;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/StatisticActivity;)J
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    return-wide v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/StatisticActivity;)J
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    return-wide v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Stories/StoriesController$StoriesList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->cancelZoom()V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->childDataCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)Lorg/telegram/ui/StatisticActivity$ZoomCancelable;
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/StatisticActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 107
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadMessages()V

    return-void
.end method

.method private cancelZoom()V
    .locals 6

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2049
    iput-boolean v1, v0, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->canceled:Z

    .line 2051
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2053
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2054
    instance-of v5, v4, Lorg/telegram/ui/StatisticActivity$ChartCell;

    if-eqz v5, :cond_1

    .line 2055
    check-cast v4, Lorg/telegram/ui/StatisticActivity$ChartCell;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, v4, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createChartData(Lorg/json/JSONObject;IZ)Lorg/telegram/ui/Charts/data/ChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 853
    new-instance p1, Lorg/telegram/ui/Charts/data/ChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/ChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 855
    new-instance p1, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 857
    new-instance p1, Lorg/telegram/ui/Charts/data/StackBarChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/StackBarChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 859
    new-instance p1, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Charts/data/StackLinearChartData;-><init>(Lorg/json/JSONObject;Z)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 1

    const/4 v0, 0x0

    .line 848
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p0

    return-object p0
.end method

.method public static createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 818
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraphError;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 821
    :cond_0
    new-instance v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/StatisticActivity$ChartViewData;-><init>(Ljava/lang/String;I)V

    .line 822
    iput-boolean p3, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isLanguages:Z

    .line 823
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    if-eqz p1, :cond_3

    .line 824
    move-object p1, p0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;->json:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 826
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2, p3}, Lorg/telegram/ui/StatisticActivity;->createChartData(Lorg/json/JSONObject;IZ)Lorg/telegram/ui/Charts/data/ChartData;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 827
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;->zoom_token:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 828
    iget-object p3, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-eqz p3, :cond_1

    array-length p3, p3

    const/4 v2, 0x2

    if-ge p3, v2, :cond_2

    .line 829
    :cond_1
    iput-boolean p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    :cond_2
    const/4 p3, 0x4

    if-ne p2, p3, :cond_4

    if-eqz p1, :cond_4

    .line 831
    iget-object p2, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-eqz p2, :cond_4

    array-length p3, p2

    if-lez p3, :cond_4

    .line 832
    array-length p3, p2

    sub-int/2addr p3, p0

    aget-wide v2, p2, p3

    .line 833
    new-instance p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    invoke-direct {p0, p1, v2, v3}, Lorg/telegram/ui/Charts/data/StackLinearChartData;-><init>(Lorg/telegram/ui/Charts/data/ChartData;J)V

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 834
    iput-wide v2, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 837
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0

    .line 840
    :cond_3
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraphAsync;

    if-eqz p1, :cond_4

    .line 841
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraphAsync;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraphAsync;->token:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->token:Ljava/lang/String;

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method private dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 9

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->update()V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    .line 394
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 395
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 396
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xe6

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/StatisticActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/StatisticActivity$2;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 404
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 406
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    .line 407
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v3, :cond_1

    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->token:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 408
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    iget-object v6, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget-object v8, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/StatisticActivity$ChartViewData;->load(IIILorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/StatisticActivity$Adapter;Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/Components/BottomPagerTabs;Ljava/lang/Integer;)V
    .locals 2

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BottomPagerTabs;->setScrolling(Z)V

    .line 572
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BottomPagerTabs;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;I)V
    .locals 3

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    if-lt p2, v0, :cond_0

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p2, v1, :cond_0

    .line 691
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 692
    new-instance p2, Lorg/telegram/ui/MessageStatisticActivity;

    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/ui/StatisticActivity$RecentPostInfo;JZ)V

    .line 693
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 694
    :cond_0
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_1

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v1, :cond_1

    sub-int/2addr p2, v0

    .line 696
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 697
    :cond_1
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_2

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v1, :cond_2

    sub-int/2addr p2, v0

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 700
    :cond_2
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_3

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, v1, :cond_3

    sub-int/2addr p2, v0

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 703
    :cond_3
    iget p1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    if-ne p2, p1, :cond_4

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    .line 705
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget p2, p2, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz v0, :cond_4

    .line 709
    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->update()V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 712
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p3, :cond_0

    .line 741
    new-instance p2, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    .line 742
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 744
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 745
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    const-string p3, "chat_id"

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 746
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string p3, "message_id"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "need_remove_previous_same_chat_activity"

    const/4 p3, 0x0

    .line 747
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 748
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 749
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;I)Z
    .locals 6

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p2, v0, :cond_1

    iget v3, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p2, v3, :cond_1

    .line 719
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    .line 721
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    .line 725
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 729
    sget v4, Lorg/telegram/messenger/R$string;->ViewMessageStatistic:I

    const-string v5, "ViewMessageStatistic"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget v4, Lorg/telegram/messenger/R$string;->ViewMessage:I

    const-string v5, "ViewMessage"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_msgbubble3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 739
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->toIntArray(Ljava/util/List;)[I

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, p2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 753
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 755
    :cond_1
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_2

    iget v3, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v3, :cond_2

    sub-int/2addr p2, v0

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v2

    .line 759
    :cond_2
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_3

    iget v3, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v3, :cond_3

    sub-int/2addr p2, v0

    .line 761
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v2

    .line 763
    :cond_3
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_4

    iget p1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, p1, :cond_4

    sub-int/2addr p2, v0

    .line 765
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private synthetic lambda$getThemeDescriptions$10()V
    .locals 4

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_4

    .line 2464
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2466
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2468
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 2470
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2472
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 2474
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2476
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 2478
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2480
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 2482
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    if-eqz v0, :cond_5

    .line 2483
    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;->invalidate()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadMessages$8(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x0

    .line 2248
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    .line 2249
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2252
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2254
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 2255
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2256
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2257
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iput-object v3, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2261
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2262
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2264
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 2265
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_3

    .line 2266
    invoke-virtual {v1}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    goto :goto_2

    .line 2269
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2272
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    .line 2273
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2274
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    return-void
.end method

.method private synthetic lambda$loadMessages$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 2237
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2239
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_1

    .line 2240
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move v0, p1

    .line 2241
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2242
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, p1, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2244
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V

    .line 2247
    :cond_1
    new-instance p1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StatisticActivity;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$0(Ljava/util/List;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 287
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->prepareStoriesLoadedItems()V

    .line 288
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadStatistic$1([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x1

    .line 300
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x2

    .line 301
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x3

    .line 302
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x4

    .line 303
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x5

    .line 305
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x6

    .line 306
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x7

    .line 307
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0x8

    .line 308
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0x9

    .line 310
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0xa

    .line 311
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0xb

    .line 312
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 314
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$2([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    const/4 v0, 0x0

    .line 370
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x1

    .line 371
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x2

    .line 372
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x3

    .line 373
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x4

    .line 374
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x5

    .line 375
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x6

    .line 376
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x7

    .line 377
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 379
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 238
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;

    const/4 v5, 0x5

    const-string v6, "GrowthChartTitle"

    const/4 v7, 0x3

    const-string v8, "TopHoursChartTitle"

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    const/16 v2, 0xc

    new-array v2, v2, [Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 240
    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;

    .line 242
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->iv_interactions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->IVInteractionsChartTitle:I

    const-string v11, "IVInteractionsChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v15

    .line 243
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->followers_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->FollowersChartTitle:I

    const-string v11, "FollowersChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v9

    .line 244
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->top_hours_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->TopHoursChartTitle:I

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v14

    .line 245
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->interactions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->ViewsAndSharesChartTitle:I

    const-string v11, "ViewsAndSharesChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v7

    .line 246
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->growth_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->GrowthChartTitle:I

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v13

    .line 247
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->views_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->ViewsBySourceChartTitle:I

    const-string v11, "ViewsBySourceChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v5

    .line 248
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->new_followers_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->NewFollowersBySourceChartTitle:I

    const-string v11, "NewFollowersBySourceChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v12

    .line 249
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->languages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->LanguagesChartTitle:I

    const-string v11, "LanguagesChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13, v9}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 250
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->mute_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->NotificationsChartTitle:I

    const-string v11, "NotificationsChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const/16 v3, 0x9

    .line 251
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->reactions_by_emotion_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v11, Lorg/telegram/messenger/R$string;->ReactionsByEmotionChartTitle:I

    const-string v12, "ReactionsByEmotionChartTitle"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v4

    aput-object v4, v2, v3

    .line 252
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->story_interactions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->StoryInteractionsChartTitle:I

    const-string v11, "StoryInteractionsChartTitle"

    invoke-static {v11, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const/16 v3, 0xb

    .line 253
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->story_reactions_by_emotion_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v11, Lorg/telegram/messenger/R$string;->StoryReactionsByEmotionChartTitle:I

    const-string v12, "StoryReactionsByEmotionChartTitle"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    aget-object v3, v2, v14

    if-eqz v3, :cond_0

    .line 256
    aget-object v3, v2, v14

    iput-boolean v9, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    .line 259
    :cond_0
    new-instance v3, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    invoke-direct {v3, v10}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;-><init>(Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;)V

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity;->overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    .line 260
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->period:Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->max_date:I

    int-to-long v11, v4

    const-wide/16 v16, 0x3e8

    mul-long v11, v11, v16

    iput-wide v11, v0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    .line 261
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->min_date:I

    int-to-long v3, v3

    mul-long v3, v3, v16

    iput-wide v3, v0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    .line 263
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->recent_posts_interactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v10, v15

    move v11, v10

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PostInteractionCounters;

    .line 269
    new-instance v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-direct {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;-><init>()V

    .line 270
    iput-object v12, v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$PostInteractionCounters;

    .line 272
    instance-of v7, v12, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;

    if-eqz v7, :cond_1

    .line 273
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v13

    invoke-virtual {v7, v13, v10}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v10, v10, 0x1

    .line 277
    :cond_1
    instance-of v7, v12, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;

    if-eqz v7, :cond_2

    .line 278
    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-virtual {v7, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v11, v11, 0x1

    :cond_2
    const/4 v5, 0x5

    const/4 v7, 0x3

    const/4 v13, 0x4

    goto :goto_0

    .line 285
    :cond_3
    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StatisticActivity;Ljava/util/List;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 292
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 293
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v3}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v25

    .line 294
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 295
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v18

    iget-wide v3, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v3, v3

    move-wide/from16 v19, v3

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    move/from16 v28, v3

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v18 .. v36}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JJZIIIIIIIJIZZLorg/telegram/messenger/MessageLoaderLogger;)V

    .line 298
    :cond_4
    new-instance v3, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 319
    :cond_5
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;

    if-eqz v2, :cond_d

    const/16 v2, 0x8

    new-array v2, v2, [Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 321
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;

    .line 323
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->growth_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->GrowthChartTitle:I

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v15

    .line 324
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->GroupMembersChartTitle:I

    const-string v5, "GroupMembersChartTitle"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v9

    .line 325
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->new_members_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->NewMembersBySourceChartTitle:I

    const-string v5, "NewMembersBySourceChartTitle"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v14

    .line 326
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->languages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->MembersLanguageChartTitle:I

    const-string v5, "MembersLanguageChartTitle"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v3, v4, v5, v9}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 327
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->MessagesChartTitle:I

    const-string v6, "MessagesChartTitle"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v5

    .line 328
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->actions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->ActionsChartTitle:I

    const-string v5, "ActionsChartTitle"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 329
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_hours_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->TopHoursChartTitle:I

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 330
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->weekdays_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v5, Lorg/telegram/messenger/R$string;->TopDaysOfWeekChartTitle:I

    const-string v6, "TopDaysOfWeekChartTitle"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v2, v5

    .line 332
    aget-object v3, v2, v4

    if-eqz v3, :cond_6

    .line 333
    aget-object v3, v2, v4

    iput-boolean v9, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    .line 335
    :cond_6
    aget-object v3, v2, v5

    if-eqz v3, :cond_7

    .line 336
    aget-object v3, v2, v5

    iput-boolean v9, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useWeekFormat:Z

    .line 339
    :cond_7
    new-instance v3, Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    invoke-direct {v3, v1}, Lorg/telegram/ui/StatisticActivity$OverviewChatData;-><init>(Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;)V

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity;->overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    .line 340
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->period:Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->max_date:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    .line 341
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->min_date:I

    int-to-long v3, v3

    mul-long/2addr v3, v6

    iput-wide v3, v0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    .line 343
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v15

    .line 344
    :goto_1
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 345
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/telegram/ui/StatisticActivity$MemberData;->from(Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;

    move-result-object v4

    .line 346
    iget-object v5, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_8

    .line 347
    iget-object v5, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 351
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v14, :cond_a

    .line 352
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 353
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 357
    :cond_a
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v15

    .line 358
    :goto_2
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 359
    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lorg/telegram/ui/StatisticActivity$MemberData;->from(Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 363
    :cond_b
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 364
    :goto_3
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_c

    .line 365
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/telegram/ui/StatisticActivity$MemberData;->from(Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 369
    :cond_c
    new-instance v1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method private loadMessages()V
    .locals 6

    .line 2219
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 2220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 2221
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    iget v2, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2222
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2225
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_0

    .line 2226
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2233
    :cond_1
    :goto_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    const/4 v1, 0x1

    .line 2234
    iput-boolean v1, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    .line 2236
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadStatistic()V
    .locals 11

    .line 223
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getMegagroupStats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stats_getMegagroupStats;-><init>()V

    .line 230
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getMegagroupStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;-><init>()V

    .line 234
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    :goto_0
    move-object v3, v0

    .line 237
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v0

    .line 384
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private prepareStoriesLoadedItems()V
    .locals 4

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 434
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 436
    iput-object v2, v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    .line 437
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/StatisticActivity$ChartViewData;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;",
            "Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 2582
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p0, :cond_3

    .line 2583
    iget-object p0, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/data/ChartData$Line;

    .line 2584
    iget v1, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    if-ltz v1, :cond_0

    .line 2585
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2586
    iget v1, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeNight()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    goto :goto_1

    :cond_1
    iget v2, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    :goto_1
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setColor(IIZ)V

    .line 2587
    iget v1, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iget v2, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDefaultColor(II)V

    .line 2589
    :cond_2
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    move-object v3, v1

    move-object v9, p2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private recolorRecyclerItem(Landroid/view/View;)V
    .locals 4

    .line 2280
    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    if-eqz v0, :cond_0

    .line 2281
    check-cast p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->recolor()V

    goto :goto_0

    .line 2282
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-eqz v0, :cond_1

    .line 2283
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2284
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2285
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/4 v0, 0x1

    .line 2286
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 2287
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2288
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    if-eqz v0, :cond_2

    .line 2289
    check-cast p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->recolor()V

    goto :goto_0

    .line 2290
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    if-eqz v0, :cond_3

    .line 2291
    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->access$5100(Lorg/telegram/ui/StatisticActivity$OverviewCell;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sortAllLoadedData()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda5;

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingLong(Lj$/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 536
    new-instance v2, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    invoke-direct {v2}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 537
    iget-wide v2, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(JI)Z

    move-result v2

    .line 538
    new-instance v3, Lorg/telegram/ui/StatisticActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4, v0}, Lorg/telegram/ui/StatisticActivity$3;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 554
    new-instance v4, Lorg/telegram/ui/StatisticActivity$4;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lorg/telegram/ui/StatisticActivity$4;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;Lorg/telegram/ui/Components/BottomPagerTabs;)V

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 569
    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/Components/BottomPagerTabs;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BottomPagerTabs;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 575
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    .line 577
    new-instance v5, Lorg/telegram/ui/ChannelBoostLayout;

    iget-wide v6, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v6, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct {v5, v0, v6, v7, v8}, Lorg/telegram/ui/ChannelBoostLayout;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 579
    iget-boolean v7, v0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    if-nez v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-eqz v7, :cond_2

    .line 580
    iget-boolean v8, v0, Lorg/telegram/ui/StatisticActivity;->startFromBoosts:Z

    if-eqz v8, :cond_2

    .line 581
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 583
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v9, Lorg/telegram/ui/StatisticActivity$5;

    invoke-direct {v9, v0, v2, v4}, Lorg/telegram/ui/StatisticActivity$5;-><init>(Lorg/telegram/ui/StatisticActivity;ZLandroid/widget/FrameLayout;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    .line 615
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 616
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v7, :cond_3

    const/16 v15, 0x40

    goto :goto_1

    :cond_3
    move v15, v6

    :goto_1
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, -0x2

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    const/16 v9, 0x57

    .line 618
    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    :cond_4
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 621
    new-instance v2, Lorg/telegram/ui/StatisticActivity$6;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/StatisticActivity$6;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 634
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    .line 635
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 637
    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 638
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 639
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->statistic_preload:I

    const/16 v7, 0x78

    invoke-virtual {v2, v3, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 640
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 642
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 643
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "fonts/rmedium.ttf"

    .line 644
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 645
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 647
    sget v7, Lorg/telegram/messenger/R$string;->LoadingStats:I

    const-string v9, "LoadingStats"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 650
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41700000    # 15.0f

    .line 651
    invoke-virtual {v7, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 652
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 654
    sget v10, Lorg/telegram/messenger/R$string;->LoadingStatsDescription:I

    const-string v11, "LoadingStatsDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 657
    iget-object v10, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v12, 0x78

    const/16 v13, 0x78

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x14

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    iget-object v10, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v17, 0xa

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0xf0

    const/4 v11, -0x2

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/16 v16, 0x1e

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-nez v2, :cond_5

    .line 665
    new-instance v2, Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-direct {v2, v0}, Lorg/telegram/ui/StatisticActivity$Adapter;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    .line 667
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 668
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 669
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 670
    new-instance v2, Lorg/telegram/ui/StatisticActivity$7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/StatisticActivity$7;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 676
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 678
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/StatisticActivity$8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/StatisticActivity$8;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 689
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;

    invoke-direct {v8, v0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 717
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda11;

    invoke-direct {v8, v0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 771
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 773
    new-instance v2, Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {v2, v1, v7, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 774
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 775
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 777
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setRightAvatarPadding(I)V

    .line 778
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v10, -0x2

    const/4 v11, -0x1

    const/16 v12, 0x33

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v4, :cond_6

    const/16 v4, 0x32

    move v13, v4

    goto :goto_2

    :cond_6
    move v13, v6

    :goto_2
    const/4 v14, 0x0

    const/16 v15, 0x28

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 780
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 782
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 783
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_3

    :cond_7
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->hideSubtitle()V

    .line 786
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/StatisticActivity$9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/StatisticActivity$9;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 796
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleColors(II)V

    .line 797
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 798
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 799
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 801
    iget-boolean v1, v0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_8

    .line 802
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 803
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_4

    .line 807
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 809
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 813
    :goto_4
    new-instance v1, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2, v3, v7}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroidx/recyclerview/widget/LinearLayoutManager;Lorg/telegram/ui/StatisticActivity$1;)V

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    .line 814
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 447
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    .line 448
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 449
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne p1, p2, :cond_f

    .line 450
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->prepareStoriesLoadedItems()V

    .line 451
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz p1, :cond_f

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 454
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    goto/16 :goto_6

    .line 457
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v2, 0x2

    if-ne p1, p2, :cond_7

    .line 458
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p2, 0x1

    .line 459
    aget-object p3, p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 460
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    .line 461
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 462
    :goto_0
    instance-of v4, v3, Lorg/telegram/ui/ChatEditActivity;

    if-eqz v4, :cond_2

    .line 463
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 465
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    .line 466
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz p3, :cond_6

    .line 468
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x3

    if-lt p3, v1, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 469
    :cond_4
    instance-of p3, v2, Lorg/telegram/ui/ProfileActivity;

    if-eqz p3, :cond_5

    .line 470
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 472
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 473
    instance-of p3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_f

    .line 474
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_6

    .line 477
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 478
    instance-of p2, v2, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_f

    .line 479
    invoke-static {v2, p1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_6

    .line 482
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    if-ne p1, p2, :cond_e

    const/16 p1, 0xa

    .line 483
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 484
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    if-ne p1, p2, :cond_f

    .line 485
    aget-object p1, p3, v2

    check-cast p1, Ljava/util/ArrayList;

    .line 486
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v2, v1

    :goto_2
    if-ge v2, p3, :cond_a

    .line 489
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 490
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ltz v4, :cond_9

    .line 491
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 492
    iget-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-eqz v5, :cond_8

    .line 493
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 495
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iput-object v3, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 500
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 502
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 503
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_c

    .line 505
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 506
    iget-object p3, p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez p3, :cond_b

    .line 507
    invoke-virtual {p2}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    goto :goto_5

    .line 510
    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 514
    :cond_c
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_d

    .line 515
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadMessages()V

    .line 517
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz p1, :cond_f

    .line 519
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 520
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    goto :goto_6

    .line 523
    :cond_e
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_f

    .line 524
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 525
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_f

    .line 526
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_f

    .line 527
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 528
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadStatistic()V

    :cond_f
    :goto_6
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2462
    new-instance v10, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    .line 2487
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2489
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2491
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    const/16 v30, 0x0

    aput-object v4, v3, v30

    const-string v4, "message"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move/from16 v29, v9

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2492
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    aput-object v4, v3, v30

    const-string v4, "views"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v35

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    move/from16 v39, v9

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2493
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    aput-object v4, v3, v30

    const-string v4, "shares"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move/from16 v29, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2494
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    aput-object v5, v3, v30

    const-string v5, "likes"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    move/from16 v39, v4

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2495
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    aput-object v5, v3, v30

    const-string v5, "date"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2496
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    aput-object v4, v3, v30

    const-string v21, "textView"

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    move/from16 v39, v9

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v12

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignatureAlpha:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2501
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartHintLine:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2502
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActiveLine:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2503
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartInactivePickerChart:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActivePickerChart:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2505
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object v1, v12

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2507
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2508
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v1, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2512
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v1, v9

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2515
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v1

    move v9, v15

    move-object v15, v2

    move/from16 v19, v20

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    move-object/from16 v32, v2

    goto :goto_0

    :cond_0
    move-object/from16 v32, v3

    :goto_0
    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    move-object/from16 v31, v1

    invoke-direct/range {v31 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2517
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v3

    :cond_1
    move-object/from16 v40, v3

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v41, v2, v3

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    sget v46, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    const/16 v47, 0x0

    move-object/from16 v39, v1

    invoke-direct/range {v39 .. v47}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;ILjava/lang/Object;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2518
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLineEmpty:I

    move-object v1, v12

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v4, v3, v30

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v42, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v4, v3, v30

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v44

    const/16 v46, 0x0

    sget v48, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v40, v1

    move-object/from16 v41, v2

    move-object/from16 v43, v3

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v30

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2522
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v42, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v30

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v44

    sget v48, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v40, v1

    move-object/from16 v41, v2

    move-object/from16 v43, v3

    invoke-direct/range {v40 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2523
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v30

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    move/from16 v39, v22

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v33, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v4, v3, v30

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x5

    new-array v15, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v3, v15, v30

    const-class v3, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v3, v15, v9

    const-class v3, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v4, 0x2

    aput-object v3, v15, v4

    const-class v3, Landroid/widget/TextView;

    const/4 v5, 0x3

    aput-object v3, v15, v5

    const-class v3, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;

    const/4 v6, 0x4

    aput-object v3, v15, v6

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v1

    move/from16 v19, v20

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2527
    iget-boolean v1, v0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_7

    move/from16 v1, v30

    :goto_1
    if-ge v1, v3, :cond_13

    if-nez v1, :cond_2

    .line 2531
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_2
    if-ne v1, v9, :cond_3

    .line 2533
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_3
    if-ne v1, v4, :cond_4

    .line 2535
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_4
    if-ne v1, v5, :cond_5

    .line 2537
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_6

    .line 2539
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    .line 2541
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 2543
    :goto_2
    invoke-static {v2, v11, v10}, Lorg/telegram/ui/StatisticActivity;->putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move/from16 v1, v30

    :goto_3
    const/16 v7, 0xc

    if-ge v1, v7, :cond_13

    if-nez v1, :cond_8

    .line 2549
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_8
    if-ne v1, v9, :cond_9

    .line 2551
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_9
    if-ne v1, v4, :cond_a

    .line 2553
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_a
    if-ne v1, v5, :cond_b

    .line 2555
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_b
    if-ne v1, v6, :cond_c

    .line 2557
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_c
    if-ne v1, v2, :cond_d

    .line 2559
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_d
    if-ne v1, v3, :cond_e

    .line 2561
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_e
    const/4 v7, 0x7

    if-ne v1, v7, :cond_f

    .line 2563
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_f
    const/16 v7, 0x8

    if-ne v1, v7, :cond_10

    .line 2565
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_10
    const/16 v7, 0x9

    if-ne v1, v7, :cond_11

    .line 2567
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_11
    const/16 v7, 0xa

    if-ne v1, v7, :cond_12

    .line 2569
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    .line 2571
    :cond_12
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 2574
    :goto_4
    invoke-static {v7, v11, v10}, Lorg/telegram/ui/StatisticActivity;->putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    return-object v11
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 3245
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 3246
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3251
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v1, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3254
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 203
    iget-wide v1, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->link()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesListId:I

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadStatistic()V

    goto :goto_0

    .line 210
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 212
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 416
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 417
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 418
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 419
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 422
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_1

    .line 426
    iget v1, p0, Lorg/telegram/ui/StatisticActivity;->storiesListId:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->unlink(I)V

    .line 428
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
