.class Lorg/telegram/ui/DialogsActivity$45;
.super Lorg/telegram/ui/Stories/DialogStoriesCell;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$-yL_kRpKh7RNFRivFZ-WK05SXpI(Lorg/telegram/ui/DialogsActivity$45;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$1EY71hsvoBaxNgZSvEPNKxGPgXo(Lorg/telegram/ui/DialogsActivity$45;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$10(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$6hdF2PL6SjfgsXkBLOQUHqvx7ns(Lorg/telegram/ui/DialogsActivity$45;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$6(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$8iMtr-vYfsBGY9dA0VyPltLyfcM(Lorg/telegram/ui/DialogsActivity$45;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$D2qtVnuOjsB2EclGf6FYUUF9BMQ(Lorg/telegram/ui/DialogsActivity$45;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$NQelx_jNwdV2W8DRDEO05QDBdz4(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$8(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$PHLwtr1M0PKFWiinMFkVRRINggY(Lorg/telegram/ui/DialogsActivity$45;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$U__K9eE7zP6eTQAdY_Q5NqMmur8(Lorg/telegram/ui/DialogsActivity$45;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vua72qWbPRim6NgS_qovRVikl4o(Lorg/telegram/ui/DialogsActivity$45;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$k4VjAnpCsDxSY5Q9isl3NDZD62I(Lorg/telegram/ui/DialogsActivity$45;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$5(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$koBufkwJrDYhocvA2qhEX8rN5Fc(Lorg/telegram/ui/DialogsActivity$45;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zooriKiE-4Gm1BQnrXjez4MWw0I(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$7(Ljava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
    .locals 0

    .line 7634
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Stories/DialogStoriesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$0()V
    .locals 1

    .line 7657
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryRecorder()V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$1()V
    .locals 4

    .line 7660
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7661
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 7662
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "start_from"

    const/16 v2, 0x9

    .line 7663
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7664
    new-instance v1, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 7665
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$10(J)V
    .locals 1

    .line 7709
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$32700(Lorg/telegram/ui/DialogsActivity;J)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$11()V
    .locals 1

    .line 7710
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32600(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$2()V
    .locals 4

    .line 7668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7669
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$33400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 7670
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7671
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$3()V
    .locals 1

    .line 7673
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32600(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$4(J)V
    .locals 1

    .line 7679
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$5(J)V
    .locals 1

    .line 7682
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$6(J)V
    .locals 1

    .line 7685
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$7(Ljava/lang/String;J)V
    .locals 3

    .line 7687
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stories_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7688
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    .line 7689
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33300(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 7690
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, " "

    .line 7691
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_1

    .line 7693
    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7695
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    const/4 v0, 0x1

    new-array v2, v0, [Lorg/telegram/tgnet/TLRPC$User;

    aput-object p1, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->NotificationsStoryMutedHint:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "NotificationsStoryMutedHint"

    invoke-static {p2, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$8(Ljava/lang/String;J)V
    .locals 3

    .line 7697
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stories_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7698
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    .line 7699
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33000(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 7700
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, " "

    .line 7701
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_1

    .line 7703
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7705
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    new-array v2, v1, [Lorg/telegram/tgnet/TLRPC$User;

    aput-object p1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->NotificationsStoryUnmutedHint:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "NotificationsStoryUnmutedHint"

    invoke-static {p2, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$9(J)V
    .locals 1

    .line 7707
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$32700(Lorg/telegram/ui/DialogsActivity;J)V

    return-void
.end method


# virtual methods
.method public onMiniListClicked()V
    .locals 2

    .line 7719
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->hasOnlySlefStories:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasOnlySelfStories()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7720
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openSelfStories()V

    goto :goto_0

    .line 7722
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/DialogsActivity;->scrollToTop(ZZ)V

    :goto_0
    return-void
.end method

.method public onUserLongPressed(Landroid/view/View;J)V
    .locals 10

    .line 7637
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/16 v2, 0x8

    .line 7638
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Lorg/telegram/ui/Components/ItemOptions;->setViewAdditionalOffsets(IIII)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x6

    .line 7640
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 7641
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 7642
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    goto :goto_1

    :cond_1
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    :goto_1
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 7639
    invoke-static {v4, v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 7637
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26802(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7644
    invoke-static {p2, p3}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7645
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 7648
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 7649
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32300(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    cmp-long p1, p2, v0

    const-string v0, "Settings"

    if-nez p1, :cond_5

    .line 7650
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p2, p1, Lorg/telegram/ui/DialogsActivity;->storiesEnabled:Z

    if-nez p2, :cond_4

    .line 7651
    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p1, :cond_3

    .line 7652
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->showPremiumHint()V

    :cond_3
    return-void

    .line 7656
    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_stories_add:I

    sget p1, Lorg/telegram/messenger/R$string;->AddStory:I

    const-string p2, "AddStory"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    new-instance v6, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7659
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$26800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_stories_archive:I

    sget p3, Lorg/telegram/messenger/R$string;->ArchivedStories:I

    const-string v1, "ArchivedStories"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7667
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$26800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_stories_saved:I

    sget p3, Lorg/telegram/messenger/R$string;->SavedStories:I

    const-string v1, "SavedStories"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7673
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget p3, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_7

    .line 7675
    :cond_5
    invoke-static {p2, p3, v3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p1

    .line 7676
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$32400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1, p2, p3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->areStoriesNotMuted(IJ)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 7677
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$26800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-lez v5, :cond_6

    move v6, v2

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget v8, Lorg/telegram/messenger/R$string;->SendMessage:I

    const-string v9, "SendMessage"

    .line 7678
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda7;

    invoke-direct {v9, p0, p2, p3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    if-lez v5, :cond_7

    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v3

    :goto_3
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    sget v8, Lorg/telegram/messenger/R$string;->OpenProfile:I

    const-string v9, "OpenProfile"

    .line 7681
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0, p2, p3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    if-gez v5, :cond_8

    move v6, v2

    goto :goto_4

    :cond_8
    move v6, v3

    :goto_4
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    sget v8, Lorg/telegram/messenger/R$string;->OpenChannel2:I

    const-string v9, "OpenChannel2"

    .line 7684
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0, p2, p3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    if-nez v1, :cond_9

    if-lez v5, :cond_9

    move v6, v2

    goto :goto_5

    :cond_9
    move v6, v3

    :goto_5
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    sget v8, Lorg/telegram/messenger/R$string;->NotificationsStoryMute2:I

    const-string v9, "NotificationsStoryMute2"

    .line 7686
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda11;

    invoke-direct {v9, p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    .line 7696
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    if-eqz v1, :cond_a

    if-lez v5, :cond_a

    move v1, v2

    goto :goto_6

    :cond_a
    move v1, v3

    :goto_6
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    sget v6, Lorg/telegram/messenger/R$string;->NotificationsStoryUnmute2:I

    const-string v7, "NotificationsStoryUnmute2"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V

    invoke-virtual {v4, v1, v5, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 7706
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    xor-int/2addr v1, v2

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    sget v4, Lorg/telegram/messenger/R$string;->ArchivePeerStories:I

    const-string v5, "ArchivePeerStories"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, p2, p3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {p1, v1, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 7708
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_unarchive:I

    sget v4, Lorg/telegram/messenger/R$string;->UnarchiveStories:I

    const-string v5, "UnarchiveStories"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p2, p3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {p1, v1, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 7710
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget p3, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7712
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, -0x8

    .line 7713
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const/16 p3, -0xa

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 7714
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method
