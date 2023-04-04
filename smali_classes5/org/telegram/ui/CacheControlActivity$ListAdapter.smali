.class Lorg/telegram/ui/CacheControlActivity$ListAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method public static synthetic $r8$lambda$mqIZUEfYoosxdBoAch-WVviymtQ(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->lambda$onCreateViewHolder$1(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qAJcKdUhxhRWktXfu-5spdFxB-I(Lorg/telegram/ui/CacheControlActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w8jhfR6WU0k1_4Jjlofrf6Tvvo8(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->lambda$onCreateViewHolder$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wrGYVdr3qkPS_x06EWjn0sYhtR4(Lorg/telegram/ui/CacheControlActivity$ListAdapter;Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->lambda$onBindViewHolder$3(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V
    .locals 0

    .line 2214
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    .line 2215
    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 1

    .line 2493
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$4800(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/CacheControlActivity;->access$4802(Lorg/telegram/ui/CacheControlActivity;Z)Z

    .line 2494
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3100(Lorg/telegram/ui/CacheControlActivity;)V

    .line 2495
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$5100(Lorg/telegram/ui/CacheControlActivity;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 0

    .line 2496
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/CacheControlActivity;->access$5000(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$0(I)V
    .locals 3

    const/4 v0, 0x3

    if-nez p0, :cond_0

    .line 2251
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setKeepMedia(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    .line 2253
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setKeepMedia(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 2255
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setKeepMedia(I)V

    goto :goto_0

    :cond_2
    if-ne p0, v0, :cond_3

    .line 2257
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setKeepMedia(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$1(Ljava/util/ArrayList;I)V
    .locals 1

    .line 2451
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "cache_limit"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2226
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2560
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 2220
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    int-to-long v0, v0

    .line 2221
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v2}, Lorg/telegram/ui/CacheControlActivity;->access$3200(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3400(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2467
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    const/4 v4, 0x1

    if-eq v1, v4, :cond_14

    const/4 v5, 0x2

    if-eq v1, v5, :cond_13

    const/4 v6, 0x3

    if-eq v1, v6, :cond_12

    const/4 v6, 0x7

    if-eq v1, v6, :cond_d

    const/16 p2, 0xa

    if-eq v1, p2, :cond_8

    const/16 p2, 0xb

    if-eq v1, p2, :cond_0

    goto/16 :goto_9

    .line 2481
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 2483
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_1

    .line 2484
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/CacheControlActivity;->access$4500(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result p2

    goto :goto_0

    .line 2486
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/CacheControlActivity;->access$2000(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object p2

    iget v1, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean p2, p2, v1

    .line 2488
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerName:Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$4600(Lorg/telegram/ui/CacheControlActivity;)[I

    move-result-object v6

    iget v7, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v7, :cond_2

    const/16 v8, 0x8

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    aget v6, v6, v8

    if-gez v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    invoke-static {v1, v5, v6, v7}, Lorg/telegram/ui/CacheControlActivity;->access$4700(Lorg/telegram/ui/CacheControlActivity;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iget-wide v5, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v6}, Lorg/telegram/ui/CacheControlActivity;->access$4800(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_4
    iget-boolean v6, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->last:Z

    if-nez v6, :cond_5

    :goto_3
    move v3, v4

    :cond_5
    invoke-virtual {p1, v1, v5, p2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 2489
    iget-object p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->colorKey:Ljava/lang/String;

    const-string v1, "windowBackgroundWhiteGrayIcon"

    const-string v3, "checkboxCheck"

    invoke-virtual {p1, p2, v1, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCheckBoxColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/CacheControlActivity;->access$4800(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_4

    :cond_6
    move-object p2, v2

    :goto_4
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCollapsed(Ljava/lang/Boolean;)V

    .line 2491
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 2492
    new-instance p2, Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity$ListAdapter;)V

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CacheControlActivity$ListAdapter;Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnSectionsClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 2498
    :cond_7
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnSectionsClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 2500
    :goto_5
    iget-boolean p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    goto/16 :goto_9

    .line 2472
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3400(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 2473
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    .line 2474
    invoke-static {p2}, Lorg/telegram/ui/CacheControlActivity;->access$3300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long p2, v0, v5

    if-lez p2, :cond_9

    move v3, v4

    .line 2475
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/CacheControlActivity;->access$4300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v0

    cmp-long p2, v0, v5

    const/4 v0, 0x0

    if-gtz p2, :cond_a

    move p2, v0

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/CacheControlActivity;->access$3300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    long-to-float p2, v1

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$4300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr p2, v1

    .line 2476
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$4400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$4300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$4300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v2}, Lorg/telegram/ui/CacheControlActivity;->access$4400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$4300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 2473
    :cond_c
    :goto_7
    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;->setData(ZFF)V

    goto/16 :goto_9

    .line 2503
    :cond_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 2504
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getCacheByChatsController()Lorg/telegram/messenger/CacheByChatsController;

    move-result-object v1

    .line 2505
    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    .line 2506
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v6}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v6, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/CacheByChatsController;->getKeepMediaExceptions(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    new-array v2, v4, [Ljava/lang/Object;

    .line 2509
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    const-string v3, "ExceptionShort"

    invoke-static {v3, v6, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2511
    :cond_e
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/CacheByChatsController;->getKeepMedia(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/CacheByChatsController;->getKeepMediaString(I)Ljava/lang/String;

    move-result-object v8

    .line 2512
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-nez v0, :cond_f

    .line 2513
    sget p2, Lorg/telegram/messenger/R$string;->PrivateChats:I

    const-string v0, "PrivateChats"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_filled_menu_users:I

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    const-string v0, "statisticChartLine_lightblue"

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    goto :goto_8

    .line 2514
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-ne v0, v4, :cond_10

    .line 2515
    sget p2, Lorg/telegram/messenger/R$string;->GroupChats:I

    const-string v0, "GroupChats"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_filled_menu_groups:I

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    const-string v0, "statisticChartLine_green"

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    goto :goto_8

    .line 2516
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-ne p2, v5, :cond_11

    .line 2517
    sget p2, Lorg/telegram/messenger/R$string;->CacheChannels:I

    const-string v0, "CacheChannels"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_filled_menu_channels:I

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    const-string v0, "statisticChartLine_golden"

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    .line 2519
    :cond_11
    :goto_8
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 2549
    :cond_12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 2550
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget-object v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 2551
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerTopMargin:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setTopMargin(I)V

    .line 2552
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$3500(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->headerBottomMargin:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setBottomMargin(I)V

    goto :goto_9

    .line 2545
    :cond_13
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/StorageUsageView;

    .line 2546
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3400(Lorg/telegram/ui/CacheControlActivity;)Z

    move-result v1

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$4900(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v2

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$3300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$4400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$4300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v8

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/StorageUsageView;->setStorageUsage(ZJJJJ)V

    goto :goto_9

    .line 2532
    :cond_14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 2540
    iget-object p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->text:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2541
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 2522
    :cond_15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    int-to-long v0, p2

    .line 2527
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/CacheControlActivity;->access$3200(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v4

    cmp-long p2, v0, v4

    if-nez p2, :cond_16

    .line 2528
    sget p2, Lorg/telegram/messenger/R$string;->MigrateOldFolder:I

    const-string v0, "MigrateOldFolder"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_16
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const-string p1, "windowBackgroundWhite"

    if-eqz p2, :cond_9

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    .line 2348
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 2418
    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 2420
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2422
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/CacheControlActivity;->access$4300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v1

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    div-long/2addr v1, v5

    long-to-int p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    .line 2423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 2428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x5

    .line 2431
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/16 v0, 0x10

    .line 2434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/high16 v0, 0x42000000    # 32.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const/16 p1, 0x20

    .line 2437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const p1, 0x7fffffff

    .line 2439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2440
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v3

    .line 2441
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 2442
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "300 MB"

    .line 2443
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_1

    .line 2444
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_5

    .line 2445
    sget v5, Lorg/telegram/messenger/R$string;->NoLimit:I

    const-string v6, "NoLimit"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_1

    :cond_5
    new-array v5, v4, [Ljava/lang/Object;

    .line 2447
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%d GB"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2450
    :cond_6
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    .line 2453
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cache_limit"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 2454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_7

    .line 2456
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    .line 2458
    :cond_7
    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2415
    :pswitch_1
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    new-instance p2, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/CacheControlActivity;->access$4202(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    move-result-object p1

    goto/16 :goto_4

    .line 2334
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 2335
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 2336
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    .line 2337
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    const/16 v0, 0x1a

    .line 2338
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 2339
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 2343
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x15

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2344
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 2331
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    new-instance p2, Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/CacheControlActivity;->access$3602(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    move-result-object p1

    goto/16 :goto_4

    .line 2288
    :pswitch_5
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    new-instance p2, Lorg/telegram/ui/CacheControlActivity$ListAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/CacheControlActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/CacheControlActivity$ListAdapter;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/CacheControlActivity;->access$1102(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/Components/CacheChart;)Lorg/telegram/ui/Components/CacheChart;

    move-result-object p1

    goto/16 :goto_4

    .line 2351
    :pswitch_6
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ListAdapter$2;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/CacheControlActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/CacheControlActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/CacheControlActivity;->access$202(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CachedMediaLayout;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object p2

    .line 2372
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$ListAdapter$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/CacheControlActivity$ListAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->setDelegate(Lorg/telegram/ui/CachedMediaLayout$Delegate;)V

    .line 2409
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    .line 2410
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->access$1600(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/CacheControlActivity;->access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setChildLayout(Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;)V

    .line 2411
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2412
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 2284
    :pswitch_7
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 2285
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 2275
    :pswitch_8
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 2276
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 2277
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    .line 2278
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    const/16 v0, 0x19

    .line 2279
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 2280
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 2270
    :pswitch_9
    new-instance p2, Lorg/telegram/ui/CacheControlActivity$UserCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/CacheControlActivity$UserCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2271
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 2246
    :pswitch_a
    new-instance p2, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 2248
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2249
    sget-object p1, Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/CacheControlActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    .line 2260
    sget p1, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    if-ne p1, v2, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    add-int/2addr p1, v4

    :goto_2
    new-array v1, v1, [Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Days"

    .line 2267
    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Weeks"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Months"

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    sget v0, Lorg/telegram/messenger/R$string;->KeepMediaForever:I

    const-string v3, "KeepMediaForever"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    goto :goto_3

    .line 2242
    :pswitch_b
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 2243
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 2238
    :pswitch_c
    new-instance p2, Lorg/telegram/ui/Components/StorageUsageView;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/StorageUsageView;-><init>(Landroid/content/Context;)V

    .line 2239
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 2234
    :cond_9
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 2235
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    move-object p1, p2

    .line 2461
    :goto_4
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
