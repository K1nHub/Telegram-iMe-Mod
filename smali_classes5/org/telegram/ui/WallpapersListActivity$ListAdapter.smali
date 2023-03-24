.class Lorg/telegram/ui/WallpapersListActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "WallpapersListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/WallpapersListActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/Context;)V
    .locals 0

    .line 1752
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1753
    iput-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5200(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5700(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5800(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1903
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$6800(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$6900(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1905
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$2500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1758
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 1811
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_a

    .line 1824
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$2500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_14

    .line 1826
    sget p2, Lorg/telegram/messenger/R$string;->ResetChatBackgroundsInfo:I

    const-string v0, "ResetChatBackgroundsInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1831
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/WallpaperCell;

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5300(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$4500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    mul-int/2addr p2, v0

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$4500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-nez p2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v4}, Lorg/telegram/ui/WallpapersListActivity;->access$4500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v4

    div-int v4, p2, v4

    iget-object v5, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v5}, Lorg/telegram/ui/WallpapersListActivity;->access$5900(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-virtual {p1, v0, v3, v4}, Lorg/telegram/ui/Cells/WallpaperCell;->setParams(IZZ)V

    move v0, v1

    .line 1834
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v3}, Lorg/telegram/ui/WallpapersListActivity;->access$4500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v3

    if-ge v0, v3, :cond_14

    add-int v3, p2, v0

    .line 1836
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v4}, Lorg/telegram/ui/WallpapersListActivity;->access$6000(Lorg/telegram/ui/WallpapersListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v4}, Lorg/telegram/ui/WallpapersListActivity;->access$6000(Lorg/telegram/ui/WallpapersListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_3

    :cond_4
    move-object v6, v5

    .line 1839
    :goto_3
    instance-of v3, v6, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_7

    .line 1840
    move-object v3, v6

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1841
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    .line 1842
    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    .line 1843
    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    .line 1844
    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6100(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    .line 1845
    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6200(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    .line 1846
    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6300(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    .line 1847
    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6400(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getWallpaperColor(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    .line 1848
    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6200(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6300(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v8, v1}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v8

    if-eq v7, v8, :cond_5

    iget-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v7, :cond_5

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    .line 1849
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemeIntensity(F)F

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v7}, Lorg/telegram/ui/WallpapersListActivity;->access$6600(Lorg/telegram/ui/WallpapersListActivity;)F

    move-result v7

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v3

    .line 1854
    :cond_6
    :goto_4
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    goto/16 :goto_7

    .line 1856
    :cond_7
    instance-of v3, v6, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    if-eqz v3, :cond_d

    .line 1857
    move-object v3, v6

    check-cast v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;

    .line 1858
    iget-object v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const-string v10, "d"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v9}, Lorg/telegram/ui/WallpapersListActivity;->access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_5

    .line 1860
    :cond_8
    iget v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    iget-object v10, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v10}, Lorg/telegram/ui/WallpapersListActivity;->access$6100(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v10

    if-ne v9, v10, :cond_c

    iget v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    iget-object v10, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v10}, Lorg/telegram/ui/WallpapersListActivity;->access$6200(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v10

    if-ne v9, v10, :cond_c

    iget v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    iget-object v10, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v10}, Lorg/telegram/ui/WallpapersListActivity;->access$6300(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v10

    if-ne v9, v10, :cond_c

    iget v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    iget-object v10, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v10}, Lorg/telegram/ui/WallpapersListActivity;->access$6400(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v10

    if-ne v9, v10, :cond_c

    iget-object v9, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v9}, Lorg/telegram/ui/WallpapersListActivity;->access$6200(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v9

    if-eqz v9, :cond_9

    iget v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    iget-object v10, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v10}, Lorg/telegram/ui/WallpapersListActivity;->access$6500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v10

    if-eq v9, v10, :cond_9

    goto :goto_6

    .line 1863
    :cond_9
    iget-object v9, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v9}, Lorg/telegram/ui/WallpapersListActivity;->access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "c"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    if-nez v9, :cond_c

    :cond_a
    iget-object v9, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v9}, Lorg/telegram/ui/WallpapersListActivity;->access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v9}, Lorg/telegram/ui/WallpapersListActivity;->access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget v9, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    mul-float/2addr v9, v4

    float-to-int v9, v9

    iget-object v10, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v10}, Lorg/telegram/ui/WallpapersListActivity;->access$6600(Lorg/telegram/ui/WallpapersListActivity;)F

    move-result v10

    mul-float/2addr v10, v4

    float-to-int v4, v10

    if-eq v9, v4, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    move-object v5, v6

    .line 1869
    :cond_c
    :goto_6
    iget-object v3, v3, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v3, :cond_e

    .line 1870
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    move-wide v7, v3

    goto :goto_7

    .line 1874
    :cond_d
    instance-of v3, v6, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    if-eqz v3, :cond_e

    .line 1875
    move-object v3, v6

    check-cast v3, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;

    .line 1876
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v4}, Lorg/telegram/ui/WallpapersListActivity;->access$1500(Lorg/telegram/ui/WallpapersListActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/ui/WallpapersListActivity$FileWallpaper;->slug:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v5, v6

    :cond_e
    :goto_7
    move-wide v10, v7

    move-object v7, v5

    .line 1887
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v3}, Lorg/telegram/ui/WallpapersListActivity;->access$4700(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Cells/WallpaperCell;->setWallpaper(IILjava/lang/Object;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Z)V

    .line 1888
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v3}, Lorg/telegram/ui/WallpapersListActivity;->access$6700(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1889
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v3}, Lorg/telegram/ui/WallpapersListActivity;->access$100(Lorg/telegram/ui/WallpapersListActivity;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_f

    move v3, v2

    goto :goto_8

    :cond_f
    move v3, v1

    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v4}, Lorg/telegram/ui/WallpapersListActivity;->access$2600(Lorg/telegram/ui/WallpapersListActivity;)Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {p1, v0, v3, v4}, Lorg/telegram/ui/Cells/WallpaperCell;->setChecked(IZZ)V

    goto :goto_9

    .line 1891
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v3}, Lorg/telegram/ui/WallpapersListActivity;->access$2600(Lorg/telegram/ui/WallpapersListActivity;)Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Cells/WallpaperCell;->setChecked(IZZ)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1813
    :cond_11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_12

    .line 1815
    sget p2, Lorg/telegram/messenger/R$string;->SelectFromGallery:I

    const-string v0, "SelectFromGallery"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_a

    .line 1816
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5700(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_13

    .line 1817
    sget p2, Lorg/telegram/messenger/R$string;->SetColor:I

    const-string v0, "SetColor"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_palette:I

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_a

    .line 1818
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5800(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ne p2, v0, :cond_14

    .line 1819
    sget p2, Lorg/telegram/messenger/R$string;->ResetChatBackgrounds:I

    const-string v0, "ResetChatBackgrounds"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    :cond_14
    :goto_a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    if-eqz p2, :cond_3

    const-string p1, "windowBackgroundGray"

    const-string v0, "windowBackgroundGrayShadow"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    .line 1792
    new-instance p1, Lorg/telegram/ui/WallpapersListActivity$ListAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/WallpapersListActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/WallpapersListActivity$ListAdapter;Landroid/content/Context;)V

    goto :goto_2

    .line 1783
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1784
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1785
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1786
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1787
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object p1, p2

    goto :goto_2

    .line 1775
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1776
    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v3}, Lorg/telegram/ui/WallpapersListActivity;->access$5300(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_1

    :cond_2
    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_1
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1777
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1778
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1779
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1771
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1806
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
