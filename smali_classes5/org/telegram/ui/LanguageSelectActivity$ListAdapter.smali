.class Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LanguageSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private search:Z

.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 598
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 599
    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 600
    iput-boolean p3, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 5

    .line 611
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 615
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 617
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 621
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 622
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 625
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz v2, :cond_4

    goto :goto_0

    .line 629
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    xor-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    iget-object v4, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v4}, Lorg/telegram/ui/LanguageSelectActivity;->access$1100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v4}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :cond_6
    add-int/2addr v2, v1

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x2

    return v2

    :cond_7
    :goto_0
    add-int/2addr v0, v3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 812
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 816
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_1

    return v2

    :cond_1
    move p1, v0

    .line 821
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    move p1, v0

    .line 824
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_6

    const/4 p1, 0x4

    return p1

    :cond_6
    move p1, v0

    .line 831
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_9

    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_8

    const/4 p1, 0x5

    return p1

    :cond_8
    move p1, v0

    .line 834
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_b

    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_a

    return v2

    :cond_a
    move p1, v0

    .line 836
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    if-eq p1, v0, :cond_d

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_e

    :cond_d
    return v2

    :cond_e
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 605
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

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
    .locals 11

    .line 679
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_16

    if-eq v0, v4, :cond_13

    if-eq v0, v2, :cond_e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    .line 786
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 787
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->updateRTL()V

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v5

    :cond_2
    const/16 v0, 0xb

    const/16 v1, 0x10

    if-ne p2, v2, :cond_3

    .line 789
    sget p2, Lorg/telegram/messenger/R$string;->TranslateMessagesInfo1:I

    const-string v2, "TranslateMessagesInfo1"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 791
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    .line 792
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    goto/16 :goto_8

    .line 794
    :cond_3
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    .line 795
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    .line 796
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    .line 797
    sget p2, Lorg/telegram/messenger/R$string;->TranslateMessagesInfo2:I

    const-string v0, "TranslateMessagesInfo2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 734
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 735
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->updateRTL()V

    .line 736
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object p2

    .line 737
    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslate:I

    const-string v2, "DoNotTranslate"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-array v2, v4, [Z

    .line 741
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_5

    const-string v1, ""

    goto/16 :goto_1

    .line 743
    :cond_5
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 744
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 746
    :cond_6
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 748
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v4

    .line 749
    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 750
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v7, :cond_8

    const-string v9, ", "

    .line 752
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_8
    invoke-static {v8, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 756
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v3

    goto :goto_0

    .line 760
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 761
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/16 v7, 0x22

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/16 v8, 0x54

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    goto :goto_1

    :catch_0
    :cond_a
    move-object v1, v2

    :catch_1
    :goto_1
    if-nez v1, :cond_b

    .line 767
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v1

    const-string v2, "Languages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 769
    :cond_b
    invoke-virtual {p1, v0, v1, v4, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_8

    .line 803
    :cond_c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-nez p2, :cond_d

    .line 804
    sget p2, Lorg/telegram/messenger/R$string;->TranslateMessages:I

    const-string v0, "TranslateMessages"

    goto :goto_2

    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->Language:I

    const-string v0, "Language"

    :goto_2
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 773
    :cond_e
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 774
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->updateRTL()V

    add-int/2addr p2, v4

    if-ne p2, v4, :cond_f

    .line 777
    sget p2, Lorg/telegram/messenger/R$string;->ShowTranslateButton:I

    const-string v0, "ShowTranslateButton"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 778
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    goto/16 :goto_8

    :cond_f
    if-ne p2, v2, :cond_24

    .line 780
    sget p2, Lorg/telegram/messenger/R$string;->ShowTranslateChatButton:I

    const-string v0, "ShowTranslateChatButton"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$1100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3

    :cond_10
    move v4, v3

    :cond_11
    :goto_3
    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 781
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_12

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_12
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    goto/16 :goto_8

    .line 723
    :cond_13
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-nez v0, :cond_14

    add-int/lit8 p2, p2, -0x1

    .line 725
    :cond_14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_15

    .line 727
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 729
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 682
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_18

    .line 683
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-nez v0, :cond_18

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1100(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1200(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v4

    goto :goto_4

    :cond_17
    move v0, v3

    :goto_4
    rsub-int/lit8 v0, v0, 0x7

    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    sub-int/2addr v0, v5

    sub-int/2addr p2, v0

    add-int/2addr p2, v2

    .line 687
    :cond_18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextRadioCell;

    .line 688
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextRadioCell;->updateRTL()V

    .line 691
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-eqz v0, :cond_1b

    if-ltz p2, :cond_19

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_19

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 695
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_1a

    :goto_5
    move p2, v4

    goto/16 :goto_6

    :cond_1a
    move p2, v3

    goto/16 :goto_6

    .line 696
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    if-ltz p2, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1c

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 698
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_1a

    goto :goto_5

    .line 700
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    sub-int/2addr p2, v0

    :cond_1d
    if-ltz p2, :cond_1e

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1e

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 706
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$800(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_1a

    goto :goto_5

    :goto_6
    if-eqz v1, :cond_20

    .line 709
    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-array v0, v2, [Ljava/lang/Object;

    .line 710
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    aput-object v2, v0, v3

    sget v2, Lorg/telegram/messenger/R$string;->LanguageCustom:I

    const-string v5, "LanguageCustom"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "%1$s (%2$s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    xor-int/lit8 v10, p2, 0x1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/TextRadioCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_7

    .line 712
    :cond_1f
    iget-object v6, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    xor-int/lit8 v10, p2, 0x1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/TextRadioCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 716
    :cond_20
    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/LanguageSelectActivity;->access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result p2

    if-eqz p2, :cond_22

    if-eqz v1, :cond_21

    .line 717
    iget p2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$1300(Lorg/telegram/ui/LanguageSelectActivity;)I

    move-result v0

    if-ne p2, v0, :cond_21

    move v3, v4

    :cond_21
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextRadioCell;->setChecked(Z)V

    goto :goto_8

    .line 719
    :cond_22
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p2

    if-ne v1, p2, :cond_23

    move v3, v4

    :cond_23
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextRadioCell;->setChecked(Z)V

    :cond_24
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-eqz p2, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 663
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 658
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 648
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 649
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 653
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 654
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 643
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 644
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 638
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextRadioCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextRadioCell;-><init>(Landroid/content/Context;)V

    .line 639
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 667
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 672
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextRadioCell;

    if-eqz v0, :cond_0

    .line 673
    check-cast p1, Lorg/telegram/ui/Cells/TextRadioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextRadioCell;->updateRTL()V

    :cond_0
    return-void
.end method
