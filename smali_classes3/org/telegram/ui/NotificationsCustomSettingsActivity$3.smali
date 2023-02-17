.class Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;
.super Ljava/lang/Object;
.source "NotificationsCustomSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsCustomSettingsActivity;->lambda$createView$8(Landroid/content/Context;Landroid/view/View;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

.field final synthetic val$arrayList:Ljava/util/ArrayList;

.field final synthetic val$defaultEnabled:Z

.field final synthetic val$did:J

.field final synthetic val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

.field final synthetic val$newException:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;JZLorg/telegram/ui/NotificationsSettingsActivity$NotificationException;ZILjava/util/ArrayList;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iput-wide p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iput-boolean p4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$defaultEnabled:Z

    iput-object p5, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iput-boolean p6, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$newException:Z

    iput p7, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$position:I

    iput-object p8, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->setDefault()V

    return-void
.end method

.method private setDefault()V
    .locals 3

    .line 364
    iget-boolean v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$newException:Z

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iget-wide v1, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$arrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 381
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Z)V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$4000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V

    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Z)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/NotificationsCustomSettingsActivity$SearchAdapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 388
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$4100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void
.end method

.method private setNotDefault()V
    .locals 6

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iget-wide v3, v3, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->hasCustom:Z

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify2_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iget-wide v4, v4, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iget v1, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyuntil_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iget-wide v2, v2, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 350
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iput v0, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->muteUntil:I

    .line 353
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$newException:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    iget-wide v1, v1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Z)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 360
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void
.end method

.method private update()V
    .locals 4

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget v3, v3, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$defaultEnabled:Z

    if-eq v0, v1, :cond_0

    .line 337
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->setDefault()V

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->setNotDefault()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic dismiss()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback$-CC;->$default$dismiss(Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;)V

    return-void
.end method

.method public muteFor(I)V
    .locals 4

    if-nez p1, :cond_1

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget v3, v3, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->toggleMute()V

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    const/4 v1, 0x4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget v3, v3, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JII)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    const/4 v1, 0x5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 305
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->update()V

    return-void
.end method

.method public synthetic openExceptions()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback$-CC;->$default$openExceptions(Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;)V

    return-void
.end method

.method public showCustomize()V
    .locals 5

    .line 310
    iget-wide v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    iget-wide v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    const-string v3, "dialog_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 313
    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;)V

    .line 314
    new-instance v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3$1;-><init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->setDelegate(Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;)V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public toggleMute()V
    .locals 5

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iget-object v3, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget v3, v3, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    .line 330
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget v4, v4, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget v4, v4, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 332
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->update()V

    return-void
.end method

.method public toggleSound()V
    .locals 6

    .line 281
    iget-wide v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->val$did:J

    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    iget v2, v2, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->topicId:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sound_enabled_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    .line 284
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    xor-int/lit8 v1, v2, 0x1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method
