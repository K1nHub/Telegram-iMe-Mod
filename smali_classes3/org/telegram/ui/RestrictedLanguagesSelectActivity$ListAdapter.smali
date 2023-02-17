.class Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "RestrictedLanguagesSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/RestrictedLanguagesSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private search:Z

.field final synthetic this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 444
    iput-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 445
    iput-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 446
    iput-boolean p3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 456
    iget-boolean v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 462
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$700(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 541
    iget-boolean v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 451
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
    .locals 7

    .line 493
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 525
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 529
    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 495
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 497
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckbox2Cell;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_3

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 504
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_5

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    if-ltz p2, :cond_5

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$700(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$700(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$700(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_1
    if-nez v2, :cond_6

    return-void

    .line 512
    :cond_6
    iget-object v0, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 513
    iget-object v4, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v4}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$800(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 514
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 515
    iget-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    sget v5, Lorg/telegram/messenger/R$string;->LanguageCustom:I

    const-string v6, "LanguageCustom"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%1$s (%2$s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    xor-int/2addr p2, v1

    invoke-virtual {p1, v4, v2, v3, p2}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 517
    :cond_7
    iget-object v4, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    xor-int/2addr p2, v1

    invoke-virtual {p1, v4, v2, v3, p2}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 519
    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;->setChecked(Z)V

    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p1, "windowBackgroundWhite"

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 484
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 477
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 479
    sget p1, Lorg/telegram/messenger/R$string;->ChooseLanguages:I

    const-string v0, "ChooseLanguages"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 472
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckbox2Cell;

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    move-object p1, p2

    .line 488
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
