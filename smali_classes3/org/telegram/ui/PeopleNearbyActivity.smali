.class public Lorg/telegram/ui/PeopleNearbyActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PeopleNearbyActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/LocationController$LocationFetchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;,
        Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;,
        Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;,
        Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;
    }
.end annotation


# instance fields
.field private actionBarAnimator:Landroid/animation/AnimatorSet;

.field private actionBarBackground:Landroid/view/View;

.field private animatingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private canCreateGroup:Z

.field private chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation
.end field

.field private chatsCreateRow:I

.field private chatsEndRow:I

.field private chatsHeaderRow:I

.field private chatsSectionRow:I

.field private chatsStartRow:I

.field private checkExpiredRunnable:Ljava/lang/Runnable;

.field private checkingCanCreate:Z

.field private currentGroupCreateAddress:Ljava/lang/String;

.field private currentGroupCreateDisplayAddress:Ljava/lang/String;

.field private currentGroupCreateLocation:Landroid/location/Location;

.field private expanded:Z

.field private firstLoaded:Z

.field private groupCreateActivity:Lorg/telegram/ui/ActionIntroActivity;

.field private helpRow:I

.field private helpSectionRow:I

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private lastLoadedLocation:Landroid/location/Location;

.field private lastLoadedLocationTime:J

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

.field private loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private location:[I

.field private reqId:I

.field private rowCount:I

.field private shortPollRunnable:Ljava/lang/Runnable;

.field private showMeRow:I

.field private showMoreRow:I

.field private showProgressAnimation:Landroid/animation/AnimatorSet;

.field private showProgressRunnable:Ljava/lang/Runnable;

.field private showingLoadingProgress:Z

.field private showingMe:Z

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation
.end field

.field private usersEndRow:I

.field private usersHeaderRow:I

.field private usersSectionRow:I

.field private usersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$B0cmbZ_zmST2EPtV2ECW8175vpA(Lorg/telegram/ui/PeopleNearbyActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$getThemeDescriptions$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$F2Plftu2v5cjcIDPnzYLfylpg5c(Lorg/telegram/ui/PeopleNearbyActivity;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$sendRequest$6(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H84p3MyH-Op882Gq1wIEcR14-Fo(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$checkCanCreateGroup$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QYai5fqR9tiNQwtMBWnCJJV0tD8(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$checkCanCreateGroup$3(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R_UluTvOElowLB2XSMbtq4RY7gk(Lorg/telegram/ui/PeopleNearbyActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$checkForExpiredLocations$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$S3ayKggji5BRbEYwN4ZV2vbDZnU(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/tgnet/TLRPC$Chat;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$didReceivedNotification$8(Lorg/telegram/tgnet/TLRPC$Chat;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WfT7BUkVf2VcIrwLiLaZOYuAJ1w(Lorg/telegram/ui/PeopleNearbyActivity;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$sendRequest$7(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zq6he1BMYBnV5gW4HPK98t3pgjs(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$createView$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cBxPChAbEY73YmrCx1LFVVO0wwU(Lorg/telegram/ui/PeopleNearbyActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$sendRequest$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$tZulKNWokpH7YlWP6_4Rak1LoWw(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/messenger/UserConfig;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$createView$1(Lorg/telegram/messenger/UserConfig;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w65nd5DxhfXrLw-CFBz-gzTv244(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity;->lambda$createView$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->animatingViews:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeopleNearbyActivity$1;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->shortPollRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 462
    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->location:[I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocationController;->getCachedNearbyUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocationController;->getCachedNearbyChats()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity;->checkForExpiredLocations(Z)V

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->shortPollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PeopleNearbyActivity;ZI)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeopleNearbyActivity;->sendRequest(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->helpSectionRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersHeaderRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMoreRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersSectionRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsHeaderRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsCreateRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsSectionRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMeRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PeopleNearbyActivity;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PeopleNearbyActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PeopleNearbyActivity;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity;->checkScroll(Z)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PeopleNearbyActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PeopleNearbyActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2502(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->animatingViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PeopleNearbyActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PeopleNearbyActivity;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showingLoadingProgress:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersStartRow:I

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/PeopleNearbyActivity;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showingMe:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersEndRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsStartRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsEndRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PeopleNearbyActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->helpRow:I

    return p0
.end method

.method private checkCanCreateGroup()V
    .locals 3

    .line 519
    iget-boolean v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkingCanCreate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkingCanCreate:Z

    .line 523
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 524
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->by_location:Z

    .line 525
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;->check_limit:Z

    .line 526
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 539
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private checkForExpiredLocations(Z)V
    .locals 13

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkExpiredRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 806
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 807
    iput-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkExpiredRunnable:Ljava/lang/Runnable;

    .line 809
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v6, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7fffffff

    :goto_0
    const/4 v8, 0x2

    if-ge v4, v8, :cond_5

    if-nez v4, :cond_1

    .line 814
    iget-object v8, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    .line 815
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    .line 816
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 817
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->expires:I

    const/4 v12, 0x1

    if-gt v11, v0, :cond_3

    if-nez v6, :cond_2

    .line 819
    new-instance v6, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/ui/PeopleNearbyActivity$1;)V

    .line 820
    invoke-virtual {v6}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->saveCurrentState()V

    .line 822
    :cond_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v5, 0x1

    goto :goto_3

    .line 827
    :cond_3
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_3
    add-int/2addr v10, v12

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listViewAdapter:Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

    if-eqz v1, :cond_6

    .line 832
    invoke-direct {p0, v6}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    :cond_6
    if-nez v5, :cond_7

    if-eqz p1, :cond_8

    .line 835
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/LocationController;->setCachedNearbyUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_8
    if-eq v7, v2, :cond_9

    .line 838
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkExpiredRunnable:Ljava/lang/Runnable;

    sub-int/2addr v7, v0

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v0, v7

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method private checkScroll(Z)V
    .locals 10

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 469
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;

    .line 474
    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;->access$2200(Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PeopleNearbyActivity;->location:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 475
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->location:[I

    aget v3, v3, v2

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;->access$2200(Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    if-ge v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 478
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eq v0, v3, :cond_b

    .line 480
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    move-object v5, v4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 481
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_5

    .line 482
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 483
    iput-object v4, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    .line 486
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    .line 487
    iget-object v6, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz v0, :cond_6

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    aput v9, v8, v1

    .line 488
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 489
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v2

    .line 487
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeopleNearbyActivity$7;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 502
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    if-eqz v0, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 503
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    :goto_8
    return-void
.end method

.method private synthetic lambda$checkCanCreateGroup$3(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 527
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->canCreateGroup:Z

    .line 528
    iput-boolean v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkingCanCreate:Z

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 531
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 533
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    .line 535
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 536
    invoke-direct {p0}, Lorg/telegram/ui/PeopleNearbyActivity;->openGroupCreate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkCanCreateGroup$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 526
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkForExpiredLocations$9()V
    .locals 1

    const/4 v0, 0x0

    .line 839
    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkExpiredRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 840
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity;->checkForExpiredLocations(Z)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 399
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/messenger/UserConfig;Landroid/content/DialogInterface;I)V
    .locals 0

    const p2, 0x7fffffff

    .line 416
    iput p2, p1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    const/4 p2, 0x0

    .line 417
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    const/4 p1, 0x1

    .line 418
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/PeopleNearbyActivity;->sendRequest(ZI)V

    const/4 p1, 0x0

    .line 419
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)V
    .locals 7

    .line 368
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersStartRow:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt p2, v0, :cond_2

    iget v4, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersEndRow:I

    if-ge p2, v4, :cond_2

    .line 372
    instance-of v4, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_a

    .line 373
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 374
    iget-object v4, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-string v6, "user_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 377
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->hasAvatarSet()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "expandPhoto"

    .line 378
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    :cond_1
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->distance:I

    const-string v1, "nearby_distance"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-virtual {p1, v4, v5, v3, v2}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)V

    .line 382
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 384
    :cond_2
    iget p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsStartRow:I

    if-lt p2, p1, :cond_4

    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsEndRow:I

    if-ge p2, v0, :cond_4

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 386
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 388
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v0, :cond_3

    .line 389
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_0

    .line 391
    :cond_3
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_0
    const-string p1, "chat_id"

    .line 393
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 394
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 395
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 396
    :cond_4
    iget p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsCreateRow:I

    if-ne p2, p1, :cond_7

    .line 397
    iget-boolean p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkingCanCreate:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateAddress:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_1

    .line 403
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/PeopleNearbyActivity;->openGroupCreate()V

    goto/16 :goto_3

    .line 398
    :cond_6
    :goto_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 399
    new-instance p2, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 404
    :cond_7
    iget p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMeRow:I

    if-ne p2, p1, :cond_9

    .line 405
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    .line 406
    iget-boolean p2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showingMe:Z

    if-eqz p2, :cond_8

    .line 407
    iput v3, p1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    .line 408
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    const/4 p2, 0x2

    .line 409
    invoke-direct {p0, v3, p2}, Lorg/telegram/ui/PeopleNearbyActivity;->sendRequest(ZI)V

    .line 410
    invoke-direct {p0, v2}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    goto :goto_2

    .line 412
    :cond_8
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    sget v0, Lorg/telegram/messenger/R$string;->MakeMyselfVisibleTitle:I

    const-string v1, "MakeMyselfVisibleTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 414
    sget v0, Lorg/telegram/messenger/R$string;->MakeMyselfVisibleInfo:I

    const-string v1, "MakeMyselfVisibleInfo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 415
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/messenger/UserConfig;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 421
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 422
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 424
    :goto_2
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto :goto_3

    .line 425
    :cond_9
    iget p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMoreRow:I

    if-ne p2, p1, :cond_a

    .line 426
    iput-boolean v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->expanded:Z

    .line 427
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/ui/PeopleNearbyActivity$1;)V

    .line 428
    invoke-virtual {p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->saveCurrentState()V

    .line 429
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$8(Lorg/telegram/tgnet/TLRPC$Chat;JZ)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 787
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0, p4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JIZ)V

    goto :goto_0

    .line 790
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v2, p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p4

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    goto :goto_0

    .line 793
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0, p4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JIZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$10()V
    .locals 5

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1074
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1076
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1077
    instance-of v4, v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_0

    .line 1078
    check-cast v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendRequest$5()V
    .locals 1

    const/4 v0, 0x1

    .line 583
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity;->showLoadingProgress(Z)V

    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$sendRequest$6(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 11

    const/4 v0, 0x0

    .line 622
    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->reqId:I

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 624
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 625
    iput-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressRunnable:Ljava/lang/Runnable;

    .line 627
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity;->showLoadingProgress(Z)V

    .line 629
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_1

    .line 631
    iput v0, v1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    .line 633
    invoke-direct {p0, v2}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_a

    const/4 v4, 0x2

    if-eq p1, v4, :cond_a

    .line 636
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 637
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 638
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 640
    new-instance p1, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/ui/PeopleNearbyActivity$1;)V

    .line 641
    invoke-virtual {p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->saveCurrentState()V

    .line 643
    iget-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 645
    iget v2, v1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    if-eqz v2, :cond_2

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int p2, v4

    iput p2, v1, Lorg/telegram/messenger/UserConfig;->lastMyLocationShareTime:I

    const/4 p2, 0x1

    .line 650
    :cond_2
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_8

    .line 651
    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Update;

    .line 652
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;

    if-eqz v7, :cond_7

    .line 653
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;

    .line 654
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;->peers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_7

    .line 655
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;->peers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$PeerLocated;

    .line 656
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    if-eqz v10, :cond_4

    .line 657
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 658
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v10, :cond_3

    .line 659
    iget-object v10, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 661
    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 663
    :cond_4
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_peerSelfLocated;

    if-eqz v10, :cond_6

    .line 665
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_peerSelfLocated;

    .line 666
    iget v5, v1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_peerSelfLocated;->expires:I

    if-eq v5, v9, :cond_5

    .line 667
    iput v9, v1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    const/4 p2, 0x1

    :cond_5
    const/4 v5, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    if-nez v5, :cond_9

    .line 674
    iget p3, v1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    if-eqz p3, :cond_9

    .line 675
    iput v0, v1, Lorg/telegram/messenger/UserConfig;->sharingMyLocationUntil:I

    const/4 p2, 0x1

    .line 679
    :cond_9
    invoke-direct {p0, v3}, Lorg/telegram/ui/PeopleNearbyActivity;->checkForExpiredLocations(Z)V

    .line 680
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    :cond_a
    if-eqz p2, :cond_b

    .line 683
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 685
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_c

    .line 686
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->shortPollRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x61a8

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$sendRequest$7(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 621
    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openGroupCreate()V
    .locals 4

    .line 509
    iget-boolean v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->canCreateGroup:Z

    if-nez v0, :cond_0

    .line 510
    sget v0, Lorg/telegram/messenger/R$string;->YourLocatedChannelsTooMuch:I

    const-string v1, "YourLocatedChannelsTooMuch"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    return-void

    .line 513
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->groupCreateActivity:Lorg/telegram/ui/ActionIntroActivity;

    .line 514
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateAddress:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateDisplayAddress:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionIntroActivity;->setGroupCreateAddress(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->groupCreateActivity:Lorg/telegram/ui/ActionIntroActivity;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private sendRequest(ZI)V
    .locals 7

    .line 581
    iget-boolean v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->firstLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 586
    iput-boolean v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->firstLoaded:Z

    .line 588
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocationController;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 592
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateLocation:Landroid/location/Location;

    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->lastLoadedLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    .line 594
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    .line 595
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_2

    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "located distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    if-nez p2, :cond_4

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/PeopleNearbyActivity;->lastLoadedLocationTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->lastLoadedLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 599
    :cond_4
    :goto_0
    iget p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->reqId:I

    if-eqz p1, :cond_5

    .line 600
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->reqId:I

    invoke-virtual {p1, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 601
    iput v2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->reqId:I

    .line 607
    :cond_5
    iget p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->reqId:I

    if-eqz p1, :cond_6

    return-void

    .line 610
    :cond_6
    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->lastLoadedLocation:Landroid/location/Location;

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->lastLoadedLocationTime:J

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateLocation:Landroid/location/Location;

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocationController;->fetchLocationAddress(Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    .line 613
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;-><init>()V

    .line 614
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 615
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 616
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    if-eqz p2, :cond_8

    .line 618
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->flags:I

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->flags:I

    if-ne p2, v1, :cond_7

    const v2, 0x7fffffff

    .line 619
    :cond_7
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getLocated;->self_expires:I

    .line 621
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;I)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->reqId:I

    .line 690
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->reqId:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private showLoadingProgress(Z)V
    .locals 8

    .line 543
    iget-boolean v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showingLoadingProgress:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 546
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showingLoadingProgress:Z

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressAnimation:Landroid/animation/AnimatorSet;

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_2

    return-void

    .line 554
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 557
    iget-object v4, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 558
    instance-of v5, v4, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;

    if-eqz v5, :cond_4

    .line 559
    check-cast v4, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;

    .line 560
    iget-object v5, p0, Lorg/telegram/ui/PeopleNearbyActivity;->animatingViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {v4}, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;->access$2400(Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    if-eqz p1, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 567
    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressAnimation:Landroid/animation/AnimatorSet;

    .line 568
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeopleNearbyActivity$8;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    const/4 v1, -0x1

    .line 145
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersStartRow:I

    .line 146
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersEndRow:I

    .line 147
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMoreRow:I

    .line 148
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsStartRow:I

    .line 149
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsEndRow:I

    .line 150
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsCreateRow:I

    .line 151
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMeRow:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 153
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->helpRow:I

    add-int/lit8 v0, v1, 0x1

    .line 154
    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->helpSectionRow:I

    add-int/lit8 v1, v0, 0x1

    .line 155
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 156
    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMeRow:I

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-boolean v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->expanded:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 162
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 164
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersStartRow:I

    add-int/2addr v1, v0

    .line 165
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    .line 166
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersEndRow:I

    .line 167
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 168
    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showMoreRow:I

    .line 171
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->usersSectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 173
    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsHeaderRow:I

    add-int/lit8 v1, v0, 0x1

    .line 174
    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsCreateRow:I

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsStartRow:I

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    .line 178
    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsEndRow:I

    .line 180
    :cond_2
    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->chatsSectionRow:I

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listViewAdapter:Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listViewAdapter:Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 188
    iget-object v0, p1, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 189
    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listViewAdapter:Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "listSelectorSDK21"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/16 v5, 0x15

    if-lt v2, v5, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PeopleNearby:I

    const-string v5, "PeopleNearby"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PeopleNearbyActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PeopleNearbyActivity$2;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 335
    new-instance v0, Lorg/telegram/ui/PeopleNearbyActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$3;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v5, "windowBackgroundGray"

    .line 350
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 354
    new-instance v5, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 355
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 356
    iget-object v5, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p1, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v6, p0, Lorg/telegram/ui/PeopleNearbyActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 357
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listViewAdapter:Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 358
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 359
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v3, Lorg/telegram/ui/PeopleNearbyActivity$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PeopleNearbyActivity$4;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    iput-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 367
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 432
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PeopleNearbyActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PeopleNearbyActivity$5;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 439
    new-instance v3, Lorg/telegram/ui/PeopleNearbyActivity$6;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$6;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    .line 451
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 452
    iget-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    const/4 v3, -0x2

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    new-instance v2, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x53

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x8

    .line 456
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-direct {p0, v1}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v0, p1

    .line 746
    sget v1, Lorg/telegram/messenger/NotificationCenter;->newLocationAvailable:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 747
    invoke-direct {v6, v2, v2}, Lorg/telegram/ui/PeopleNearbyActivity;->sendRequest(ZI)V

    goto/16 :goto_7

    .line 748
    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->newPeopleNearbyAvailable:I

    if-ne v0, v1, :cond_9

    .line 749
    aget-object v0, p3, v2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;

    .line 750
    new-instance v1, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;

    const/4 v3, 0x0

    invoke-direct {v1, v6, v3}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/ui/PeopleNearbyActivity$1;)V

    .line 751
    invoke-virtual {v1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->saveCurrentState()V

    .line 752
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;->peers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    .line 753
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerLocated;->peers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PeerLocated;

    .line 754
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    if-eqz v8, :cond_7

    .line 755
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 758
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v8, :cond_1

    .line 759
    iget-object v8, v6, Lorg/telegram/ui/PeopleNearbyActivity;->users:Ljava/util/ArrayList;

    goto :goto_1

    .line 761
    :cond_1
    iget-object v8, v6, Lorg/telegram/ui/PeopleNearbyActivity;->chats:Ljava/util/ArrayList;

    .line 763
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v9, :cond_6

    .line 764
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    .line 765
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 p1, v8

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v2, v13, v7

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    :goto_3
    move-object/from16 v8, p1

    goto :goto_5

    :cond_3
    move-object/from16 p1, v8

    :goto_4
    iget-wide v7, v12, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v2, v7, v15

    if-eqz v2, :cond_4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v2, v7, v13

    if-eqz v2, :cond_2

    :cond_4
    iget-wide v7, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v2, v7, v15

    if-eqz v2, :cond_5

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v2, v7, v12

    if-nez v2, :cond_5

    goto :goto_3

    .line 766
    :goto_5
    invoke-virtual {v8, v10, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v8, p1

    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    if-nez v11, :cond_7

    .line 771
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    .line 775
    invoke-direct {v6, v2}, Lorg/telegram/ui/PeopleNearbyActivity;->checkForExpiredLocations(Z)V

    .line 776
    invoke-direct {v6, v1}, Lorg/telegram/ui/PeopleNearbyActivity;->updateRows(Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;)V

    goto :goto_7

    .line 777
    :cond_9
    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    if-ne v0, v1, :cond_c

    .line 778
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    .line 781
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v0, 0x1

    .line 782
    aget-object v1, p3, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x2

    .line 783
    aget-object v0, p3, v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x3

    .line 784
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 785
    new-instance v9, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda5;

    move-object v0, v9

    move-object/from16 v1, p0

    move-wide v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/tgnet/TLRPC$Chat;JZ)V

    .line 796
    iget-object v0, v6, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 797
    invoke-virtual {v0, v7, v8, v1, v9}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    goto :goto_7

    .line 799
    :cond_b
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    nop

    :cond_c
    :goto_7
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

    .line 1070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    new-instance v11, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda9;

    invoke-direct {v11, v0}, Lorg/telegram/ui/PeopleNearbyActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    .line 1084
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/ManageChatTextCell;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-class v6, Landroid/widget/TextView;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v16, v3, v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundGray"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v5, v3

    const/4 v9, 0x0

    const-string v10, "windowBackgroundWhite"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PeopleNearbyActivity;->actionBarBackground:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v21, "windowBackgroundWhite"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "windowBackgroundWhiteBlackText"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "listSelectorSDK21"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v21, "listSelectorSDK21"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v12

    const-string v21, "windowBackgroundGrayShadow"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-string v14, "textView"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/PeopleNearbyActivity$HeaderCellProgress;

    aput-object v5, v4, v12

    const-string v5, "progressView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "windowBackgroundWhiteBlueHeader"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v12

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, "windowBackgroundWhiteBlackText"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 1104
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 1105
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v12

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v18, 0x0

    const-string v23, "avatar_text"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
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

    .line 1107
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;

    aput-object v5, v4, v12

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const-string v23, "chats_archiveBackground"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/PeopleNearbyActivity$HintInnerCell;

    aput-object v6, v4, v12

    const-string v6, "messageTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "chats_message"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteBlackText"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteBlueButton"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "windowBackgroundWhiteBlueIcon"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "windowBackgroundWhiteRedText5"

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v28

    const-string v32, "windowBackgroundWhiteRedText5"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v21, "undo_background"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/UndoView;

    aput-object v3, v6, v12

    const-string v3, "undoImageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "undo_cancelColor"

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v12

    const-string v4, "undoTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v21, 0x0

    const-string v22, "undo_cancelColor"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v28, 0x0

    const-string v31, "undo_infoColor"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v12

    const-string v4, "subinfoTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "undo_infoColor"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/UndoView;

    aput-object v5, v4, v12

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const-string v31, "undo_infoColor"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v12

    const-string v4, "progressPaint"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "undo_infoColor"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isLightStatusBar()Z
    .locals 6

    const-string v0, "windowBackgroundWhite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1064
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[ZZ)I

    move-result v0

    .line 1065
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 713
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 1

    .line 740
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    const/4 v0, 0x0

    .line 741
    iput-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->groupCreateActivity:Lorg/telegram/ui/ActionIntroActivity;

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 281
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 282
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newLocationAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 283
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newPeopleNearbyAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 285
    invoke-direct {p0}, Lorg/telegram/ui/PeopleNearbyActivity;->checkCanCreateGroup()V

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/PeopleNearbyActivity;->sendRequest(ZI)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->shortPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x61a8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 293
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 294
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newLocationAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 295
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newPeopleNearbyAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 296
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->shortPollRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 299
    iput-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->shortPollRunnable:Ljava/lang/Runnable;

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkExpiredRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 302
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 303
    iput-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkExpiredRunnable:Ljava/lang/Runnable;

    .line 305
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 306
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 307
    iput-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->showProgressRunnable:Ljava/lang/Runnable;

    .line 309
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_3
    return-void
.end method

.method public onLocationAddressAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .line 721
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateAddress:Ljava/lang/String;

    .line 722
    iput-object p2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateDisplayAddress:Ljava/lang/String;

    .line 723
    iput-object p3, p0, Lorg/telegram/ui/PeopleNearbyActivity;->currentGroupCreateLocation:Landroid/location/Location;

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->groupCreateActivity:Lorg/telegram/ui/ActionIntroActivity;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionIntroActivity;->setGroupCreateAddress(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    .line 727
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/PeopleNearbyActivity;->checkingCanCreate:Z

    if-nez p2, :cond_1

    .line 729
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 731
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 733
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity;->loadingDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 734
    invoke-direct {p0}, Lorg/telegram/ui/PeopleNearbyActivity;->openGroupCreate()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 704
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 706
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 708
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocationController;->startLocationLookupForPeopleNearby(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 695
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity;->listViewAdapter:Lorg/telegram/ui/PeopleNearbyActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 699
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocationController;->startLocationLookupForPeopleNearby(Z)V

    return-void
.end method
