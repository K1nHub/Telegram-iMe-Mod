.class public Lcom/google/firebase/appindexing/Action$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-appindexing@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/os/Bundle;

.field private final zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/firebase/appindexing/internal/zzb;

.field private zzg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zza:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/appindexing/Action;
    .locals 10

    iget-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzc:Ljava/lang/String;

    const-string v1, "setObject is required before calling build()."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/firebase/appindexing/internal/zzc;

    iget-object v3, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/appindexing/Action$Builder;->zze:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzf:Lcom/google/firebase/appindexing/internal/zzb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/appindexing/Action$Metadata$Builder;

    .line 4
    invoke-direct {v1}, Lcom/google/firebase/appindexing/Action$Metadata$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/firebase/appindexing/Action$Metadata$Builder;->zza()Lcom/google/firebase/appindexing/internal/zzb;

    move-result-object v1

    :cond_0
    move-object v7, v1

    iget-object v8, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzg:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/firebase/appindexing/Action$Builder;->zza:Landroid/os/Bundle;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/appindexing/internal/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/appindexing/internal/zzb;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public varargs put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zza:Landroid/os/Bundle;

    .line 10
    invoke-static {v0, p1, p2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public setActionStatus(Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzc:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "name"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/Action$Builder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzd:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "url"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/Action$Builder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected final zza()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzc:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 1
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected final zzb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzd:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 1
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected final zzc()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/appindexing/Action$Builder;->zzg:Ljava/lang/String;

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
