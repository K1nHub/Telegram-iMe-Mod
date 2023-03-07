.class public interface abstract Lorg/solovyev/android/checkout/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/Cache$Entry;,
        Lorg/solovyev/android/checkout/Cache$Key;
    }
.end annotation


# virtual methods
.method public abstract get(Lorg/solovyev/android/checkout/Cache$Key;)Lorg/solovyev/android/checkout/Cache$Entry;
.end method

.method public abstract put(Lorg/solovyev/android/checkout/Cache$Key;Lorg/solovyev/android/checkout/Cache$Entry;)V
.end method

.method public abstract remove(Lorg/solovyev/android/checkout/Cache$Key;)V
.end method

.method public abstract removeAll(I)V
.end method
