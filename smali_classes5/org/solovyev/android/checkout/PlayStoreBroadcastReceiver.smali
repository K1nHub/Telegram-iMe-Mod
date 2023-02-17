.class Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayStoreBroadcastReceiver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/PlayStoreListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addListener(Lorg/solovyev/android/checkout/PlayStoreListener;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already in the list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 41
    iget-object p1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method contains(Lorg/solovyev/android/checkout/PlayStoreListener;)Z
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iget-object p1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 69
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/solovyev/android/checkout/PlayStoreListener;

    .line 72
    invoke-interface {p2}, Lorg/solovyev/android/checkout/PlayStoreListener;->onPurchasesChanged()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 70
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_1
    return-void
.end method

.method removeListener(Lorg/solovyev/android/checkout/PlayStoreListener;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not in the list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lorg/solovyev/android/checkout/PlayStoreBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
