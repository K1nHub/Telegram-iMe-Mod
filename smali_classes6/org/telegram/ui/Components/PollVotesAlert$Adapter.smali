.class public Lorg/telegram/ui/Components/PollVotesAlert$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "PollVotesAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PollVotesAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1036
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 1040
    iput-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createSectionCell()Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;
    .locals 2

    .line 1081
    new-instance v0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;-><init>(Lorg/telegram/ui/Components/PollVotesAlert$Adapter;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1076
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1077
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const p1, 0x47919

    .line 1045
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-nez p2, :cond_1

    const p1, -0xe2a38

    .line 1049
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-ltz p1, :cond_2

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1051
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object p1, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$MessageUserVote;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$MessageUserVote;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const p1, -0x2c9ce

    .line 1053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(II)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1224
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    .line 1237
    aput p1, p3, p1

    const/4 p2, 0x1

    .line 1238
    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1101
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->createSectionCell()Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    move-result-object p2

    .line 1103
    :cond_0
    move-object v6, p2

    check-cast v6, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1105
    invoke-virtual {v6, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1108
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    const/4 v0, 0x0

    .line 1110
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 1111
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    .line 1112
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;->option:[B

    iget-object v4, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1113
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4400(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v3, :cond_2

    goto :goto_1

    .line 1117
    :cond_2
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;->text:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v2, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PollVotesAlert;->calcPercent([B)I

    move-result v2

    iget v3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCollapsed()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->setText(Ljava/lang/String;IIIZ)V

    .line 1118
    sget v0, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v6, v0, p1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object p2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1059
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4300(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .line 1161
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_2

    .line 1182
    :cond_0
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/TextCell;

    add-int/lit8 p1, p1, -0x1

    .line 1184
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1185
    iget p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result p1

    sub-int/2addr p3, p1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ShowVotes"

    invoke-static {v0, p3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p2, p1, p3, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto :goto_2

    .line 1163
    :cond_1
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    add-int/lit8 p1, p1, -0x1

    .line 1165
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1166
    iget-object p3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$MessageUserVote;

    .line 1167
    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_0
    if-ge v1, p3, :cond_4

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    .line 1169
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;->option:[B

    iget-object v3, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1170
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4400(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/PollVotesAlert$Button;

    if-nez v2, :cond_2

    goto :goto_1

    .line 1174
    :cond_2
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;->text:Ljava/lang/String;

    iget-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/PollVotesAlert;->calcPercent([B)I

    move-result v4

    iget v5, p1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCollapsed()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->setText(Ljava/lang/String;IIIZ)V

    .line 1175
    sget p3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1148
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x17

    invoke-direct {p2, v0, v1, p1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    const/16 p1, 0x41

    .line 1149
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCell;->setOffsetFromImage(I)V

    .line 1150
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    const-string v0, "dialogBackground"

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4500(Lorg/telegram/ui/Components/PollVotesAlert;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const-string p1, "switchTrackChecked"

    const-string v0, "windowBackgroundWhiteBlueText4"

    .line 1151
    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1143
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->createSectionCell()Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    move-result-object p2

    goto :goto_0

    .line 1135
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1136
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1137
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1139
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/widget/TextView;

    move-result-object p2

    goto :goto_0

    .line 1131
    :cond_3
    new-instance p2, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    .line 1156
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 1193
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_3

    .line 1194
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1195
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 1196
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 1200
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;

    .line 1201
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4200(Lorg/telegram/ui/Components/PollVotesAlert;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1202
    iget-object v2, v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageUserVote;

    .line 1204
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$MessageUserVote;->user_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 1205
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->access$4600(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$MessageUserVote;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1209
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_2

    iget-object v3, v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-virtual {p1, v2, v0, v4}, Lorg/telegram/ui/Components/PollVotesAlert$UserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    :cond_3
    return-void
.end method
