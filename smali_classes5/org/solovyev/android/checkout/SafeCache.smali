.class final Lorg/solovyev/android/checkout/SafeCache;
.super Ljava/lang/Object;
.source "SafeCache.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Cache;


# instance fields
.field private final mCache:Lorg/solovyev/android/checkout/Cache;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Cache;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/solovyev/android/checkout/SafeCache;->mCache:Lorg/solovyev/android/checkout/Cache;

    return-void
.end method


# virtual methods
.method public get(Lorg/solovyev/android/checkout/Cache$Key;)Lorg/solovyev/android/checkout/Cache$Entry;
    .locals 1

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/SafeCache;->mCache:Lorg/solovyev/android/checkout/Cache;

    invoke-interface {v0, p1}, Lorg/solovyev/android/checkout/Cache;->get(Lorg/solovyev/android/checkout/Cache$Key;)Lorg/solovyev/android/checkout/Cache$Entry;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Lorg/solovyev/android/checkout/Cache$Key;Lorg/solovyev/android/checkout/Cache$Entry;)V
    .locals 1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/SafeCache;->mCache:Lorg/solovyev/android/checkout/Cache;

    invoke-interface {v0, p1, p2}, Lorg/solovyev/android/checkout/Cache;->put(Lorg/solovyev/android/checkout/Cache$Key;Lorg/solovyev/android/checkout/Cache$Entry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public remove(Lorg/solovyev/android/checkout/Cache$Key;)V
    .locals 1

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/SafeCache;->mCache:Lorg/solovyev/android/checkout/Cache;

    invoke-interface {v0, p1}, Lorg/solovyev/android/checkout/Cache;->remove(Lorg/solovyev/android/checkout/Cache$Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public removeAll(I)V
    .locals 1

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/SafeCache;->mCache:Lorg/solovyev/android/checkout/Cache;

    invoke-interface {v0, p1}, Lorg/solovyev/android/checkout/Cache;->removeAll(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
