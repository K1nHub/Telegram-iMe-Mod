.class Lorg/telegram/ui/FilterCreateActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FilterCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/FilterCreateActivity;


# direct methods
.method public static synthetic $r8$lambda$CQ2duj6N3_z4M4VX3EJKNz3aeXc(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/FilterCreateActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vcOjoG4XqOQAUzdCcLTSAo9VcmY(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1032
    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/FilterCreateActivity;)V
    .locals 0

    .line 1070
    invoke-static {p0}, Lorg/telegram/ui/FilterCreateActivity;->access$4300(Lorg/telegram/ui/FilterCreateActivity;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;Z)V
    .locals 0

    .line 1101
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    if-nez p3, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xc

    if-le p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1350
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->FABS:I

    return p1

    .line 1353
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1600(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 1355
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1800(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1900(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-lt p1, v0, :cond_b

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2200(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-lt p1, v0, :cond_b

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    .line 1356
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2600(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2800(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2900(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3000(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3100(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    .line 1357
    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3400(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3900(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3200(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 1359
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x2

    return p1

    .line 1361
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$4000(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$4100(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 1363
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$4200(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/4 p1, 0x5

    return p1

    .line 1365
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1400(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x4

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_a
    :goto_1
    const/4 p1, 0x3

    return p1

    :cond_b
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_c
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1037
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1172
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1400(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1173
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1174
    sget p2, Lorg/telegram/messenger/R$string;->create_folder_change_fab_section_description:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1175
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->FABS:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1176
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/view/FabsCell;

    .line 1177
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$1200(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/FabsCell;->setFabs(Ljava/util/Set;)V

    goto/16 :goto_9

    .line 1179
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_11

    const/4 v5, 0x3

    const-string v6, "windowBackgroundGrayShadow"

    if-eq v0, v5, :cond_f

    const/4 v5, 0x4

    if-eq v0, v5, :cond_8

    if-eq v0, v1, :cond_2

    goto/16 :goto_9

    .line 1323
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1324
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 1326
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v1

    sget-object v3, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v3, :cond_3

    .line 1327
    sget v1, Lorg/telegram/messenger/R$string;->topic_add_main_chats_hint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1329
    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->FilterIncludeInfo:I

    const-string v3, "FilterIncludeInfo"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1330
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity;->access$3300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    .line 1332
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v1

    sget-object v3, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v1, v3, :cond_5

    .line 1333
    sget v1, Lorg/telegram/messenger/R$string;->topic_add_archived_chats_hint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1335
    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->FilterExcludeInfo:I

    const-string v3, "FilterExcludeInfo"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$3500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p2

    if-ne p2, v2, :cond_7

    .line 1338
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 1340
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 1293
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1294
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3600(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    const/4 p2, 0x0

    const-string v0, "windowBackgroundWhiteRedText5"

    .line 1295
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    sget p2, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string v0, "FilterDelete"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 1298
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_30

    .line 1299
    sget p2, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1302
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2100(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    const-string v1, "FilterShowMoreChats"

    const-string v2, "windowBackgroundWhiteBlueText4"

    const-string v5, "switchTrackChecked"

    if-ne p2, v0, :cond_a

    .line 1303
    invoke-virtual {p1, v5, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$2000(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_9

    .line 1305
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 1306
    invoke-virtual {p1, v5, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$2400(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_9

    .line 1308
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    const-string v1, "FilterAddChats"

    if-ne p2, v0, :cond_d

    .line 1309
    invoke-virtual {p1, v5, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    sget v0, Lorg/telegram/messenger/R$string;->FilterAddChats:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_chats_add:I

    add-int/2addr p2, v4

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v2

    if-eq p2, v2, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_9

    .line 1311
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3800(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_30

    .line 1312
    invoke-virtual {p1, v5, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    sget v0, Lorg/telegram/messenger/R$string;->FilterRemoveChats:I

    const-string v2, "FilterRemoveChats"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_chats_add:I

    add-int/2addr p2, v4

    iget-object v5, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/FilterCreateActivity;->access$3300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v5

    if-eq p2, v5, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p1, v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 1315
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_30

    .line 1316
    sget p2, Lorg/telegram/messenger/R$string;->FilterAddChats:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1285
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_10

    .line 1286
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 1288
    :cond_10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 1198
    :cond_11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/Cells/UserCell;

    .line 1201
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1800(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-lt p2, p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1900(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ge p2, p1, :cond_14

    .line 1202
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2000(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1800(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2100(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1900(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    sub-int/2addr v0, v4

    if-eq p2, v0, :cond_12

    goto :goto_1

    :cond_12
    move v4, v3

    :cond_13
    :goto_1
    move v10, v4

    goto :goto_2

    .line 1204
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2200(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-lt p2, p1, :cond_1c

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ge p2, p1, :cond_1c

    .line 1205
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2400(Lorg/telegram/ui/FilterCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2200(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2500(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    sub-int/2addr v0, v4

    if-eq p2, v0, :cond_12

    goto :goto_1

    .line 1247
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long p2, v0, v6

    if-lez p2, :cond_17

    .line 1248
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 1251
    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_15

    .line 1252
    sget p1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string p2, "Bot"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v8, p1

    goto :goto_4

    .line 1253
    :cond_15
    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz p1, :cond_16

    .line 1254
    sget p1, Lorg/telegram/messenger/R$string;->FilterContact:I

    const-string p2, "FilterContact"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 1256
    :cond_16
    sget p1, Lorg/telegram/messenger/R$string;->FilterNonContact:I

    const-string p2, "FilterNonContact"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :goto_4
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1258
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_9

    .line 1261
    :cond_17
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_30

    .line 1264
    iget p1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_18

    new-array p2, v3, [Ljava/lang/Object;

    const-string v0, "Members"

    .line 1265
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object v8, p1

    goto :goto_6

    .line 1266
    :cond_18
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1267
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_19

    .line 1268
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string p2, "ChannelPrivate"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1270
    :cond_19
    sget p1, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string p2, "MegaPrivate"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1273
    :cond_1a
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_1b

    .line 1274
    sget p1, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string p2, "ChannelPublic"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1276
    :cond_1b
    sget p1, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string p2, "MegaPublic"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :goto_6
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1279
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_9

    .line 1211
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2600(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1e

    .line 1212
    sget p1, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v0, "FilterContacts"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_1d

    move v3, v4

    :cond_1d
    const-string p2, "contacts"

    :goto_7
    move-object v7, p1

    move-object v6, p2

    move v10, v3

    goto/16 :goto_8

    .line 1215
    :cond_1e
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2800(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ne p2, p1, :cond_20

    .line 1216
    sget p1, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v0, "FilterNonContacts"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_1f

    move v3, v4

    :cond_1f
    const-string p2, "non_contacts"

    goto :goto_7

    .line 1219
    :cond_20
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$2900(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ne p2, p1, :cond_22

    .line 1220
    sget p1, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v0, "FilterGroups"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1222
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_21

    move v3, v4

    :cond_21
    const-string p2, "groups"

    goto :goto_7

    .line 1223
    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$3000(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ne p2, p1, :cond_24

    .line 1224
    sget p1, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v0, "FilterChannels"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_23

    move v3, v4

    :cond_23
    const-string p2, "channels"

    goto :goto_7

    .line 1227
    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$3100(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ne p2, p1, :cond_26

    .line 1228
    sget p1, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v0, "FilterBots"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$2700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_25

    move v3, v4

    :cond_25
    const-string p2, "bots"

    goto :goto_7

    .line 1231
    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$3200(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ne p2, p1, :cond_28

    .line 1232
    sget p1, Lorg/telegram/messenger/R$string;->FilterMuted:I

    const-string v0, "FilterMuted"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_27

    move v3, v4

    :cond_27
    const-string p2, "muted"

    goto/16 :goto_7

    .line 1235
    :cond_28
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$3400(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2a

    .line 1236
    sget p1, Lorg/telegram/messenger/R$string;->FilterRead:I

    const-string v0, "FilterRead"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_29

    move v3, v4

    :cond_29
    const-string p2, "read"

    goto/16 :goto_7

    .line 1240
    :cond_2a
    sget p1, Lorg/telegram/messenger/R$string;->FilterArchived:I

    const-string v0, "FilterArchived"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, v4

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$3300(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-eq p2, v0, :cond_2b

    move v3, v4

    :cond_2b
    const-string p2, "archived"

    goto/16 :goto_7

    :goto_8
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1244
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    .line 1181
    :cond_2c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1600(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2e

    .line 1184
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_2d

    .line 1185
    sget p2, Lorg/telegram/messenger/R$string;->topic_main_chats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1187
    :cond_2d
    sget p2, Lorg/telegram/messenger/R$string;->FilterInclude:I

    const-string v0, "FilterInclude"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1188
    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$1700(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_30

    .line 1190
    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_2f

    .line 1191
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v0, "ArchivedChats"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1193
    :cond_2f
    sget p2, Lorg/telegram/messenger/R$string;->FilterExclude:I

    const-string v0, "FilterExclude"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_30
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 1050
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->FABS:I

    const-string v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_0

    .line 1051
    new-instance p1, Lorg/fork/ui/view/FabsCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/fork/ui/view/FabsCell;-><init>(Landroid/content/Context;)V

    .line 1052
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_a

    const/4 p1, 0x1

    if-eq p2, p1, :cond_9

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    .line 1132
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1128
    :cond_1
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/FilterCreateActivity$HintInnerCell;-><init>(Lorg/telegram/ui/FilterCreateActivity;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1124
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1125
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1121
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1067
    :cond_4
    new-instance p2, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 1068
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 1069
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    new-instance v1, Lorg/fork/ui/view/PollEditTextCellWrapper;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    new-instance v5, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FilterCreateActivity;)V

    invoke-direct {v1, p2, v3, v5}, Lorg/fork/ui/view/PollEditTextCellWrapper;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;Lorg/fork/enums/FilterActivityType;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/FilterCreateActivity;->access$402(Lorg/telegram/ui/FilterCreateActivity;Lorg/fork/ui/view/PollEditTextCellWrapper;)Lorg/fork/ui/view/PollEditTextCellWrapper;

    .line 1071
    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 1099
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1100
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowNextButton(Z)V

    .line 1101
    new-instance v1, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v1, 0x10000006

    .line 1102
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1106
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1107
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1100(Lorg/telegram/ui/FilterCreateActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1200(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1200(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1108
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1200(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1200(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1109
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$1200(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/smedialink/storage/domain/model/filters/FilterIcon;

    move-result-object p2

    invoke-static {p2}, Lcom/smedialink/utils/extentions/model/filter/FilterIconExtKt;->iconInfo(Lcom/smedialink/storage/domain/model/filters/FilterIcon;)Lcom/smedialink/ui/folder/FilterIconInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/ui/folder/FilterIconInfo;->getOutlinedIcon()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    goto :goto_0

    .line 1111
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/FilterCreateActivity;->access$1300(Lorg/telegram/ui/FilterCreateActivity;)Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object p2

    invoke-static {p2}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/ui/topics/TopicInfo;->getIconResId()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    goto :goto_0

    .line 1114
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/PollEditTextCellWrapper;->setIcon(I)V

    .line 1116
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    goto :goto_1

    .line 1060
    :cond_9
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, v3, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 1061
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/UserCell;->setSelfAsSavedMessages(Z)V

    .line 1062
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    move-object p1, p2

    goto :goto_1

    .line 1056
    :cond_a
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1057
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1135
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/FilterCreateActivity;->access$900(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V

    .line 1144
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    const/4 v0, 0x1

    .line 1145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$500(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->FilterNameHint:I

    const-string v2, "FilterNameHint"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$000(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_1

    .line 1149
    sget v0, Lorg/telegram/messenger/R$string;->topic_name_hint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setHint(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 1152
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1158
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1160
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$400(Lorg/telegram/ui/FilterCreateActivity;)Lorg/fork/ui/view/PollEditTextCellWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/ui/view/PollEditTextCellWrapper;->getPollEditTextCell()Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p1

    .line 1161
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 1162
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1164
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
