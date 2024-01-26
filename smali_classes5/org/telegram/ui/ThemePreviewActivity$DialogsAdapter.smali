.class public Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsAdapter"
.end annotation


# instance fields
.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/DialogCell$CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 4721
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 4722
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    .line 4723
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 4725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 4726
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4727
    sget v1, Lorg/telegram/messenger/R$string;->ThemePreviewDialog1:I

    const-string v2, "ThemePreviewDialog1"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4728
    sget v1, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage1:I

    const-string v2, "ThemePreviewDialogMessage1"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4729
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 4730
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    const/4 v2, 0x1

    .line 4731
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4732
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4733
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 4734
    iput p1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4735
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4736
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    const/4 v3, 0x2

    .line 4737
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4738
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4740
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4741
    sget v4, Lorg/telegram/messenger/R$string;->ThemePreviewDialog2:I

    const-string v5, "ThemePreviewDialog2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4742
    sget v4, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage2:I

    const-string v5, "ThemePreviewDialogMessage2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 4743
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 4744
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 4745
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4746
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4747
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v4, p1, -0xe10

    .line 4748
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4749
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4750
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    const/4 v4, -0x1

    .line 4751
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4752
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4754
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4755
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialog3:I

    const-string v6, "ThemePreviewDialog3"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4756
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage3:I

    const-string v6, "ThemePreviewDialogMessage3"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 4757
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    const/4 v5, 0x3

    .line 4758
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 4759
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4760
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4761
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v6, p1, -0x1c20

    .line 4762
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4763
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4764
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 4765
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4766
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4768
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4769
    sget v6, Lorg/telegram/messenger/R$string;->ThemePreviewDialog4:I

    const-string v7, "ThemePreviewDialog4"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4770
    sget v6, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage4:I

    const-string v7, "ThemePreviewDialogMessage4"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 4771
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 4772
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 4773
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4774
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4775
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v5, p1, -0x2a30

    .line 4776
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4777
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4778
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 4779
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4780
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4782
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4783
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialog5:I

    const-string v6, "ThemePreviewDialog5"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4784
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage5:I

    const-string v6, "ThemePreviewDialogMessage5"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v5, 0x4

    .line 4785
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 4786
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 4787
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4788
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4789
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v5, p1, -0x3840

    .line 4790
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4791
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4792
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 4793
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4794
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4796
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4797
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialog6:I

    const-string v5, "ThemePreviewDialog6"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4798
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage6:I

    const-string v5, "ThemePreviewDialogMessage6"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v3, 0x5

    .line 4799
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 4800
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 4801
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4802
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4803
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v3, p1, -0x4650

    .line 4804
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4805
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4806
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 4807
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4808
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4810
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4811
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialog7:I

    const-string v5, "ThemePreviewDialog7"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4812
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage7:I

    const-string v5, "ThemePreviewDialogMessage7"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v3, 0x6

    .line 4813
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 4814
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 4815
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4816
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4817
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v3, p1, -0x5460

    .line 4818
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4819
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4820
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 4821
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4822
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4824
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 4825
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialog8:I

    const-string v5, "ThemePreviewDialog8"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 4826
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage8:I

    const-string v5, "ThemePreviewDialogMessage8"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 4827
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 4828
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 4829
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 4830
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 4831
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 p1, p1, -0x6270

    .line 4832
    iput p1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 4833
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 4834
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 4835
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 4836
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 4841
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 4872
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 4846
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 4863
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    .line 4864
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 4865
    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 4866
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 4853
    new-instance p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 p2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, v1}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 4855
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 4857
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4858
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
