.class final Lcom/google/android/gms/internal/wearable/zzei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field final zza:Ljava/util/Iterator;

.field final synthetic zzb:Lcom/google/android/gms/internal/wearable/zzej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wearable/zzej;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzei;->zzb:Lcom/google/android/gms/internal/wearable/zzej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/wearable/zzej;->zza(Lcom/google/android/gms/internal/wearable/zzej;)Lcom/google/android/gms/internal/wearable/zzck;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzei;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzei;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzei;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
