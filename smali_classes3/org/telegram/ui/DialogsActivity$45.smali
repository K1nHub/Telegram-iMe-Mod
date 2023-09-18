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

.method public static synthetic $r8$lambda$0yJvmMfi4_KvBlDRXQJX6pKqnFw(Lorg/telegram/ui/DialogsActivity$45;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$10()V

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

.method public static synthetic $r8$lambda$jy2gE5C3veaVxaCm3XJu3tKTMQc(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$6(Ljava/lang/String;J)V

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

.method public static synthetic $r8$lambda$sXVCICrP_-eCxkM3xJwsxhy_1CY(Lorg/telegram/ui/DialogsActivity$45;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$8(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zooriKiE-4Gm1BQnrXjez4MWw0I(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$45;->lambda$onUserLongPressed$7(Ljava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
    .locals 0

    .line 7583
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Stories/DialogStoriesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$0()V
    .locals 1

    .line 7606
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryRecorder()V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$1()V
    .locals 4

    .line 7609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7610
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$32700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 7611
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "start_from"

    const/16 v2, 0x9

    .line 7612
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7613
    new-instance v1, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 7614
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$10()V
    .locals 1

    .line 7660
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$31800(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$2()V
    .locals 4

    .line 7617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7618
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$32600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 7619
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7620
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$3()V
    .locals 1

    .line 7622
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$31800(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$4(J)V
    .locals 1

    .line 7628
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$5(J)V
    .locals 1

    .line 7631
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$6(Ljava/lang/String;J)V
    .locals 3

    .line 7634
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32300(Lorg/telegram/ui/DialogsActivity;)I

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

    .line 7635
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    .line 7636
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32500(Lorg/telegram/ui/DialogsActivity;)I

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

    .line 7637
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, " "

    .line 7638
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_1

    .line 7640
    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7642
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

.method private synthetic lambda$onUserLongPressed$7(Ljava/lang/String;J)V
    .locals 3

    .line 7645
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$32000(Lorg/telegram/ui/DialogsActivity;)I

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

    .line 7646
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    .line 7647
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32200(Lorg/telegram/ui/DialogsActivity;)I

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

    .line 7648
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, " "

    .line 7649
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_1

    .line 7651
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7653
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

.method private synthetic lambda$onUserLongPressed$8(J)V
    .locals 1

    .line 7656
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$31900(Lorg/telegram/ui/DialogsActivity;J)V

    return-void
.end method

.method private synthetic lambda$onUserLongPressed$9(J)V
    .locals 1

    .line 7659
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$31900(Lorg/telegram/ui/DialogsActivity;J)V

    return-void
.end method


# virtual methods
.method public onMiniListClicked()V
    .locals 2

    .line 7669
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->hasOnlySlefStories:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$31700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasOnlySelfStories()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7670
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openSelfStories()V

    goto :goto_0

    .line 7672
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/DialogsActivity;->scrollToTop(ZZ)V

    :goto_0
    return-void
.end method

.method public onUserLongPressed(Landroid/view/View;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 7586
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    const/16 v6, 0x8

    .line 7587
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6, v7, v7}, Lorg/telegram/ui/Components/ItemOptions;->setViewAdditionalOffsets(IIII)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    const/4 v6, 0x6

    .line 7589
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 7590
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v7

    .line 7591
    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v9

    if-eqz v9, :cond_1

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    goto :goto_1

    :cond_1
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    :goto_1
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 7588
    invoke-static {v8, v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    .line 7586
    invoke-static {v4, v5}, Lorg/telegram/ui/DialogsActivity;->access$26002(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7593
    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7594
    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 7597
    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 7598
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$31500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    const-string v4, "Settings"

    if-nez v1, :cond_5

    .line 7599
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/DialogsActivity;->storiesEnabled:Z

    if-nez v2, :cond_4

    .line 7600
    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v1, :cond_3

    .line 7601
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->showPremiumHint()V

    :cond_3
    return-void

    .line 7605
    :cond_4
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_stories_add:I

    sget v1, Lorg/telegram/messenger/R$string;->AddStory:I

    const-string v2, "AddStory"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    new-instance v10, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    move v8, v1

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7608
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_stories_archive:I

    sget v3, Lorg/telegram/messenger/R$string;->ArchivedStories:I

    const-string v5, "ArchivedStories"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda4;

    invoke-direct {v13, v0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    move v11, v1

    move v12, v2

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7616
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_stories_saved:I

    sget v3, Lorg/telegram/messenger/R$string;->SavedStories:I

    const-string v5, "SavedStories"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7622
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v3, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_2

    .line 7624
    :cond_5
    invoke-static {v2, v3, v7}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v1

    .line 7625
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$31600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->areStoriesNotMuted(IJ)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 7626
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget v9, Lorg/telegram/messenger/R$string;->SendMessage:I

    const-string v10, "SendMessage"

    .line 7627
    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0, v2, v3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {v6, v8, v9, v10}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    sget v6, Lorg/telegram/messenger/R$string;->OpenProfile:I

    const-string v8, "OpenProfile"

    .line 7630
    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    new-instance v6, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0, v2, v3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    xor-int/lit8 v8, v5, 0x1

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    sget v10, Lorg/telegram/messenger/R$string;->NotificationsStoryMute2:I

    const-string v11, "NotificationsStoryMute2"

    .line 7633
    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda9;

    invoke-direct {v11, v0, v1, v2, v3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V

    invoke-virtual {v6, v8, v9, v10, v11}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    .line 7643
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    sget v9, Lorg/telegram/messenger/R$string;->NotificationsStoryUnmute2:I

    const-string v10, "NotificationsStoryUnmute2"

    .line 7644
    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/DialogsActivity$45;Ljava/lang/String;J)V

    invoke-virtual {v6, v5, v8, v9, v10}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 7654
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 7655
    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    sget v8, Lorg/telegram/messenger/R$string;->ArchivePeerStories:I

    const-string v9, "ArchivePeerStories"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda8;

    invoke-direct {v9, v0, v2, v3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {v1, v5, v6, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 7657
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 7658
    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_unarchive:I

    sget v8, Lorg/telegram/messenger/R$string;->UnarchiveStories:I

    const-string v9, "UnarchiveStories"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda7;

    invoke-direct {v9, v0, v2, v3}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/DialogsActivity$45;J)V

    invoke-virtual {v1, v5, v6, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 7660
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v3, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/DialogsActivity$45$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$45;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 7662
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$45;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, -0x8

    .line 7663
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, -0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 7664
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method
