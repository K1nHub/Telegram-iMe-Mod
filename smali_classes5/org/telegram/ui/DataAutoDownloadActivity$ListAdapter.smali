.class Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataAutoDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataAutoDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataAutoDownloadActivity;


# direct methods
.method public static synthetic $r8$lambda$WJfBNTyOMla7nGIPcKouAVJ9MBU(Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->lambda$onCreateViewHolder$0(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DataAutoDownloadActivity;Landroid/content/Context;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 643
    iput-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(I)V
    .locals 5

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1800(Lorg/telegram/ui/DataAutoDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/DownloadController$Preset;

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1900(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    .line 815
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2002(Lorg/telegram/ui/DataAutoDownloadActivity;I)I

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2100(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 817
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2002(Lorg/telegram/ui/DataAutoDownloadActivity;I)I

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2200(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2002(Lorg/telegram/ui/DataAutoDownloadActivity;I)I

    goto :goto_0

    .line 821
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2002(Lorg/telegram/ui/DataAutoDownloadActivity;I)I

    .line 823
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result p1

    if-nez p1, :cond_3

    .line 824
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2300(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2000(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    iput v0, p1, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    goto :goto_1

    .line 825
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 826
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2400(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2000(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    iput v0, p1, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    goto :goto_1

    .line 828
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2500(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2000(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    iput v0, p1, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    .line 830
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2700(Lorg/telegram/ui/DataAutoDownloadActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v4}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2000(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v4

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 832
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    :goto_2
    if-ge v2, v1, :cond_6

    .line 835
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$2900(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$3000(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v4}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, p1, v4}, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 840
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$3102(Lorg/telegram/ui/DataAutoDownloadActivity;Z)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$000(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$100(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 864
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 866
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$300(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$400(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 868
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1700(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 870
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$700(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1300(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x4

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 784
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$700(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1300(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1e

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1c

    const/4 v7, 0x3

    if-eq v3, v7, :cond_1b

    const/4 v8, 0x4

    if-eq v3, v8, :cond_7

    const/4 v7, 0x5

    if-eq v3, v7, :cond_0

    goto/16 :goto_c

    .line 749
    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 750
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1400(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v3

    const-string v7, "windowBackgroundGrayShadow"

    if-ne v2, v3, :cond_1

    .line 751
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadAudioInfo:I

    const-string v3, "AutoDownloadAudioInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 754
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto/16 :goto_c

    .line 755
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1500(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 756
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$300(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 757
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 758
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v2

    if-nez v2, :cond_2

    .line 759
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadOnMobileDataInfo:I

    const-string v3, "AutoDownloadOnMobileDataInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 760
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 761
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadOnWiFiDataInfo:I

    const-string v3, "AutoDownloadOnWiFiDataInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 762
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 763
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadOnRoamingDataInfo:I

    const-string v3, "AutoDownloadOnRoamingDataInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :cond_4
    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto/16 :goto_c

    .line 767
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 768
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc

    .line 769
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 770
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_6

    .line 771
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto/16 :goto_c

    .line 773
    :cond_6
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto/16 :goto_c

    .line 679
    :cond_7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v1

    check-cast v9, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 683
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-ne v2, v1, :cond_8

    .line 684
    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadPhotos:I

    const-string v3, "AutoDownloadPhotos"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move v3, v5

    goto :goto_1

    .line 686
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$700(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-ne v2, v1, :cond_9

    .line 687
    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadVideos:I

    const-string v3, "AutoDownloadVideos"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move v3, v8

    goto :goto_1

    .line 690
    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadFiles:I

    const-string v3, "AutoDownloadFiles"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    move-object v10, v1

    .line 693
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-nez v1, :cond_a

    .line 694
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$900(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v1

    goto :goto_2

    .line 695
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$800(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 696
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1000(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v1

    goto :goto_2

    .line 698
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1100(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v1

    .line 700
    :goto_2
    iget-object v11, v1, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v12

    aget-wide v12, v11, v12

    .line 703
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v4

    move v15, v14

    .line 704
    :goto_3
    iget-object v4, v1, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v8, v4

    if-ge v14, v8, :cond_12

    .line 705
    aget v4, v4, v14

    and-int/2addr v4, v3

    if-eqz v4, :cond_11

    .line 706
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, ", "

    .line 707
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v14, :cond_10

    if-eq v14, v5, :cond_f

    if-eq v14, v6, :cond_e

    if-eq v14, v7, :cond_d

    goto :goto_4

    .line 720
    :cond_d
    sget v4, Lorg/telegram/messenger/R$string;->AutoDownloadChannels:I

    const-string v8, "AutoDownloadChannels"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 717
    :cond_e
    sget v4, Lorg/telegram/messenger/R$string;->AutoDownloadGroups:I

    const-string v8, "AutoDownloadGroups"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 714
    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->AutoDownloadPm:I

    const-string v8, "AutoDownloadPm"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 711
    :cond_10
    sget v4, Lorg/telegram/messenger/R$string;->AutoDownloadContacts:I

    const-string v8, "AutoDownloadContacts"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v15, v15, 0x1

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x4

    goto :goto_3

    :cond_12
    const/4 v4, 0x4

    if-ne v15, v4, :cond_14

    const/4 v1, 0x0

    .line 727
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-ne v2, v1, :cond_13

    .line 729
    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadOnAllChats:I

    const-string v3, "AutoDownloadOnAllChats"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 731
    :cond_13
    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadUpToOnAllChats:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "AutoDownloadUpToOnAllChats"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_14
    if-nez v15, :cond_15

    .line 734
    sget v1, Lorg/telegram/messenger/R$string;->AutoDownloadOff:I

    const-string v3, "AutoDownloadOff"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 736
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$600(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-ne v2, v1, :cond_16

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDownloadOnFor:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "AutoDownloadOnFor"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    const/4 v7, 0x0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDownloadOnUpToFor:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v6, "AutoDownloadOnUpToFor"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    move-object v11, v1

    .line 742
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1200(Lorg/telegram/ui/DataAutoDownloadActivity;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v15, :cond_17

    move v1, v5

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    .line 743
    :goto_7
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    :cond_18
    if-eqz v15, :cond_19

    move v12, v5

    goto :goto_8

    :cond_19
    const/4 v12, 0x0

    :goto_8
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 745
    iget-object v1, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$1300(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v1

    if-eq v2, v1, :cond_1a

    move v15, v5

    goto :goto_9

    :cond_1a
    const/4 v15, 0x0

    :goto_9
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V

    goto/16 :goto_c

    .line 674
    :cond_1b
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/SlideChooseView;

    .line 675
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$500(Lorg/telegram/ui/DataAutoDownloadActivity;Lorg/telegram/ui/Components/SlideChooseView;)V

    goto/16 :goto_c

    .line 665
    :cond_1c
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 666
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$300(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 667
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadDataUsage:I

    const-string v3, "AutoDownloadDataUsage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 668
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$400(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 669
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadTypes:I

    const-string v3, "AutoDownloadTypes"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 655
    :cond_1e
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 656
    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$100(Lorg/telegram/ui/DataAutoDownloadActivity;)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 657
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    .line 658
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadMedia:I

    const-string v3, "AutoDownloadMedia"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$200(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$200(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    const-string v3, "windowBackgroundChecked"

    const-string v4, "windowBackgroundUnchecked"

    if-eqz v2, :cond_1f

    move-object v2, v3

    goto :goto_a

    :cond_1f
    move-object v2, v4

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 660
    iget-object v2, v0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataAutoDownloadActivity;->access$200(Lorg/telegram/ui/DataAutoDownloadActivity;)Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v2, :cond_20

    goto :goto_b

    :cond_20
    move-object v3, v4

    :goto_b
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    :cond_21
    :goto_c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    const-string v0, "windowBackgroundWhite"

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 852
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 853
    iget-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 846
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 847
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 810
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 812
    new-instance p2, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    .line 842
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 805
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 806
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 801
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 793
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataAutoDownloadActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundCheckText"

    const-string v2, "switchTrackBlue"

    const-string v3, "switchTrackBlueChecked"

    const-string v4, "switchTrackBlueThumb"

    const-string v5, "switchTrackBlueThumbChecked"

    move-object v0, p1

    .line 794
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fonts/rmedium.ttf"

    .line 795
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p2, 0x38

    .line 796
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setHeight(I)V

    .line 856
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
