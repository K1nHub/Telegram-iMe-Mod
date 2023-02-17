.class Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 650
    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 974
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 976
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 978
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 980
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 982
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x5

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_9
    :goto_3
    const/4 p1, 0x2

    return p1

    :cond_a
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 930
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->isRowEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isRowEnabled(I)Z
    .locals 4

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataSettingsActivity;->access$4700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    .line 914
    iget-object v0, p1, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v0

    iget-object v3, p1, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v3, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 915
    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v0

    iget-object v3, p1, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v3, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 916
    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v0

    iget-object p1, p1, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean p1, p1, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 919
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto/16 :goto_0

    .line 923
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    .line 924
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    .line 925
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 661
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 662
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 663
    sget v2, Lorg/telegram/messenger/R$string;->backup_settings_header:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 664
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 665
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 666
    sget v2, Lorg/telegram/messenger/R$string;->backup_settings_save_auto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 667
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/BackupController;->getSelectedAutoBackupInterval()Lorg/fork/enums/Interval;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/enums/Interval;->getNameResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_c

    .line 670
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->backup_settings_disabled:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_c

    .line 672
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    const-string v6, "windowBackgroundWhiteBlackText"

    if-ne v2, v3, :cond_3

    .line 673
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 674
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    .line 675
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 676
    sget v2, Lorg/telegram/messenger/R$string;->backup_settings_save_manually:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_c

    .line 678
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    .line 688
    :pswitch_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    .line 689
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 690
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v2

    const/16 v3, 0x2d

    const-string v6, "color_lightblue"

    const-string v7, "StorageUsage"

    if-eqz v2, :cond_4

    .line 691
    sget v2, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_storageusage:I

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    const-string v11, ""

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    .line 692
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v2

    invoke-virtual {v1, v4, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    goto :goto_1

    .line 694
    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v2, v7, v11

    if-gtz v2, :cond_5

    const-string v2, ""

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v11, v2

    const/4 v12, 0x1

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_storageusage:I

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    .line 695
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v2

    invoke-virtual {v1, v5, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    .line 697
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DataSettingsActivity;->access$702(Lorg/telegram/ui/DataSettingsActivity;Z)Z

    goto/16 :goto_c

    .line 698
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 699
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v2

    const/4 v3, 0x6

    .line 701
    invoke-virtual {v2, v5, v3}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v9

    .line 702
    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 703
    invoke-virtual {v2, v8, v3}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 704
    invoke-virtual {v2, v5, v3}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 705
    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 706
    invoke-virtual {v2, v8, v3}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v2

    add-long/2addr v9, v2

    .line 708
    sget v2, Lorg/telegram/messenger/R$string;->NetworkUsage:I

    const-string v3, "NetworkUsage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_datausage:I

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const-string v6, "color_green"

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-eq v3, v7, :cond_7

    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    :goto_2
    move-object v9, v1

    move-object v10, v2

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    goto/16 :goto_c

    .line 709
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 710
    sget v2, Lorg/telegram/messenger/R$string;->StoragePath:I

    const-string v3, "StoragePath"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_filled_sdcard:I

    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const-string v7, "color_yellow"

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v2, v3, v6, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndColorfulIcon(Ljava/lang/String;IIZ)V

    .line 711
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    goto/16 :goto_c

    .line 804
    :pswitch_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v10, v1

    check-cast v10, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 810
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_9

    .line 811
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryPrivate:I

    const-string v2, "SaveToGalleryPrivate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 812
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 813
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    :goto_3
    move-object v11, v1

    goto/16 :goto_5

    .line 814
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_a

    .line 815
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryGroups:I

    const-string v2, "SaveToGalleryGroups"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 816
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 817
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    goto :goto_3

    .line 818
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_b

    .line 819
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryChannels:I

    const-string v2, "SaveToGalleryChannels"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 820
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 821
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    goto :goto_3

    .line 822
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_c

    .line 823
    sget v1, Lorg/telegram/messenger/R$string;->WhenUsingMobileData:I

    const-string v2, "WhenUsingMobileData"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 824
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 825
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    :goto_4
    move-object v11, v1

    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, v17

    goto :goto_5

    .line 826
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$4200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_d

    .line 827
    sget v1, Lorg/telegram/messenger/R$string;->WhenConnectedOnWiFi:I

    const-string v2, "WhenConnectedOnWiFi"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 828
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 829
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    goto :goto_4

    .line 831
    :cond_d
    sget v1, Lorg/telegram/messenger/R$string;->WhenRoaming:I

    const-string v2, "WhenRoaming"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 832
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 833
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    goto :goto_4

    :goto_5
    if-eqz v9, :cond_1a

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 842
    :goto_6
    iget-object v13, v9, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v14, v13

    const/16 v15, 0x8

    const/16 v16, 0x4

    if-ge v2, v14, :cond_11

    if-nez v6, :cond_e

    .line 843
    aget v14, v13, v2

    and-int/2addr v14, v4

    if-eqz v14, :cond_e

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    :cond_e
    if-nez v8, :cond_f

    .line 847
    aget v14, v13, v2

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_f

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    :cond_f
    if-nez v12, :cond_10

    .line 851
    aget v13, v13, v2

    and-int/2addr v13, v15

    if-eqz v13, :cond_10

    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 856
    :cond_11
    iget-boolean v2, v9, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v2, :cond_16

    if-eqz v7, :cond_16

    if-eqz v6, :cond_12

    .line 858
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadPhotosOn:I

    const-string v7, "AutoDownloadPhotosOn"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v2, ", "

    const-string v7, " (%1$s)"

    if-eqz v8, :cond_14

    .line 861
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_13

    .line 862
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_13
    sget v13, Lorg/telegram/messenger/R$string;->AutoDownloadVideosOn:I

    const-string v14, "AutoDownloadVideosOn"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v13, v4, [Ljava/lang/Object;

    .line 865
    iget-object v14, v9, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v16

    move-object/from16 p1, v10

    move-object/from16 p2, v11

    aget-wide v10, v14, v16

    invoke-static {v10, v11, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZ)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v5

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_14
    move-object/from16 p1, v10

    move-object/from16 p2, v11

    :goto_7
    if-eqz v12, :cond_17

    .line 868
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_15

    .line 869
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_15
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadFilesOn:I

    const-string v10, "AutoDownloadFilesOn"

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/Object;

    .line 872
    iget-object v9, v9, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    invoke-static {v15}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v10

    aget-wide v10, v9, v10

    invoke-static {v10, v11, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZ)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_16
    move-object/from16 p1, v10

    move-object/from16 p2, v11

    .line 875
    sget v2, Lorg/telegram/messenger/R$string;->NoMediaAutoDownload:I

    const-string v7, "NoMediaAutoDownload"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    :goto_8
    if-nez v6, :cond_18

    if-nez v8, :cond_18

    if-eqz v12, :cond_19

    :cond_18
    if-eqz v3, :cond_19

    const/4 v5, 0x1

    :cond_19
    move-object v12, v1

    move v13, v5

    move-object/from16 v1, p1

    goto :goto_9

    :cond_1a
    move-object/from16 p2, v11

    move-object v12, v2

    move v13, v3

    move-object v1, v10

    .line 882
    :goto_9
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setAnimationsEnabled(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v10, v1

    move-object/from16 v11, p2

    .line 883
    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V

    goto/16 :goto_c

    .line 797
    :pswitch_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 798
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 799
    sget v2, Lorg/telegram/messenger/R$string;->EnableAllStreamingInfo:I

    const-string v3, "EnableAllStreamingInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 776
    :pswitch_3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 778
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 779
    sget v2, Lorg/telegram/messenger/R$string;->message_document_file_save_original_name:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_c

    .line 781
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 782
    sget v2, Lorg/telegram/messenger/R$string;->EnableStreaming:I

    const-string v3, "EnableStreaming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq v6, v7, :cond_1c

    goto :goto_a

    :cond_1c
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_c

    .line 783
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1e

    goto/16 :goto_c

    .line 785
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1f

    .line 786
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    const-string v3, "(beta only) Show MKV as Video"

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_c

    .line 787
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 788
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    const-string v3, "(beta only) Stream All Videos"

    invoke-virtual {v1, v3, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_c

    .line 789
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 790
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayGIF:I

    const-string v3, "AutoplayGIF"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->autoplayGifs:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_c

    .line 791
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 792
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayVideo:I

    const-string v3, "AutoplayVideo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->autoplayVideo:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_c

    .line 757
    :pswitch_4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 758
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_22

    .line 759
    sget v2, Lorg/telegram/messenger/R$string;->AutomaticMediaDownload:I

    const-string v3, "AutomaticMediaDownload"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 760
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_23

    .line 761
    sget v2, Lorg/telegram/messenger/R$string;->DataUsage:I

    const-string v3, "DataUsage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 762
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_24

    .line 763
    sget v2, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v3, "Calls"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 764
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_25

    .line 765
    sget v2, Lorg/telegram/messenger/R$string;->Proxy:I

    const-string v3, "Proxy"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 766
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 767
    sget v2, Lorg/telegram/messenger/R$string;->Streaming:I

    const-string v3, "Streaming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 768
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 769
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayMedia:I

    const-string v3, "AutoplayMedia"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 770
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 771
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGallerySettings:I

    const-string v3, "SaveToGallerySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 716
    :pswitch_5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 717
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    .line 718
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 719
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 720
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 721
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 723
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v3

    const-string v6, "VoipDataSaving"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2b

    if-eq v2, v4, :cond_2a

    if-eq v2, v8, :cond_29

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28

    goto :goto_b

    .line 731
    :cond_28
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataOnRoaming:I

    const-string v3, "UseLessDataOnRoaming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    .line 734
    :cond_29
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataAlways:I

    const-string v3, "UseLessDataAlways"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    .line 728
    :cond_2a
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataOnMobile:I

    const-string v3, "UseLessDataOnMobile"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    .line 725
    :cond_2b
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataNever:I

    const-string v3, "UseLessDataNever"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 737
    :goto_b
    sget v2, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    const-string v3, "VoipUseLessData"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v9, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 738
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DataSettingsActivity;->access$1302(Lorg/telegram/ui/DataSettingsActivity;Z)Z

    goto/16 :goto_c

    .line 739
    :cond_2c
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 740
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 741
    sget v2, Lorg/telegram/messenger/R$string;->ProxySettings:I

    const-string v3, "ProxySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_c

    .line 742
    :cond_2d
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2e

    .line 743
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 744
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    const-string v2, "windowBackgroundWhiteRedText"

    .line 745
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 746
    sget v2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownload:I

    const-string v3, "ResetAutomaticMediaDownload"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_c

    .line 747
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 748
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 749
    sget v2, Lorg/telegram/messenger/R$string;->VoipQuickReplies:I

    const-string v3, "VoipQuickReplies"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_c

    .line 750
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 751
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 752
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyDeleteCloudDrafts:I

    const-string v3, "PrivacyDeleteCloudDrafts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_c

    .line 680
    :pswitch_6
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    const-string v4, "windowBackgroundGrayShadow"

    if-ne v2, v3, :cond_30

    .line 681
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    .line 683
    :cond_30
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    const-string v0, "windowBackgroundWhite"

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 962
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 963
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 957
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 958
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 953
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 954
    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 949
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 950
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 945
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x16

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    .line 946
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 941
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 942
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 938
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 966
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 891
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 893
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 894
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 896
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 897
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$2600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 898
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 899
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 900
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 901
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 902
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 903
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 904
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->autoplayGifs:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 905
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 906
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->autoplayVideo:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_5
    :goto_0
    return-void
.end method
