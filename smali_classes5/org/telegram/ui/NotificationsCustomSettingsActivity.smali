.class public Lorg/telegram/ui/NotificationsCustomSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "NotificationsCustomSettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;,
        Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

.field private alertRow:I

.field private alertSection2Row:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private currentType:I

.field private deleteAllRow:I

.field private deleteAllSectionRow:I

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private exceptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionsAddRow:I

.field private exceptionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionsEndRow:I

.field private exceptionsSection2Row:I

.field private exceptionsStartRow:I

.field private groupSection2Row:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messageLedRow:I

.field private messagePopupNotificationRow:I

.field private messagePriorityRow:I

.field private messageSectionRow:I

.field private messageSoundRow:I

.field private messageVibrateRow:I

.field private previewRow:I

.field private rowCount:I

.field private searchAdapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field topicId:I


# direct methods
.method public static synthetic $r8$lambda$0Z-uL13lfd9oFypmP9lLJGvywCU(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0vPSAhH3PvmQ7a3OslGVaKcbXUk(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$0(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1gGofHdFwMWvoiWjY6ukFpRcV1s(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$8(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$2xmY-bv54I9xt0Sc0J7CBQsx7FM(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$1(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6BJ2uKMdSyh1KGndf-1ljOXicP0(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$loadExceptions$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$In7t_OEvDflyXiXeuaUJbCEE59A(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IrvjnB8eeeZZMo9-uFmAFPyZEro(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$getThemeDescriptions$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$NcCg9g8b6DzcCdTFXtruFLbI-x0(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YVabcR2XI177j8FG2LbfvBSwGmU(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Lorg/telegram/ui/Cells/NotificationsCheckCell;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$3(Lorg/telegram/ui/Cells/NotificationsCheckCell;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$_zCXK3BppNMbQFJtvzAJhxxeAE0(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$loadExceptions$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ivqpyS3U4RcFQhL76l3iam3xFMc(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nxLUBd9ZCyb1MacO4YfsiUGmrFk(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;",
            ">;Z)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsDict:Ljava/util/HashMap;

    .line 114
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    .line 122
    iput p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    .line 123
    iput-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 125
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsDict:Ljava/util/HashMap;

    iget-wide v2, p2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 129
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->loadExceptions()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searching:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSectionRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->previewRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsStartRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsEndRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->deleteAllSectionRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->groupSection2Row:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsSection2Row:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->deleteAllRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searchAdapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSoundRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageVibrateRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePriorityRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePopupNotificationRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsAddRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageLedRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->alertSection2Row:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->alertRow:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/HashMap;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsDict:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->checkRowsEnabled()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    return p0
.end method

.method private checkRowsEnabled()V
    .locals 7

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 634
    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 635
    iget-object v5, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 636
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 655
    :cond_1
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 656
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 650
    :cond_2
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextColorCell;

    .line 651
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 645
    :cond_3
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 646
    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 638
    :cond_4
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/HeaderCell;

    .line 639
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSectionRow:I

    if-ne v4, v6, :cond_5

    .line 640
    invoke-virtual {v5, v2, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setEnabled(ZLjava/util/ArrayList;)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 661
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 663
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 665
    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 666
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$5;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 414
    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 408
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x0

    .line 409
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide p2, p2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    const-string p4, "dialog_id"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "exception"

    const/4 p3, 0x1

    .line 410
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    new-instance p2, Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p4

    invoke-direct {p2, p1, p4}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 412
    new-instance p1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->setDelegate(Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;)V

    .line 416
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return p3
.end method

.method private synthetic lambda$createView$2(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 425
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 426
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 427
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 428
    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 431
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v2, :cond_0

    .line 433
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v0

    :goto_1
    if-ge p2, p1, :cond_2

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    .line 439
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    iget v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-virtual {v2, v3, v4, v1, v0}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JIZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 442
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x1

    .line 444
    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->updateRows(Z)V

    .line 445
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/ui/Cells/NotificationsCheckCell;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 3

    .line 469
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p4

    .line 470
    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "EnableAll2"

    .line 471
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "EnableGroup2"

    .line 473
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    goto :goto_0

    :cond_1
    const-string v0, "EnableChannel2"

    .line 475
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    .line 477
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    if-ge p4, v0, :cond_2

    goto :goto_1

    :cond_2
    const v2, 0x1e13380

    sub-int/2addr p4, v2

    if-lt p4, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 486
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p4

    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(I)Z

    move-result p4

    invoke-virtual {p1, p4, v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(ZI)V

    if-eqz p2, :cond_4

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 490
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->checkRowsEnabled()V

    return-void
.end method

.method private synthetic lambda$createView$4(I)V
    .locals 2

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(I)V
    .locals 2

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$6(I)V
    .locals 2

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(I)V
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 23

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v0, p3

    .line 224
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searchAdapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eq v1, v2, :cond_1a

    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsStartRow:I

    if-lt v0, v1, :cond_1

    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsEndRow:I

    if-ge v0, v1, :cond_1

    goto/16 :goto_7

    .line 395
    :cond_1
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsAddRow:I

    if-ne v0, v1, :cond_4

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "onlySelect"

    .line 397
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "checkCanWrite"

    .line 398
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    const-string v2, "dialogsType"

    if-nez v1, :cond_2

    const/4 v1, 0x6

    .line 400
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const/4 v1, 0x5

    .line 402
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    .line 404
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    :goto_0
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 407
    new-instance v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, v10}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 419
    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_6

    .line 420
    :cond_4
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->deleteAllRow:I

    if-ne v0, v1, :cond_5

    .line 421
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    sget v1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionTitle:I

    const-string v2, "NotificationsDeleteAllExceptionTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 423
    sget v1, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllExceptionAlert:I

    const-string v2, "NotificationsDeleteAllExceptionAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 424
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v10}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 447
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 449
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 450
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    const-string v1, "dialogTextRed"

    .line 452
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 454
    :cond_5
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->alertRow:I

    if-ne v0, v1, :cond_8

    .line 455
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(I)Z

    move-result v12

    .line 457
    move-object v1, v11

    check-cast v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 458
    iget-object v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v12, :cond_7

    .line 460
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget v5, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/NotificationsController;->setGlobalNotificationsEnabled(II)V

    .line 461
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    if-eqz v2, :cond_6

    .line 463
    iget-object v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 465
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->checkRowsEnabled()V

    goto :goto_1

    :cond_7
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 467
    iget v6, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    iget-object v7, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    iget v8, v10, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v13, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v13, v10, v1, v2, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Lorg/telegram/ui/Cells/NotificationsCheckCell;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    move-object/from16 v1, p0

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v13

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->showCustomNotificationsDialog(Lorg/telegram/ui/ActionBar/BaseFragment;JIILjava/util/ArrayList;ILorg/telegram/messenger/MessagesStorage$IntCallback;)V

    :goto_1
    move v3, v12

    goto/16 :goto_6

    .line 493
    :cond_8
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->previewRow:I

    if-ne v0, v1, :cond_c

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 497
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 499
    iget v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    if-ne v2, v9, :cond_a

    const-string v2, "EnablePreviewAll"

    .line 500
    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 501
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_a
    if-nez v2, :cond_b

    const-string v2, "EnablePreviewGroup"

    .line 503
    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 504
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_b
    const-string v2, "EnablePreviewChannel"

    .line 506
    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 507
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 509
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(I)V

    goto/16 :goto_6

    .line 511
    :cond_c
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSoundRow:I

    if-ne v0, v1, :cond_e

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 516
    :cond_d
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 517
    iget v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    new-instance v1, Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/NotificationsSoundActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v10, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    .line 553
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 555
    :cond_e
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageLedRow:I

    if-ne v0, v1, :cond_10

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 559
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    new-instance v2, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v10, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JIILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_6

    .line 565
    :cond_10
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePopupNotificationRow:I

    if-ne v0, v1, :cond_12

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 569
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    new-instance v4, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v10, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createPopupSelectDialog(Landroid/app/Activity;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_6

    .line 575
    :cond_12
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageVibrateRow:I

    if-ne v0, v1, :cond_16

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 580
    :cond_13
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    if-ne v1, v9, :cond_14

    const-string v1, "vibrate_messages"

    :goto_4
    move-object/from16 v16, v1

    goto :goto_5

    :cond_14
    if-nez v1, :cond_15

    const-string v1, "vibrate_group"

    goto :goto_4

    :cond_15
    const-string v1, "vibrate_channel"

    goto :goto_4

    .line 587
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v10, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_6

    .line 593
    :cond_16
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePriorityRow:I

    if-ne v0, v1, :cond_18

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 597
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    new-instance v2, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v10, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;I)V

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createPrioritySelectDialog(Landroid/app/Activity;JIILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 604
    :cond_18
    :goto_6
    instance-of v0, v11, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_19

    .line 605
    move-object v0, v11

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    xor-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_19
    return-void

    .line 231
    :cond_1a
    :goto_7
    iget-object v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searchAdapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

    if-ne v1, v2, :cond_1f

    .line 232
    invoke-virtual {v2, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 233
    instance-of v2, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    if-eqz v2, :cond_1b

    .line 234
    iget-object v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searchAdapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;->access$3100(Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 235
    check-cast v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    goto :goto_b

    .line 239
    :cond_1b
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1c

    .line 240
    move-object v4, v1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 241
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_8

    .line 243
    :cond_1c
    move-object v4, v1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 244
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    .line 246
    :goto_8
    iget-object v6, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsDict:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 247
    iget-object v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsDict:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    goto :goto_a

    .line 251
    :cond_1d
    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-direct {v3}, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;-><init>()V

    .line 252
    iput-wide v4, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    if-eqz v2, :cond_1e

    .line 254
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 255
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    goto :goto_9

    .line 257
    :cond_1e
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 258
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    iput-wide v1, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    :goto_9
    move-object v1, v3

    move v3, v9

    .line 261
    :goto_a
    iget-object v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    :goto_b
    move-object v6, v1

    move-object v9, v2

    goto :goto_c

    .line 264
    :cond_1f
    iget-object v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    .line 265
    iget v2, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsStartRow:I

    sub-int v2, v0, v2

    if-ltz v2, :cond_22

    .line 266
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_20

    goto :goto_d

    .line 269
    :cond_20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    move-object v9, v1

    move-object v6, v2

    :goto_c
    move v7, v3

    if-nez v6, :cond_21

    return-void

    .line 276
    :cond_21
    iget-wide v13, v6, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    .line 277
    iget v1, v10, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v5

    .line 278
    new-instance v15, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;

    iget v8, v10, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    new-instance v21, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-wide v3, v13

    move/from16 v17, v8

    move/from16 v8, p3

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;JZLorg/telegram/ui/NotificationsSettingsActivity$NotificationException;ZILjava/util/ArrayList;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v22

    move-object v0, v15

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/PopupSwipeBackLayout;ZZLorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 391
    iget v1, v10, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-virtual {v0, v13, v14, v1, v12}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->update(JILjava/util/HashSet;)V

    move/from16 v1, p4

    move/from16 v2, p5

    .line 392
    invoke-virtual {v0, v10, v11, v1, v2}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->showAsOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;FF)V

    :cond_22
    :goto_d
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$11()V
    .locals 5

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1510
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1512
    iget-object v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1513
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_0

    .line 1514
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadExceptions$10()V
    .locals 22

    .line 682
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 683
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 684
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 685
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 691
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 692
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 693
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    iget-wide v10, v10, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 696
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 697
    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v13

    .line 698
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    move-object/from16 v16, v5

    if-eqz v15, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 699
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/String;

    move-object/from16 v17, v14

    const-string v14, "notify2_"

    .line 700
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v18, v4

    const-string v4, ""

    .line 701
    invoke-virtual {v5, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 703
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    move-object v14, v7

    move-object/from16 v19, v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v20, 0x0

    cmp-long v5, v7, v20

    if-eqz v5, :cond_c

    cmp-long v5, v7, v10

    if-eqz v5, :cond_c

    .line 705
    new-instance v5, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-direct {v5}, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;-><init>()V

    .line 706
    iput-wide v7, v5, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    move-wide/from16 v20, v10

    .line 707
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "custom_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v12, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->hasCustom:Z

    .line 708
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v5, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    if-eqz v10, :cond_0

    .line 710
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyuntil_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 712
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->muteUntil:I

    .line 716
    :cond_0
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 717
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    .line 718
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v10

    if-nez v10, :cond_1

    .line 720
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 723
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-nez v4, :cond_2

    .line 725
    iget-wide v7, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    iget-wide v7, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-virtual {v1, v7, v8, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 727
    :cond_2
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v4, :cond_3

    goto/16 :goto_3

    .line 731
    :cond_3
    :goto_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 732
    :cond_4
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 733
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-nez v4, :cond_5

    .line 735
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 737
    :cond_5
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v4, :cond_6

    goto :goto_3

    .line 740
    :cond_6
    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 742
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-nez v4, :cond_8

    .line 744
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 747
    :cond_8
    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v7, :cond_b

    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v7, :cond_b

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v7, :cond_9

    goto :goto_3

    .line 750
    :cond_9
    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_a

    move-object/from16 v8, v19

    .line 751
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move-object/from16 v8, v19

    .line 753
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    :goto_3
    move-object v7, v14

    move-object/from16 v5, v16

    move-object/from16 v14, v17

    move-object/from16 v4, v18

    move-object/from16 v8, v19

    goto :goto_6

    :cond_c
    move-wide/from16 v20, v10

    :goto_4
    move-object/from16 v8, v19

    goto :goto_5

    :cond_d
    move-object/from16 v18, v4

    move-object v14, v7

    move-wide/from16 v20, v10

    :goto_5
    move-object v7, v14

    move-object/from16 v5, v16

    move-object/from16 v14, v17

    move-object/from16 v4, v18

    :goto_6
    move-wide/from16 v10, v20

    goto/16 :goto_0

    :cond_e
    move-object/from16 v18, v4

    move-object v14, v7

    const/4 v11, 0x0

    .line 759
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 761
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v5, ","

    if-nez v4, :cond_f

    .line 762
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v9, v0}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 764
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v3, :cond_10

    .line 765
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v4, v18

    :try_start_3
    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_8

    :cond_10
    move-object/from16 v4, v18

    .line 767
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 768
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v5, v16

    :try_start_4
    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :cond_11
    move-object/from16 v5, v16

    goto :goto_a

    :catch_2
    move-exception v0

    :goto_8
    move-object/from16 v5, v16

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, v18

    .line 771
    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 773
    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v11

    :goto_b
    if-ge v2, v0, :cond_15

    .line 774
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 775
    iget-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v7, :cond_14

    iget-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez v7, :cond_14

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v7, :cond_12

    goto :goto_c

    .line 778
    :cond_12
    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v12, v12

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    .line 779
    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v12, v12

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->remove(J)V

    if-eqz v7, :cond_14

    .line 782
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_13

    .line 783
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 785
    :cond_13
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 789
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v11

    :goto_d
    if-ge v2, v0, :cond_17

    .line 790
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 791
    iget-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v7, :cond_16

    goto :goto_e

    .line 794
    :cond_16
    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 796
    :cond_17
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v11

    :goto_f
    if-ge v2, v0, :cond_18

    .line 797
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 798
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v12, v3

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Landroid/util/LongSparseArray;->remove(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 800
    :cond_18
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    :goto_10
    if-ge v11, v0, :cond_1b

    .line 801
    invoke-virtual {v1, v11}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 802
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 803
    invoke-virtual {v1, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 804
    invoke-virtual {v1, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 806
    :cond_19
    invoke-virtual {v1, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1a
    move-object/from16 v5, v16

    move-object/from16 v4, v18

    .line 810
    :cond_1b
    new-instance v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda6;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    move-object v7, v14

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadExceptions$9(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 811
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 812
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 813
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChats(Ljava/util/ArrayList;Z)V

    .line 814
    iget p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    if-ne p1, v1, :cond_0

    .line 815
    iput-object p4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 817
    iput-object p5, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    goto :goto_0

    .line 819
    :cond_1
    iput-object p6, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    .line 821
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->updateRows(Z)V

    return-void
.end method

.method private loadExceptions()V
    .locals 2

    .line 681
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRows(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 827
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    .line 828
    iget v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x0

    add-int/lit8 v3, v3, 0x1

    .line 829
    iput v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->alertRow:I

    add-int/lit8 v0, v3, 0x1

    .line 830
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->alertSection2Row:I

    add-int/lit8 v3, v0, 0x1

    .line 831
    iput v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSectionRow:I

    add-int/lit8 v0, v3, 0x1

    .line 832
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->previewRow:I

    add-int/lit8 v3, v0, 0x1

    .line 833
    iput v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageLedRow:I

    add-int/lit8 v0, v3, 0x1

    .line 834
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageVibrateRow:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 836
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePopupNotificationRow:I

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 838
    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePopupNotificationRow:I

    .line 840
    :goto_0
    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSoundRow:I

    .line 841
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 842
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePriorityRow:I

    goto :goto_1

    .line 844
    :cond_1
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePriorityRow:I

    .line 846
    :goto_1
    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->groupSection2Row:I

    add-int/lit8 v0, v1, 0x1

    .line 847
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsAddRow:I

    goto :goto_2

    .line 849
    :cond_2
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->alertRow:I

    .line 850
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->alertSection2Row:I

    .line 851
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSectionRow:I

    .line 852
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->previewRow:I

    .line 853
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageLedRow:I

    .line 854
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageVibrateRow:I

    .line 855
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePopupNotificationRow:I

    .line 856
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messageSoundRow:I

    .line 857
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->messagePriorityRow:I

    .line 858
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->groupSection2Row:I

    .line 859
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsAddRow:I

    .line 861
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 862
    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsStartRow:I

    .line 863
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    .line 864
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsEndRow:I

    goto :goto_3

    .line 866
    :cond_3
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsStartRow:I

    .line 867
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsEndRow:I

    .line 869
    :goto_3
    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 872
    :cond_4
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsSection2Row:I

    goto :goto_5

    .line 870
    :cond_5
    :goto_4
    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptionsSection2Row:I

    .line 874
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 875
    iget v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->deleteAllRow:I

    add-int/lit8 v0, v1, 0x1

    .line 876
    iput v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->deleteAllSectionRow:I

    goto :goto_6

    .line 878
    :cond_6
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->deleteAllRow:I

    .line 879
    iput v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->deleteAllSectionRow:I

    :goto_6
    if-eqz p1, :cond_7

    .line 881
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    if-eqz p1, :cond_7

    .line 882
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searching:Z

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 146
    iget v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->NotificationsExceptions:I

    const-string v5, "NotificationsExceptions"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->Notifications:I

    const-string v5, "Notifications"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/NotificationsCustomSettingsActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$1;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->exceptions:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 161
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/NotificationsCustomSettingsActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$2;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    .line 201
    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->searchAdapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

    .line 206
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 207
    check-cast v1, Landroid/widget/FrameLayout;

    const-string v4, "windowBackgroundGray"

    .line 208
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 210
    new-instance v4, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x12

    .line 211
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v5, Lorg/telegram/messenger/R$string;->NoExceptions:I

    const-string v6, "NoExceptions"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 214
    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 217
    iget-object v5, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 218
    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 219
    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$4;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 958
    sget p2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, p2, :cond_0

    .line 959
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 960
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1508
    new-instance v11, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v11, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    .line 1520
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/TextColorCell;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lorg/telegram/ui/Cells/UserCell;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-class v6, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
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

    .line 1523
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v21, "actionBarDefault"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v21, "actionBarDefaultTitle"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v21, "listSelectorSDK21"

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v12

    const-string v23, "textView"

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v21, 0x0

    const-string v22, "windowBackgroundWhiteBlueHeader"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v12

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, "windowBackgroundWhiteBlackText"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v12

    const-string v24, "valueTextView"

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v18

    const-string v22, "windowBackgroundWhiteGrayText2"

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v12

    const-string v14, "checkBox"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    const/16 v32, 0x0

    const-string v33, "switchTrack"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v12

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v38

    const/16 v36, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-string v42, "switchTrackChecked"

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v12

    const-string v15, "imageView"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "windowBackgroundWhiteGrayIcon"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v4, v12

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v38

    const-string v42, "windowBackgroundWhiteBlackText"

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    aput-object v2, v5, v12

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v16, "windowBackgroundWhiteGrayText"

    move-object v2, v10

    move-object v9, v11

    move-object v12, v10

    move-object/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const-string v10, "windowBackgroundWhiteBlueText"

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v30, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v29, 0x0

    const-string v32, "avatar_text"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1545
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

    .line 1546
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v32, 0x0

    const-string v33, "key_graySectionText"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v8, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/GraySectionCell;

    const/4 v4, 0x0

    aput-object v3, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "graySection"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "windowBackgroundWhiteBlackText"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v38

    const-string v42, "windowBackgroundWhiteGrayText2"

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "switchTrack"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v38

    const-string v42, "switchTrackChecked"

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextColorCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "windowBackgroundWhiteBlackText"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v38

    const-string v42, "windowBackgroundWhiteBlackText"

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v29

    const-string v33, "windowBackgroundWhiteValueText"

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v8, v13, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v4, 0x0

    aput-object v3, v8, v4

    const-string v12, "windowBackgroundGrayShadow"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const-string v32, "windowBackgroundWhiteBlueButton"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const-string v41, "windowBackgroundWhiteRedText5"

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v36, v4

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "windowBackgroundWhiteBlueIcon"

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    const-string p2, "android.intent.extra.ringtone.PICKED_URI"

    .line 889
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 892
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 894
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 895
    sget p3, Lorg/telegram/messenger/R$string;->SoundDefault:I

    const-string v1, "SoundDefault"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 899
    :goto_0
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 903
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 906
    iget v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    const/4 v2, 0x1

    const-string v3, "NoSound"

    if-ne v1, v2, :cond_3

    const-string v1, "GlobalSoundPath"

    const-string v2, "GlobalSound"

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 908
    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 909
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 911
    :cond_2
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 912
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    const-string v1, "GroupSoundPath"

    const-string v2, "GroupSound"

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 916
    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 917
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 919
    :cond_4
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 920
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const-string v1, "ChannelSoundPath"

    const-string v2, "ChannelSound"

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 924
    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 925
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 927
    :cond_6
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 928
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 931
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobal(I)V

    .line 932
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 933
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->currentType:I

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(I)V

    .line 934
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 936
    iget-object p3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_8
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->updateRows(Z)V

    .line 136
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 952
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 953
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 943
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 947
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
