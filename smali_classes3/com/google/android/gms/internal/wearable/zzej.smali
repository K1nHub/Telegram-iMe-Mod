.class public final Lcom/google/android/gms/internal/wearable/zzej;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/wearable/zzck;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/wearable/zzck;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wearable/zzck;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzej;->zza:Lcom/google/android/gms/internal/wearable/zzck;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/wearable/zzej;)Lcom/google/android/gms/internal/wearable/zzck;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/wearable/zzej;->zza:Lcom/google/android/gms/internal/wearable/zzck;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzej;->zza:Lcom/google/android/gms/internal/wearable/zzck;

    check-cast v0, Lcom/google/android/gms/internal/wearable/zzcj;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzcj;->zzg(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/wearable/zzei;-><init>(Lcom/google/android/gms/internal/wearable/zzej;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzeh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/wearable/zzeh;-><init>(Lcom/google/android/gms/internal/wearable/zzej;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzej;->zza:Lcom/google/android/gms/internal/wearable/zzck;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/wearable/zzck;
    .locals 0

    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzej;->zza:Lcom/google/android/gms/internal/wearable/zzck;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/wearable/zzck;->zzf(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzej;->zza:Lcom/google/android/gms/internal/wearable/zzck;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzck;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/wearable/zzaw;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
