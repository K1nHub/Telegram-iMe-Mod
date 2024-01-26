.class public Lcom/google/android/gms/internal/wearable/zzbs;
.super Lcom/google/android/gms/internal/wearable/zzaf;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/wearable/zzbv<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/wearable/zzbs<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/wearable/zzaf<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/wearable/zzbv;

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/wearable/zzbv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/wearable/zzbv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzaf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzc:Lcom/google/android/gms/internal/wearable/zzbv;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/wearable/zzbv;

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/wearable/zzbv;Lcom/google/android/gms/internal/wearable/zzbv;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/wearable/zzdn;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzr()Lcom/google/android/gms/internal/wearable/zzbs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzac()Lcom/google/android/gms/internal/wearable/zzdc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzc:Lcom/google/android/gms/internal/wearable/zzbv;

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/internal/wearable/zzaf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzr()Lcom/google/android/gms/internal/wearable/zzbs;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic zzp(Lcom/google/android/gms/internal/wearable/zzag;)Lcom/google/android/gms/internal/wearable/zzaf;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wearable/zzbs;->zzs(Lcom/google/android/gms/internal/wearable/zzbv;)Lcom/google/android/gms/internal/wearable/zzbs;

    return-object p0
.end method

.method public final zzr()Lcom/google/android/gms/internal/wearable/zzbs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzc:Lcom/google/android/gms/internal/wearable/zzbv;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzbs;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzu()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzbs;->zzs(Lcom/google/android/gms/internal/wearable/zzbv;)Lcom/google/android/gms/internal/wearable/zzbs;

    return-object v0
.end method

.method public final zzs(Lcom/google/android/gms/internal/wearable/zzbv;)Lcom/google/android/gms/internal/wearable/zzbs;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzbs;->zza(Lcom/google/android/gms/internal/wearable/zzbv;Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-object p0
.end method

.method public final zzt()Lcom/google/android/gms/internal/wearable/zzbv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzu()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/wearable/zzbv;->zzab()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/wearable/zzed;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/wearable/zzed;-><init>(Lcom/google/android/gms/internal/wearable/zzdc;)V

    .line 4
    throw v1
.end method

.method public zzu()Lcom/google/android/gms/internal/wearable/zzbv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzdk;->zza()Lcom/google/android/gms/internal/wearable/zzdk;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wearable/zzdk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/wearable/zzdn;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/wearable/zzdn;->zzf(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    return-object v0
.end method

.method public bridge synthetic zzv()Lcom/google/android/gms/internal/wearable/zzdc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzu()Lcom/google/android/gms/internal/wearable/zzbv;

    move-result-object v0

    return-object v0
.end method

.method protected zzx()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/wearable/zzbv;->zzG(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wearable/zzbv;

    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wearable/zzbs;->zza(Lcom/google/android/gms/internal/wearable/zzbv;Lcom/google/android/gms/internal/wearable/zzbv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    return-void
.end method
