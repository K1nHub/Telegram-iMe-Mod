.class Lorg/telegram/ui/ProfileActivity$15;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->lambda$createView$20(JLandroid/content/Context;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;J)V
    .locals 0

    .line 4105
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-wide p2, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic dismiss()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback$-CC;->$default$dismiss(Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;)V

    return-void
.end method

.method public muteFor(I)V
    .locals 7

    if-nez p1, :cond_1

    .line 4119
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4120
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$15;->toggleMute()V

    .line 4122
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4123
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x4

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 4126
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$35900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JJI)V

    .line 4127
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4128
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x5

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 4130
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$36000(Lorg/telegram/ui/ProfileActivity;)V

    .line 4131
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    if-ltz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4132
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public openExceptions()V
    .locals 4

    .line 4162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4163
    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4164
    new-instance v1, Lorg/telegram/ui/TopicsNotifySettingsFragments;

    invoke-direct {v1, v0}, Lorg/telegram/ui/TopicsNotifySettingsFragments;-><init>(Landroid/os/Bundle;)V

    .line 4165
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->notificationsExceptionTopics:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/TopicsNotifySettingsFragments;->setExceptions(Ljava/util/HashSet;)V

    .line 4166
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showCustomize()V
    .locals 4

    .line 4139
    iget-wide v0, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4141
    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4142
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v1

    const-string v3, "topic_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4143
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public toggleMute()V
    .locals 8

    .line 4149
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    .line 4150
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$36100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v5

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    .line 4151
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4152
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 4154
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$36000(Lorg/telegram/ui/ProfileActivity;)V

    .line 4155
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4156
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public toggleSound()V
    .locals 9

    .line 4108
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$35800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_enabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 4110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/telegram/ui/ProfileActivity$15;->val$did:J

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$5400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4111
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4112
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$15;->this$0:Lorg/telegram/ui/ProfileActivity;

    xor-int/2addr v1, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method
