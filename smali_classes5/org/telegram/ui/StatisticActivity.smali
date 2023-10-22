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

.field private boosLayout:Lorg/telegram/ui/ChannelBoostLayout;

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

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

.field private final showProgressbar:Ljava/lang/Runnable;

.field private startFromBoosts:Z

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
.method public static synthetic $r8$lambda$TbxvnKytpUR6WhTZil4M_V3q-8Y(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->lambda$getThemeDescriptions$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1hblCpq1WN_tBzTdlajg9iA1mM(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$doN09VnfBPAXCGuXlg61Wb20yqI(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$1([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jMzWyd6w1Ve0auiCNqSpgEFETIs(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$0([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSKkckNneoz1yExPJokHbWwjT1g(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/Components/BottomPagerTabs;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$3(Lorg/telegram/ui/Components/BottomPagerTabs;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rh3vZ1oPWwR-DeARdcQZ35_TDhc(Lorg/telegram/ui/StatisticActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadMessages$7(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ruXjy2NXnRi_pxjvOJyFoj_9t_A(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$loadMessages$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzFDMSbICUb8WSzkoXIKVb5oEmw(Lorg/telegram/ui/StatisticActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$4(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkPEfq6WGoa21r2EuiX069ob4Vw(Lorg/telegram/ui/StatisticActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$6(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yWtwhDVBxVkfMfUcr9TFIVn-_fw(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$5(Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .line 155
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lorg/telegram/messenger/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/telegram/messenger/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->childDataCache:Lorg/telegram/messenger/LruCache;

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 149
    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, -0x1

    .line 164
    iput v1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    .line 165
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    .line 169
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    .line 172
    new-instance v0, Lorg/telegram/ui/StatisticActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StatisticActivity$1;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    const-string v0, "chat_id"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    const-string v2, "is_megagroup"

    const/4 v3, 0x0

    .line 157
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    const-string v2, "start_from_boosts"

    .line 158
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/StatisticActivity;->startFromBoosts:Z

    const-string v2, "only_boosts"

    .line 159
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StatisticActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/ChannelBoostLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->boosLayout:Lorg/telegram/ui/ChannelBoostLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$Adapter;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/StatisticActivity;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    return-wide v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/StatisticActivity;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->cancelZoom()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->childDataCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)Lorg/telegram/ui/StatisticActivity$ZoomCancelable;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    return-object p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/StatisticActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadMessages()V

    return-void
.end method

.method private cancelZoom()V
    .locals 6

    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1876
    iput-boolean v1, v0, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->canceled:Z

    .line 1878
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1880
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1881
    instance-of v5, v4, Lorg/telegram/ui/StatisticActivity$ChartCell;

    if-eqz v5, :cond_1

    .line 1882
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

    .line 733
    new-instance p1, Lorg/telegram/ui/Charts/data/ChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/ChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 735
    new-instance p1, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 737
    new-instance p1, Lorg/telegram/ui/Charts/data/StackBarChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/StackBarChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 739
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

    .line 728
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p0

    return-object p0
.end method

.method public static createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 698
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraphError;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 701
    :cond_0
    new-instance v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/StatisticActivity$ChartViewData;-><init>(Ljava/lang/String;I)V

    .line 702
    iput-boolean p3, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isLanguages:Z

    .line 703
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    if-eqz p1, :cond_3

    .line 704
    move-object p1, p0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;->json:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 706
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2, p3}, Lorg/telegram/ui/StatisticActivity;->createChartData(Lorg/json/JSONObject;IZ)Lorg/telegram/ui/Charts/data/ChartData;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 707
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraph;->zoom_token:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 708
    iget-object p3, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-eqz p3, :cond_1

    array-length p3, p3

    const/4 v2, 0x2

    if-ge p3, v2, :cond_2

    .line 709
    :cond_1
    iput-boolean p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    :cond_2
    const/4 p3, 0x4

    if-ne p2, p3, :cond_4

    if-eqz p1, :cond_4

    .line 711
    iget-object p2, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-eqz p2, :cond_4

    array-length p3, p2

    if-lez p3, :cond_4

    .line 712
    array-length p3, p2

    sub-int/2addr p3, p0

    aget-wide v2, p2, p3

    .line 713
    new-instance p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    invoke-direct {p0, p1, v2, v3}, Lorg/telegram/ui/Charts/data/StackLinearChartData;-><init>(Lorg/telegram/ui/Charts/data/ChartData;J)V

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 714
    iput-wide v2, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 717
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0

    .line 720
    :cond_3
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGraphAsync;

    if-eqz p1, :cond_4

    .line 721
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

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->update()V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    .line 337
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 339
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

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 349
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    .line 350
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v3, :cond_1

    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->token:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 351
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

.method private synthetic lambda$createView$3(Lorg/telegram/ui/Components/BottomPagerTabs;Ljava/lang/Integer;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BottomPagerTabs;->setScrolling(Z)V

    .line 458
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BottomPagerTabs;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;I)V
    .locals 2

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    if-lt p2, v0, :cond_0

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p2, v1, :cond_0

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    .line 578
    new-instance p2, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    .line 579
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 580
    :cond_0
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_1

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v1, :cond_1

    sub-int/2addr p2, v0

    .line 582
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 583
    :cond_1
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_2

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v1, :cond_2

    sub-int/2addr p2, v0

    .line 585
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 586
    :cond_2
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_3

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, v1, :cond_3

    sub-int/2addr p2, v0

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 589
    :cond_3
    iget p1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    if-ne p2, p1, :cond_4

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    .line 591
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget p2, p2, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz v0, :cond_4

    .line 595
    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->update()V

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p3, :cond_0

    .line 623
    new-instance p2, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    .line 624
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 626
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 627
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    const-string p3, "chat_id"

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 628
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string p3, "message_id"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "need_remove_previous_same_chat_activity"

    const/4 p3, 0x0

    .line 629
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 630
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 631
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;I)Z
    .locals 6

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p2, v0, :cond_0

    iget v3, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p2, v3, :cond_0

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    .line 607
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    sget v4, Lorg/telegram/messenger/R$string;->ViewMessageStatistic:I

    const-string v5, "ViewMessageStatistic"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget v4, Lorg/telegram/messenger/R$string;->ViewMessage:I

    const-string v5, "ViewMessage"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_msgbubble3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 621
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

    .line 635
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 637
    :cond_0
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_1

    iget v3, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v3, :cond_1

    sub-int/2addr p2, v0

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v2

    .line 641
    :cond_1
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_2

    iget v3, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v3, :cond_2

    sub-int/2addr p2, v0

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v2

    .line 645
    :cond_2
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_3

    iget p1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, p1, :cond_3

    sub-int/2addr p2, v0

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$getThemeDescriptions$9()V
    .locals 4

    .line 2226
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_4

    .line 2227
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2229
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2231
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 2233
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2235
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 2237
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2239
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 2241
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2243
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 2245
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    if-eqz v0, :cond_5

    .line 2246
    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;->invalidate()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadMessages$7(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x0

    .line 2024
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    .line 2025
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2028
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2030
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 2031
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2032
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object v5, v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2033
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iput-object v3, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2037
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2038
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2040
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 2041
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_3

    .line 2042
    iget-object p1, v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

    iput p1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    goto :goto_2

    .line 2045
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2048
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2049
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    return-void
.end method

.method private synthetic lambda$loadMessages$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 2013
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2015
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_1

    .line 2016
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move v0, p1

    .line 2017
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2018
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

    .line 2020
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZI)V

    .line 2023
    :cond_1
    new-instance p1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StatisticActivity;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$0([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x1

    .line 247
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x2

    .line 248
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x3

    .line 249
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x4

    .line 250
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x5

    .line 252
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x6

    .line 253
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x7

    .line 254
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0x8

    .line 255
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 257
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$1([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    const/4 v0, 0x0

    .line 313
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x1

    .line 314
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x2

    .line 315
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x3

    .line 316
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x4

    .line 317
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x5

    .line 318
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x6

    .line 319
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x7

    .line 320
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 322
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 208
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;

    const/4 v4, 0x5

    const-string v5, "GrowthChartTitle"

    const/4 v6, 0x3

    const-string v7, "TopHoursChartTitle"

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    new-array v2, v2, [Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 210
    move-object v8, v1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;

    .line 212
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->iv_interactions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v3, Lorg/telegram/messenger/R$string;->IVInteractionsChartTitle:I

    const-string v10, "IVInteractionsChartTitle"

    invoke-static {v10, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v15

    .line 213
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->followers_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->FollowersChartTitle:I

    const-string v10, "FollowersChartTitle"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v14

    .line 214
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->top_hours_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->TopHoursChartTitle:I

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v13

    .line 215
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->interactions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->InteractionsChartTitle:I

    const-string v10, "InteractionsChartTitle"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v6

    .line 216
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->growth_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->GrowthChartTitle:I

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v12

    .line 217
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->views_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->ViewsBySourceChartTitle:I

    const-string v10, "ViewsBySourceChartTitle"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v13}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v4

    .line 218
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->new_followers_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->NewFollowersBySourceChartTitle:I

    const-string v10, "NewFollowersBySourceChartTitle"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v13}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v11

    .line 219
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->languages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->LanguagesChartTitle:I

    const-string v10, "LanguagesChartTitle"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v12, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/4 v9, 0x7

    aput-object v3, v2, v9

    .line 220
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->mute_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->NotificationsChartTitle:I

    const-string v10, "NotificationsChartTitle"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/16 v9, 0x8

    aput-object v3, v2, v9

    .line 222
    aget-object v3, v2, v13

    if-eqz v3, :cond_0

    .line 223
    aget-object v3, v2, v13

    iput-boolean v14, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    .line 226
    :cond_0
    new-instance v3, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    invoke-direct {v3, v8}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;-><init>(Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;)V

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity;->overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    .line 227
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->period:Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

    iget v9, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->max_date:I

    int-to-long v9, v9

    const-wide/16 v16, 0x3e8

    mul-long v9, v9, v16

    iput-wide v9, v0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    .line 228
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->min_date:I

    int-to-long v9, v3

    mul-long v9, v9, v16

    iput-wide v9, v0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    .line 230
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v15

    .line 232
    :goto_0
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->recent_message_interactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 233
    new-instance v9, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-direct {v9}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;-><init>()V

    .line 234
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_stats_broadcastStats;->recent_message_interactions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iput-object v10, v9, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    .line 235
    iget-object v10, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v10, v0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    iget-object v9, v9, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

    invoke-virtual {v10, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 240
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object v3, v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

    move/from16 v25, v3

    .line 241
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 242
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v18

    iget-wide v8, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v8, v8

    move-wide/from16 v19, v8

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    move/from16 v28, v3

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v18 .. v35}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JJZIIIIIIZIIZZLorg/telegram/messenger/MessageLoaderLogger;)V

    .line 245
    :cond_2
    new-instance v3, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 262
    :cond_3
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    new-array v2, v2, [Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 264
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;

    .line 266
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->growth_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v8, Lorg/telegram/messenger/R$string;->GrowthChartTitle:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v15

    .line 267
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->members_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v5, Lorg/telegram/messenger/R$string;->GroupMembersChartTitle:I

    const-string v8, "GroupMembersChartTitle"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v14

    .line 268
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->new_members_by_source_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v5, Lorg/telegram/messenger/R$string;->NewMembersBySourceChartTitle:I

    const-string v8, "NewMembersBySourceChartTitle"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v13}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v13

    .line 269
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->languages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v5, Lorg/telegram/messenger/R$string;->MembersLanguageChartTitle:I

    const-string v8, "MembersLanguageChartTitle"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v12, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v6

    .line 270
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->messages_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v5, Lorg/telegram/messenger/R$string;->MessagesChartTitle:I

    const-string v6, "MessagesChartTitle"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v13}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v12

    .line 271
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->actions_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v5, Lorg/telegram/messenger/R$string;->ActionsChartTitle:I

    const-string v6, "ActionsChartTitle"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v4

    .line 272
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_hours_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->TopHoursChartTitle:I

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    aput-object v3, v2, v11

    .line 273
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->weekdays_graph:Lorg/telegram/tgnet/TLRPC$StatsGraph;

    sget v4, Lorg/telegram/messenger/R$string;->TopDaysOfWeekChartTitle:I

    const-string v5, "TopDaysOfWeekChartTitle"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/TLRPC$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 275
    aget-object v3, v2, v11

    if-eqz v3, :cond_4

    .line 276
    aget-object v3, v2, v11

    iput-boolean v14, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    .line 278
    :cond_4
    aget-object v3, v2, v4

    if-eqz v3, :cond_5

    .line 279
    aget-object v3, v2, v4

    iput-boolean v14, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useWeekFormat:Z

    .line 282
    :cond_5
    new-instance v3, Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    invoke-direct {v3, v1}, Lorg/telegram/ui/StatisticActivity$OverviewChatData;-><init>(Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;)V

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity;->overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    .line 283
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->period:Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->max_date:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    .line 284
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_statsDateRangeDays;->min_date:I

    int-to-long v3, v3

    mul-long/2addr v3, v6

    iput-wide v3, v0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    .line 286
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v15

    .line 287
    :goto_1
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 288
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/telegram/ui/StatisticActivity$MemberData;->from(Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;

    move-result-object v4

    .line 289
    iget-object v5, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_6

    .line 290
    iget-object v5, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 294
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v13, :cond_8

    .line 295
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_8
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v15

    .line 301
    :goto_2
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 302
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

    .line 306
    :cond_9
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 307
    :goto_3
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_stats_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_a

    .line 308
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

    .line 312
    :cond_a
    new-instance v1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private loadMessages()V
    .locals 6

    .line 1995
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 1996
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 1997
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    iget v2, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1998
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2001
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_0

    .line 2002
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object v5, v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

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

    .line 2009
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

    .line 2010
    iput-boolean v1, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    .line 2012
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadStatistic()V
    .locals 11

    .line 192
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getMegagroupStats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stats_getMegagroupStats;-><init>()V

    .line 199
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getMegagroupStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;-><init>()V

    .line 203
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_stats_getBroadcastStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    :goto_0
    move-object v3, v0

    .line 207
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v0

    .line 327
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

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

    .line 2337
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p0, :cond_3

    .line 2338
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

    .line 2339
    iget v1, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    if-ltz v1, :cond_0

    .line 2340
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2341
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

    .line 2342
    iget v1, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iget v2, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDefaultColor(II)V

    .line 2344
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

    .line 2055
    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    if-eqz v0, :cond_0

    .line 2056
    check-cast p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->recolor()V

    goto :goto_0

    .line 2057
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-eqz v0, :cond_1

    .line 2058
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2059
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2060
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/4 v0, 0x1

    .line 2061
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 2062
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2063
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    if-eqz v0, :cond_2

    .line 2064
    check-cast p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->recolor()V

    goto :goto_0

    .line 2065
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    if-eqz v0, :cond_3

    .line 2066
    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->access$4600(Lorg/telegram/ui/StatisticActivity$OverviewCell;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 424
    new-instance v2, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    invoke-direct {v2}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 425
    iget-wide v2, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(JI)Z

    move-result v2

    .line 426
    new-instance v3, Lorg/telegram/ui/StatisticActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4, v0}, Lorg/telegram/ui/StatisticActivity$3;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 440
    new-instance v4, Lorg/telegram/ui/StatisticActivity$4;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lorg/telegram/ui/StatisticActivity$4;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;Lorg/telegram/ui/Components/BottomPagerTabs;)V

    iput-object v4, v0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 455
    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/Components/BottomPagerTabs;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BottomPagerTabs;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 461
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    .line 463
    new-instance v5, Lorg/telegram/ui/ChannelBoostLayout;

    iget-wide v6, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v6, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct {v5, v0, v6, v7, v8}, Lorg/telegram/ui/ChannelBoostLayout;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/StatisticActivity;->boosLayout:Lorg/telegram/ui/ChannelBoostLayout;

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 465
    iget-boolean v7, v0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    if-nez v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-eqz v7, :cond_2

    .line 466
    iget-boolean v8, v0, Lorg/telegram/ui/StatisticActivity;->startFromBoosts:Z

    if-eqz v8, :cond_2

    .line 467
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 469
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v9, Lorg/telegram/ui/StatisticActivity$5;

    invoke-direct {v9, v0, v2, v4}, Lorg/telegram/ui/StatisticActivity$5;-><init>(Lorg/telegram/ui/StatisticActivity;ZLandroid/widget/FrameLayout;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    .line 501
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 502
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

    .line 504
    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    :cond_4
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 507
    new-instance v2, Lorg/telegram/ui/StatisticActivity$6;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/StatisticActivity$6;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 520
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    .line 521
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 523
    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 524
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 525
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$raw;->statistic_preload:I

    const/16 v7, 0x78

    invoke-virtual {v2, v3, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 526
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 528
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 529
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "fonts/rmedium.ttf"

    .line 530
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 531
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 533
    sget v7, Lorg/telegram/messenger/R$string;->LoadingStats:I

    const-string v9, "LoadingStats"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 536
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41700000    # 15.0f

    .line 537
    invoke-virtual {v7, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 538
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 540
    sget v10, Lorg/telegram/messenger/R$string;->LoadingStatsDescription:I

    const-string v11, "LoadingStatsDescription"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 543
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

    .line 544
    iget-object v10, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v17, 0xa

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0xf0

    const/4 v11, -0x2

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/16 v16, 0x1e

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-nez v2, :cond_5

    .line 551
    new-instance v2, Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-direct {v2, v0}, Lorg/telegram/ui/StatisticActivity$Adapter;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    .line 553
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 554
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 555
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 556
    new-instance v2, Lorg/telegram/ui/StatisticActivity$7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/StatisticActivity$7;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 562
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 564
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/StatisticActivity$8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/StatisticActivity$8;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 575
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 603
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda9;

    invoke-direct {v8, v0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 653
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 655
    new-instance v2, Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {v2, v1, v7, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 656
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 657
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v10, -0x2

    const/4 v11, -0x1

    const/16 v12, 0x33

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v4, :cond_6

    const/16 v4, 0x38

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

    .line 659
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 661
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 662
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->hideSubtitle()V

    .line 665
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/StatisticActivity$9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/StatisticActivity$9;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 675
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleColors(II)V

    .line 676
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 677
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 678
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 681
    iget-boolean v1, v0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    .line 682
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 683
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 684
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 685
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_3

    .line 687
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 688
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 693
    :goto_3
    new-instance v1, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2, v3, v7}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroidx/recyclerview/widget/LinearLayoutManager;Lorg/telegram/ui/StatisticActivity$1;)V

    iput-object v1, v0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    .line 694
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 371
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_6

    const/16 p1, 0xa

    .line 372
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 373
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    if-ne p1, p2, :cond_7

    const/4 p1, 0x2

    .line 374
    aget-object p1, p3, p1

    check-cast p1, Ljava/util/ArrayList;

    .line 375
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 378
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 379
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ltz v3, :cond_1

    .line 380
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 381
    iget-boolean v4, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-eqz v4, :cond_0

    .line 382
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iput-object v2, v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_4

    .line 394
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 395
    iget-object p3, p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez p3, :cond_3

    .line 396
    iget-object p1, p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

    iput p1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    goto :goto_3

    .line 399
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 403
    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_5

    .line 404
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadMessages()V

    .line 406
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz p1, :cond_7

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    goto :goto_4

    .line 411
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_7

    .line 412
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 413
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_7

    .line 414
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_7

    .line 415
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 416
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadStatistic()V

    :cond_7
    :goto_4
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

    .line 2225
    new-instance v10, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda7;

    invoke-direct {v10, v0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    .line 2250
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2252
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

    .line 2254
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

    .line 2255
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

    .line 2256
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    aput-object v4, v3, v30

    const-string v4, "shares"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move/from16 v29, v39

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    aput-object v4, v3, v30

    const-string v4, "date"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v35

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
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

    .line 2260
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v12

    move-object v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2262
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignatureAlpha:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2263
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartHintLine:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActiveLine:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2265
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartInactivePickerChart:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActivePickerChart:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2267
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2268
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object v1, v12

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2269
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2270
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v1, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v1, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2274
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2275
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v1, v9

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
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

    .line 2278
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

    .line 2279
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

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

    .line 2280
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

    .line 2281
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

    .line 2282
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

    .line 2283
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

    .line 2284
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

    .line 2285
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

    .line 2286
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

    .line 2287
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

    .line 2289
    iget-boolean v1, v0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_7

    move/from16 v1, v30

    :goto_1
    if-ge v1, v3, :cond_10

    if-nez v1, :cond_2

    .line 2293
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_2
    if-ne v1, v9, :cond_3

    .line 2295
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_3
    if-ne v1, v4, :cond_4

    .line 2297
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_4
    if-ne v1, v5, :cond_5

    .line 2299
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_6

    .line 2301
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    .line 2303
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 2305
    :goto_2
    invoke-static {v2, v11, v10}, Lorg/telegram/ui/StatisticActivity;->putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move/from16 v1, v30

    :goto_3
    const/16 v7, 0x9

    if-ge v1, v7, :cond_10

    if-nez v1, :cond_8

    .line 2311
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_8
    if-ne v1, v9, :cond_9

    .line 2313
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_9
    if-ne v1, v4, :cond_a

    .line 2315
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_a
    if-ne v1, v5, :cond_b

    .line 2317
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_b
    if-ne v1, v6, :cond_c

    .line 2319
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_c
    if-ne v1, v2, :cond_d

    .line 2321
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_d
    if-ne v1, v3, :cond_e

    .line 2323
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_e
    const/4 v7, 0x7

    if-ne v1, v7, :cond_f

    .line 2325
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    .line 2327
    :cond_f
    iget-object v7, v0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 2329
    :goto_4
    invoke-static {v7, v11, v10}, Lorg/telegram/ui/StatisticActivity;->putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    return-object v11
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 2851
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 2852
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

    .line 2857
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

    .line 2860
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadStatistic()V

    goto :goto_0

    .line 186
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 188
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 359
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 362
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 365
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
