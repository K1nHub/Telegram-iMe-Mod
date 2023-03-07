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

    .line 3844
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3845
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    .line 3846
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 3848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 3849
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3850
    sget v1, Lorg/telegram/messenger/R$string;->ThemePreviewDialog1:I

    const-string v2, "ThemePreviewDialog1"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3851
    sget v1, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage1:I

    const-string v2, "ThemePreviewDialogMessage1"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3852
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 3853
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    const/4 v2, 0x1

    .line 3854
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3855
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3856
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 3857
    iput p1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3858
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3859
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    const/4 v3, 0x2

    .line 3860
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3861
    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3863
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3864
    sget v4, Lorg/telegram/messenger/R$string;->ThemePreviewDialog2:I

    const-string v5, "ThemePreviewDialog2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3865
    sget v4, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage2:I

    const-string v5, "ThemePreviewDialogMessage2"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 3866
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 3867
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 3868
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3869
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3870
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v4, p1, -0xe10

    .line 3871
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3872
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3873
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    const/4 v4, -0x1

    .line 3874
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3875
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3877
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3878
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialog3:I

    const-string v6, "ThemePreviewDialog3"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3879
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage3:I

    const-string v6, "ThemePreviewDialogMessage3"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 3880
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    const/4 v5, 0x3

    .line 3881
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 3882
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3883
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3884
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v6, p1, -0x1c20

    .line 3885
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3886
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3887
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 3888
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3889
    iget-object v6, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3891
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3892
    sget v6, Lorg/telegram/messenger/R$string;->ThemePreviewDialog4:I

    const-string v7, "ThemePreviewDialog4"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3893
    sget v6, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage4:I

    const-string v7, "ThemePreviewDialogMessage4"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 3894
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 3895
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 3896
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3897
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3898
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v5, p1, -0x2a30

    .line 3899
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3900
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3901
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 3902
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3903
    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3905
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3906
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialog5:I

    const-string v6, "ThemePreviewDialog5"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3907
    sget v5, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage5:I

    const-string v6, "ThemePreviewDialogMessage5"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v5, 0x4

    .line 3908
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 3909
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 3910
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3911
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3912
    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v5, p1, -0x3840

    .line 3913
    iput v5, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3914
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3915
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 3916
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3917
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3919
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3920
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialog6:I

    const-string v5, "ThemePreviewDialog6"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3921
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage6:I

    const-string v5, "ThemePreviewDialogMessage6"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v3, 0x5

    .line 3922
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 3923
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 3924
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3925
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3926
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v3, p1, -0x4650

    .line 3927
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3928
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3929
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 3930
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3931
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3933
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3934
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialog7:I

    const-string v5, "ThemePreviewDialog7"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3935
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage7:I

    const-string v5, "ThemePreviewDialogMessage7"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v3, 0x6

    .line 3936
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 3937
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 3938
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3939
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3940
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v3, p1, -0x5460

    .line 3941
    iput v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3942
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3943
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 3944
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3945
    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3947
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 3948
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialog8:I

    const-string v5, "ThemePreviewDialog8"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 3949
    sget v3, Lorg/telegram/messenger/R$string;->ThemePreviewDialogMessage8:I

    const-string v5, "ThemePreviewDialogMessage8"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 3950
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 3951
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 3952
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 3953
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 3954
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 p1, p1, -0x6270

    .line 3955
    iput p1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 3956
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 3957
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 3958
    iput v4, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:I

    .line 3959
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 3964
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 3995
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

    .line 3969
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

    .line 3986
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    .line 3987
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 3988
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

    .line 3989
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

    .line 3976
    new-instance p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 p2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, v1}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 3978
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 3980
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3981
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
