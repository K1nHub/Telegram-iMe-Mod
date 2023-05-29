.class public Lorg/telegram/ui/ProxyListActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProxyListActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProxyListActivity$ListAdapter;,
        Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;
    }
.end annotation


# instance fields
.field private callsDetailRow:I

.field private callsRow:I

.field private connectionsHeaderRow:I

.field private currentConnectionState:I

.field private deleteAllRow:I

.field private enableProxyButtonRow:I

.field private listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private proxyAddRow:I

.field private proxyEndRow:I

.field private proxyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/SharedConfig$ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private proxyShadowRow:I

.field private proxyStartRow:I

.field private rotationRow:I

.field private rotationTimeoutInfoRow:I

.field private rotationTimeoutRow:I

.field private rowCount:I

.field private selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/SharedConfig$ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private useProxyForCalls:Z

.field private useProxyRow:I

.field private useProxySettings:Z

.field private useProxyShadowRow:I

.field private wasCheckedAllList:Z


# direct methods
.method public static synthetic $r8$lambda$HxKT8XTQwgGF-jMQdHBz29btjCg(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ProxyListActivity;->lambda$createView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OMOsOeklXqI_1VmQ0XsvpA_PDXA(ZLorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$updateRows$4(ZLorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_7dhxbsVqGJm58xcwTlQyC8D5mc(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$checkProxyList$6(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$jpFa93Vd-__Y0eWheViknYhehf0(Lorg/telegram/ui/ProxyListActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxyListActivity;->lambda$didReceivedNotification$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kFqkqI9DK2iri5BrQwLNICTtOuU(Lorg/telegram/ui/ProxyListActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$createView$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8A-28DlZ3Kzs8Vn_uPG9e3ITKk(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$checkProxyList$5(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGik8GRH-hMNOOPRcxunmWMKs7g(Lorg/telegram/ui/ProxyListActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rKJljbiDeg5zTAF_M3-NW1KqUOM(Lorg/telegram/ui/ProxyListActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity;->lambda$createView$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProxyListActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ProxyListActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyAddRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->connectionsHeaderRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->enableProxyButtonRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->callsDetailRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyShadowRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProxyListActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProxyListActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProxyListActivity;)Lorg/telegram/ui/ProxyListActivity$ListAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProxyListActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ProxyListActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ProxyListActivity;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return-void
.end method

.method private checkProxyList()V
    .locals 11

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 744
    iget-object v2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 745
    iget-boolean v3, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 748
    iput-boolean v3, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    .line 749
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v6, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v7, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v8, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v9, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    new-instance v10, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda5;

    invoke-direct {v10, v2}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->proxyCheckPingId:J

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$checkProxyList$5(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 3

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    const/4 v0, 0x0

    .line 751
    iput-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 753
    iput-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    const-wide/16 p1, 0x0

    .line 754
    iput-wide p1, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    goto :goto_0

    .line 756
    :cond_0
    iput-wide p1, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    .line 757
    iput-boolean v2, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    .line 759
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$checkProxyList$6(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V
    .locals 1

    .line 749
    new-instance v0, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 527
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->deleteProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 529
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 530
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    .line 531
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {p2, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 532
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    new-array v1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 533
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    invoke-virtual {p2, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 p2, 0x1

    .line 534
    invoke-direct {p0, p2}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    .line 535
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    if-eqz p2, :cond_1

    .line 536
    iget v0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 537
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->clearSelected()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 403
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->enableProxyButtonRow:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 404
    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 405
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonEnabled(Z)V

    goto/16 :goto_4

    .line 407
    :cond_0
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    const-string v4, "proxy_enabled"

    const-string v5, "proxy_secret"

    const-string v6, "proxy_port"

    const-string v7, "proxy_user"

    const-string v8, "proxy_pass"

    const-string v9, "proxy_ip"

    const/4 v10, 0x0

    if-ne v1, v2, :cond_8

    .line 408
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v1, :cond_2

    .line 409
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 412
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    if-nez v1, :cond_2

    .line 413
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    .line 414
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 415
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 419
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v2, v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 423
    :cond_1
    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 427
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    .line 428
    invoke-direct {v0, v3}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    .line 430
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    .line 432
    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 433
    iget-boolean v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 435
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    if-nez v1, :cond_4

    .line 436
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->enableProxyButtonRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v1, :cond_3

    .line 437
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_3

    .line 438
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 439
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 441
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setProxyButtonEnabled(Z)V

    .line 444
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    if-nez v1, :cond_6

    .line 445
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v1, :cond_5

    .line 446
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_5

    .line 447
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 448
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 450
    :cond_5
    iput-boolean v10, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 453
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 454
    iget-boolean v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    iget-boolean v11, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v12, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v13, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v14, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v15, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 459
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 460
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 462
    iget v1, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    :goto_1
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge v1, v2, :cond_13

    .line 463
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_7

    .line 465
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 466
    invoke-virtual {v2}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    :cond_8
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    if-ne v1, v2, :cond_9

    .line 470
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    xor-int/2addr v1, v3

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    .line 471
    move-object/from16 v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 472
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 473
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 475
    invoke-direct {v0, v3}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    goto/16 :goto_4

    .line 476
    :cond_9
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    const-string v11, "proxy_enabled_calls"

    if-ne v1, v2, :cond_a

    .line 477
    iget-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 478
    move-object/from16 v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 479
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 480
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 481
    iget-boolean v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    invoke-interface {v1, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 483
    :cond_a
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    if-lt v1, v2, :cond_11

    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge v1, v2, :cond_11

    .line 484
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 485
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->toggleSelected(I)V

    return-void

    .line 488
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    iget v12, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    sub-int/2addr v1, v12

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 489
    iput-boolean v3, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    .line 490
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 491
    iget-object v12, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-interface {v2, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 492
    iget-object v9, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 493
    iget-object v8, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 494
    iget v7, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 495
    iget-object v6, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    iget-boolean v5, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 497
    iget-object v4, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 498
    iput-boolean v10, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 499
    invoke-interface {v2, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 501
    :cond_c
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 503
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    :goto_2
    iget v4, v0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge v2, v4, :cond_f

    .line 504
    iget-object v4, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v4, :cond_e

    .line 506
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 507
    invoke-static {v4}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->access$2800(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object v5

    if-ne v5, v1, :cond_d

    move v5, v3

    goto :goto_3

    :cond_d
    move v5, v10

    :goto_3
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setChecked(Z)V

    .line 508
    invoke-virtual {v4}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 511
    :cond_f
    invoke-direct {v0, v10}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    .line 512
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v1, :cond_10

    .line 514
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 515
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 517
    :cond_10
    iget-boolean v4, v0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v5, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget v6, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object v7, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v8, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v9, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 518
    :cond_11
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->proxyAddRow:I

    if-ne v1, v2, :cond_12

    .line 519
    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxySettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_4

    .line 520
    :cond_12
    iget v2, v0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    if-ne v1, v2, :cond_13

    .line 521
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    sget v2, Lorg/telegram/messenger/R$string;->DeleteAllProxiesConfirm:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 523
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 524
    sget v2, Lorg/telegram/messenger/R$string;->DeleteProxyTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 525
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 541
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v2, -0x1

    .line 543
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 545
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;I)Z
    .locals 0

    .line 550
    iget p1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    if-lt p2, p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    if-ge p2, p1, :cond_0

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->toggleSelected(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$createView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$didReceivedNotification$7(Landroid/view/View;)V
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 782
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    if-eqz v0, :cond_1

    .line 783
    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 784
    invoke-static {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->access$2800(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->setChecked(Z)V

    .line 785
    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateRows$4(ZLorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 10

    .line 691
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-wide/32 v1, -0x30d40

    const-wide/16 v3, 0x0

    if-ne v0, p1, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 692
    :goto_0
    iget-boolean v7, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    const-wide/32 v8, 0x186a0

    if-nez v7, :cond_1

    add-long/2addr v5, v8

    :cond_1
    if-ne v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    .line 696
    :goto_1
    iget-boolean v3, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v3, :cond_3

    add-long/2addr v1, v8

    :cond_3
    const-wide/16 v3, 0x2710

    if-eqz p0, :cond_4

    if-eq p1, v0, :cond_4

    .line 699
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-long v5, p1

    mul-long/2addr v5, v3

    goto :goto_2

    :cond_4
    iget-wide v7, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr v5, v7

    :goto_2
    if-eqz p0, :cond_5

    .line 700
    sget-object p0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eq p2, p0, :cond_5

    sget-object p0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v3

    goto :goto_3

    :cond_5
    iget-wide p0, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr p0, v1

    .line 699
    :goto_3
    invoke-static {v5, v6, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private updateRows(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 648
    iput v0, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 649
    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyRow:I

    add-int/lit8 v3, v1, 0x1

    .line 650
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->enableProxyButtonRow:I

    .line 651
    iget-boolean v1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 652
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    .line 653
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v4, 0x1

    .line 654
    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    add-int/lit8 v4, v1, 0x1

    .line 655
    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    goto :goto_0

    .line 657
    :cond_0
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    .line 658
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    goto :goto_0

    .line 661
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationRow:I

    .line 662
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutRow:I

    .line 663
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    .line 665
    :goto_0
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->rotationTimeoutInfoRow:I

    if-ne v1, v3, :cond_2

    .line 666
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyShadowRow:I

    goto :goto_1

    .line 668
    :cond_2
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyShadowRow:I

    .line 670
    :goto_1
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->connectionsHeaderRow:I

    if-eqz p1, :cond_8

    .line 673
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 674
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 677
    iget-boolean v1, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    if-nez v1, :cond_6

    .line 678
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 679
    iget-boolean v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v5, :cond_4

    iget-wide v4, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    if-nez v1, :cond_7

    .line 685
    iput-boolean v2, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    goto :goto_3

    :cond_6
    move v1, v0

    .line 690
    :cond_7
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    new-instance v5, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 704
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 705
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    .line 706
    iget-object v4, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    .line 707
    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    goto :goto_4

    .line 709
    :cond_9
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    .line 710
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyEndRow:I

    .line 712
    :goto_4
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyAddRow:I

    add-int/lit8 v1, v4, 0x1

    .line 713
    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    .line 714
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const/4 v4, 0x2

    if-eqz v1, :cond_c

    iget-object v1, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    .line 723
    :cond_a
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    if-eq v1, v3, :cond_b

    move v0, v2

    .line 724
    :cond_b
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    .line 725
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->callsDetailRow:I

    if-nez p1, :cond_e

    if-eqz v0, :cond_e

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_6

    .line 715
    :cond_c
    :goto_5
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    if-ne v1, v3, :cond_d

    move v0, v2

    .line 716
    :cond_d
    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->callsRow:I

    add-int/lit8 v1, v5, 0x1

    .line 717
    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ProxyListActivity;->callsDetailRow:I

    if-nez p1, :cond_e

    if-eqz v0, :cond_e

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyShadowRow:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 731
    :cond_e
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_f

    .line 732
    iget v0, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    goto :goto_7

    .line 734
    :cond_f
    iput v3, p0, Lorg/telegram/ui/ProxyListActivity;->deleteAllRow:I

    .line 736
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/ProxyListActivity;->checkProxyList()V

    if-eqz p1, :cond_10

    .line 737
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    if-eqz p1, :cond_10

    .line 738
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_10
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->ProxySettings:I

    const-string v4, "ProxySettings"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 372
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProxyListActivity$1;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 382
    new-instance v0, Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    .line 384
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 385
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 388
    new-instance v3, Lorg/telegram/ui/ProxyListActivity$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ProxyListActivity$2;-><init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 395
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 396
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 397
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 398
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 399
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x33

    const/4 v5, -0x1

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 558
    new-instance v3, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v4, 0x12

    .line 559
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 560
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 561
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 562
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x48

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v3, p0, Lorg/telegram/ui/ProxyListActivity;->selectedCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v4, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 565
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_share:I

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 566
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ProxyListActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ProxyListActivity$3;-><init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    .line 779
    sget v0, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 780
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ProxyListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProxyListActivity;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    .line 789
    invoke-direct {p0, v1}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    goto/16 :goto_0

    .line 790
    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 791
    invoke-direct {p0, v2}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    goto/16 :goto_0

    .line 792
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, v0, :cond_3

    .line 793
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 794
    iget p2, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    if-eq p2, p1, :cond_9

    .line 795
    iput p1, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_9

    sget-object p1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz p1, :cond_9

    .line 797
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 799
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_2

    .line 801
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 802
    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    .line 806
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 807
    invoke-direct {p0, v2}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    goto :goto_0

    .line 811
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    if-ne p1, p2, :cond_9

    .line 812
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_9

    .line 813
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 814
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 816
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ProxyListActivity;->proxyStartRow:I

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_4

    .line 818
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    .line 819
    invoke-virtual {p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    .line 824
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    if-nez p1, :cond_8

    .line 825
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity;->proxyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 826
    iget-boolean p3, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez p3, :cond_6

    iget-wide p2, p2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-nez p2, :cond_5

    :cond_6
    move v1, v2

    :cond_7
    if-nez v1, :cond_8

    .line 832
    iput-boolean v2, p0, Lorg/telegram/ui/ProxyListActivity;->wasCheckedAllList:Z

    :cond_8
    if-nez v1, :cond_9

    .line 836
    invoke-direct {p0, v2}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-class v6, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v6, v5, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v11

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v20, v23

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v11

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v32, v6

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v11

    const-string v4, "valueTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v7, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v7, v8

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v26, v7, v8

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v8, v7, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText6:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v7

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v7

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v15, v3, v7

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v7, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v32

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v7, v8

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v35, v7, v8

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v8, v7, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v37

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v36, v7

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v7

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v15, v3, v7

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v7, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;

    aput-object v8, v7, v11

    const-string v8, "checkImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v37

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v36, v7

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v15, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v6, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v6

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    const-string v4, "checkBox"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v6, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v6

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v11

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProxyListActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ProxyListActivity$ListAdapter;->clearSelected()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    .line 766
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 336
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 338
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadProxyList()V

    .line 339
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ProxyListActivity;->currentConnectionState:I

    .line 341
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 342
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 343
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 344
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 346
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "proxy_enabled"

    const/4 v2, 0x0

    .line 347
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ProxyListActivity;->useProxySettings:Z

    const-string v1, "proxy_enabled_calls"

    .line 348
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ProxyListActivity;->useProxyForCalls:Z

    .line 350
    invoke-direct {p0, v3}, Lorg/telegram/ui/ProxyListActivity;->updateRows(Z)V

    return v3
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 357
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 358
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 359
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 360
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 361
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 771
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity;->listAdapter:Lorg/telegram/ui/ProxyListActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
