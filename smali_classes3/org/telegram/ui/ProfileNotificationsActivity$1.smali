.class Lorg/telegram/ui/ProfileNotificationsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity;Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "notify2_"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 270
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 271
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 275
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->val$key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 279
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->val$key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 281
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v5

    if-nez v5, :cond_2

    .line 282
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    if-eqz v4, :cond_2

    .line 284
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    goto :goto_0

    .line 288
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->val$key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 289
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v5

    if-nez v5, :cond_2

    .line 290
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 291
    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    if-eqz v4, :cond_2

    .line 293
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v4, 0x7fffffff

    .line 294
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 299
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    .line 301
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 302
    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-direct {v3}, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;-><init>()V

    .line 303
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    .line 304
    iput-boolean v2, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->hasCustom:Z

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    if-eqz v1, :cond_3

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyuntil_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->muteUntil:I

    .line 309
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;

    move-result-object p1

    invoke-interface {p1, v3}, Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;->didCreateNewException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V

    .line 312
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$1;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method
