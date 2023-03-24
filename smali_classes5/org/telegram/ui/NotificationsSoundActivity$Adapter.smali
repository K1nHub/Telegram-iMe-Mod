.class Lorg/telegram/ui/NotificationsSoundActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "NotificationsSoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsSoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsSoundActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/NotificationsSoundActivity;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/NotificationsSoundActivity;Lorg/telegram/ui/NotificationsSoundActivity$1;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;-><init>(Lorg/telegram/ui/NotificationsSoundActivity;)V

    return-void
.end method

.method private getTone(I)Lorg/telegram/ui/NotificationsSoundActivity$Tone;
    .locals 3

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    if-lt p1, v1, :cond_0

    iget v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    if-ge p1, v2, :cond_0

    .line 589
    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    return-object p1

    .line 591
    :cond_0
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesStartRow:I

    if-lt p1, v1, :cond_1

    iget v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesEndRow:I

    if-ge p1, v2, :cond_1

    .line 592
    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 568
    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->getTone(I)Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget p1, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    int-to-long v0, p1

    return-wide v0

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    if-ne p1, v1, :cond_1

    const-wide/16 v0, 0x1

    return-wide v0

    .line 574
    :cond_1
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    if-ne p1, v1, :cond_2

    const-wide/16 v0, 0x2

    return-wide v0

    .line 576
    :cond_2
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadRow:I

    if-ne p1, v1, :cond_3

    const-wide/16 v0, 0x3

    return-wide v0

    .line 578
    :cond_3
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow:I

    if-ne p1, v1, :cond_4

    const-wide/16 v0, 0x4

    return-wide v0

    .line 580
    :cond_4
    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow2:I

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x5

    return-wide v0

    .line 583
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    if-ge p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 674
    :cond_0
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    if-eq p1, v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 676
    :cond_1
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadRow:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    return p1

    .line 678
    :cond_2
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow:I

    if-eq p1, v1, :cond_4

    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow2:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 682
    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 692
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

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
    .locals 7

    .line 628
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_3

    .line 659
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/CreationTextCell;

    .line 660
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 661
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 662
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "switchTrackChecked"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 663
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "checkboxCheck"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 664
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 665
    sget p2, Lorg/telegram/messenger/R$string;->UploadSound:I

    const-string v0, "UploadSound"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v1}, Lorg/telegram/ui/Cells/CreationTextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_3

    .line 651
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    if-ne p2, v1, :cond_2

    .line 653
    sget p2, Lorg/telegram/messenger/R$string;->TelegramTones:I

    const-string v0, "TelegramTones"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 654
    :cond_2
    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    if-ne p2, v0, :cond_a

    .line 655
    sget p2, Lorg/telegram/messenger/R$string;->SystemTones:I

    const-string v0, "SystemTones"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 630
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    const/4 v0, 0x0

    .line 632
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v4, v3, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    if-lt p2, v4, :cond_4

    iget v5, v3, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    if-ge p2, v5, :cond_4

    .line 633
    iget-object v0, v3, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    sub-int v3, p2, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 635
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v4, v3, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesStartRow:I

    if-lt p2, v4, :cond_5

    iget v5, v3, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesEndRow:I

    if-ge p2, v5, :cond_5

    .line 636
    iget-object v0, v3, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    sub-int v3, p2, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    :cond_5
    if-eqz v0, :cond_a

    .line 640
    iget-object v3, p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-ne v3, v0, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    move v3, v1

    .line 641
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v5, v4, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-ne v0, v5, :cond_7

    move v5, v2

    goto :goto_1

    :cond_7
    move v5, v1

    .line 642
    :goto_1
    iget-object v4, v4, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    iget v6, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_2

    :cond_8
    move v4, v1

    .line 643
    :goto_2
    iput-object v0, p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 644
    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$800(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    sub-int/2addr v0, v2

    if-eq p2, v0, :cond_9

    move v1, v2

    :cond_9
    invoke-static {p1, v1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$902(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;Z)Z

    .line 646
    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$1000(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Lorg/telegram/ui/Components/RadioButton;

    move-result-object p2

    invoke-virtual {p2, v5, v3}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 647
    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$1100(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 601
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "windowBackgroundWhite"

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 609
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object p1, p1, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 619
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 613
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/CreationTextCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v1}, Lorg/telegram/ui/Cells/CreationTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p1, 0x3d

    .line 614
    iput p1, p2, Lorg/telegram/ui/Cells/CreationTextCell;->startPadding:I

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object p1, p1, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 604
    :cond_2
    new-instance p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v1, v1, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object p1, p1, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 622
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
