.class public Lorg/telegram/ui/StatisticActivity$MemberData;
.super Ljava/lang/Object;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberData"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public user:Lorg/telegram/tgnet/TLRPC$User;

.field user_id:J


# direct methods
.method public static synthetic $r8$lambda$EREEQzH71DTu4ZQbVr0BWMKqPRU(Lorg/telegram/ui/StatisticActivity$MemberData;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;ZLorg/telegram/ui/StatisticActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/StatisticActivity$MemberData;->lambda$onLongClick$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;ZLorg/telegram/ui/StatisticActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QwYXNG9aXU6qjb8-y1-XkxDtNxY(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/StatisticActivity$MemberData;->lambda$onLongClick$2(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8qJ6C48fH9aef1NN7BGJsbKK6w(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/StatisticActivity$MemberData;->lambda$onLongClick$3(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lLRehZQRrstbswy7D_MTOZak5zE(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/StatisticActivity$MemberData;->lambda$onLongClick$0(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tiUirra-Hnquw9Aq6SGDK2g7O6w(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/StatisticActivity$MemberData;->lambda$onLongClick$1(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(JLjava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lorg/telegram/tgnet/TLRPC$User;"
        }
    .end annotation

    .line 2546
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 2547
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static from(Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lorg/telegram/ui/StatisticActivity$MemberData;"
        }
    .end annotation

    .line 2510
    new-instance v0, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-direct {v0}, Lorg/telegram/ui/StatisticActivity$MemberData;-><init>()V

    .line 2511
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->user_id:J

    iput-wide v1, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->user_id:J

    .line 2512
    invoke-static {v1, v2, p1}, Lorg/telegram/ui/StatisticActivity$MemberData;->find(JLjava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2514
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->deleted:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Deletions"

    .line 2515
    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->banned:I

    const-string v3, ", "

    if-lez v1, :cond_2

    .line 2518
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2519
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2521
    :cond_1
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->banned:I

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Bans"

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    :cond_2
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->kicked:I

    if-lez v1, :cond_4

    .line 2524
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2525
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    :cond_3
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopAdmin;->kicked:I

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Restrictions"

    invoke-static {v2, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lorg/telegram/ui/StatisticActivity$MemberData;"
        }
    .end annotation

    .line 2534
    new-instance v0, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-direct {v0}, Lorg/telegram/ui/StatisticActivity$MemberData;-><init>()V

    .line 2535
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;->user_id:J

    iput-wide v1, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->user_id:J

    .line 2536
    invoke-static {v1, v2, p1}, Lorg/telegram/ui/StatisticActivity$MemberData;->find(JLjava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2537
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopInviter;->invitations:I

    if-lez p0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Invitations"

    .line 2538
    invoke-static {v1, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->description:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 2540
    iput-object p0, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->description:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static from(Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lorg/telegram/ui/StatisticActivity$MemberData;"
        }
    .end annotation

    .line 2492
    new-instance v0, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-direct {v0}, Lorg/telegram/ui/StatisticActivity$MemberData;-><init>()V

    .line 2493
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;->user_id:J

    iput-wide v1, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->user_id:J

    .line 2494
    invoke-static {v1, v2, p1}, Lorg/telegram/ui/StatisticActivity$MemberData;->find(JLjava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 2495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2496
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;->messages:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "messages"

    .line 2497
    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    :cond_0
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;->avg_chars:I

    if-lez v1, :cond_2

    .line 2500
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ", "

    .line 2501
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->CharactersPerMessage:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_statsGroupTopPoster;->avg_chars:I

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Characters"

    invoke-static {v5, p0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "CharactersPerMessage"

    invoke-static {p0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/StatisticActivity$MemberData;->description:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$onLongClick$0(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 3

    .line 2608
    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$4600(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2611
    aget-object v1, p2, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 2615
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    .line 2616
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    .line 2617
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2618
    iget-object p4, p0, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 2619
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2620
    invoke-virtual {p0, p5, p1, p2}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    goto :goto_0

    .line 2622
    :cond_2
    invoke-direct {p0, p5, p1, p2, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onLongClick$1(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 2607
    new-instance v7, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onLongClick$2(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 3

    .line 2637
    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->access$4500(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2640
    aget-object v1, p2, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 2644
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    .line 2645
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    .line 2646
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2647
    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    iget-wide v1, p4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v1, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 2648
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2649
    invoke-virtual {p0, p5, p1, p2}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    goto :goto_0

    .line 2651
    :cond_2
    invoke-direct {p0, p5, p1, p2, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onLongClick$3(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 2636
    new-instance v7, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onLongClick$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;ZLorg/telegram/ui/StatisticActivity;Landroid/content/DialogInterface;I)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p5

    move/from16 v2, p7

    .line 2681
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    new-array v12, v0, [Z

    .line 2683
    new-instance v11, Lorg/telegram/ui/StatisticActivity$MemberData$1;

    iget-object v0, v15, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 p1, v12

    move/from16 v12, p4

    move-object/from16 v13, v17

    move-object/from16 v14, p1

    move-object/from16 v15, p5

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/StatisticActivity$MemberData$1;-><init>(Lorg/telegram/ui/StatisticActivity$MemberData;JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;[ZLorg/telegram/ui/StatisticActivity;)V

    .line 2691
    new-instance v0, Lorg/telegram/ui/StatisticActivity$MemberData$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/telegram/ui/StatisticActivity$MemberData$2;-><init>(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;Z[Z)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    move-object/from16 v4, p5

    .line 2711
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_0
    move-object v4, v13

    move-object v3, v15

    .line 2712
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2713
    invoke-virtual {v3, v4}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 2715
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2716
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    const-string v5, "chat_id"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2717
    iget-object v1, v3, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v5, "search_from_user_id"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2718
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    .line 2566
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 2568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2570
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_3

    .line 2575
    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 2576
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    .line 2578
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2579
    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-object v6, v7, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v16, v5

    iget-wide v4, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v14, v4

    if-nez v6, :cond_0

    .line 2580
    instance-of v4, v13, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v4, :cond_0

    .line 2581
    move-object v11, v13

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .line 2584
    :cond_0
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v6, v14, v4

    if-nez v6, :cond_1

    .line 2585
    instance-of v4, v13, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v4, :cond_1

    .line 2586
    move-object v12, v13

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    :cond_1
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v16, v5

    move-object v4, v11

    goto :goto_1

    :cond_3
    move-object/from16 v16, v5

    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 2592
    :goto_1
    sget v5, Lorg/telegram/messenger/R$string;->StatisticOpenProfile:I

    const-string v6, "StatisticOpenProfile"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2593
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v16

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 2594
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    sget v5, Lorg/telegram/messenger/R$string;->StatisticSearchUserHistory:I

    const-string v9, "StatisticSearchUserHistory"

    invoke-static {v9, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_msgbubble3:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 2597
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x12c

    const/4 v11, 0x3

    if-eqz p4, :cond_5

    if-nez v4, :cond_5

    const/4 v13, 0x0

    .line 2600
    aget-object v1, v0, v13

    if-nez v1, :cond_4

    .line 2601
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v13

    .line 2602
    aget-object v1, v0, v13

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 2604
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 2605
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2606
    iget-object v2, v7, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2607
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda4;

    invoke-direct {v4, v7, v8, v0, v3}, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v2, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_5
    if-eqz p4, :cond_7

    if-nez v12, :cond_7

    const/4 v13, 0x0

    .line 2629
    aget-object v1, v0, v13

    if-nez v1, :cond_6

    .line 2630
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v13

    .line 2631
    aget-object v1, v0, v13

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 2633
    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 2634
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2635
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2636
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda3;

    invoke-direct {v4, v7, v8, v0, v3}, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StatisticActivity$MemberData;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v2, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_7
    const/4 v9, 0x0

    .line 2657
    aget-object v10, v0, v9

    if-eqz v10, :cond_8

    .line 2658
    aget-object v10, v0, v9

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v10, 0x0

    .line 2659
    aput-object v10, v0, v9

    :cond_8
    if-eqz v12, :cond_f

    if-eqz v4, :cond_f

    .line 2663
    iget-wide v9, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-wide v13, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v0, v9, v13

    if-eqz v0, :cond_f

    .line 2664
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2665
    iget-object v9, v12, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v9, :cond_9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v9, :cond_9

    const/4 v13, 0x1

    goto :goto_2

    :cond_9
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_b

    .line 2666
    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v9, :cond_a

    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v9, :cond_b

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-nez v9, :cond_b

    :cond_a
    const/4 v13, 0x0

    :cond_b
    if-eqz v13, :cond_f

    .line 2670
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_d

    .line 2671
    sget v0, Lorg/telegram/messenger/R$string;->SetAsAdmin:I

    const-string v9, "SetAsAdmin"

    goto :goto_4

    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminRights:I

    const-string v9, "EditAdminRights"

    :goto_4
    invoke-static {v9, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_e

    .line 2672
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    goto :goto_5

    :cond_e
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2673
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 2677
    :goto_6
    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2680
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->toIntArray(Ljava/util/List;)[I

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/StatisticActivity$MemberData$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StatisticActivity$MemberData;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;ZLorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2721
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 2722
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    .line 2555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2556
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2557
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$MemberData;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 2558
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const/4 v0, 0x1

    .line 2562
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-void
.end method
