.class public final Lcom/google/android/play/core/assetpacks/zzbv;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Lcom/google/android/play/core/assetpacks/zzbu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbv;->zza:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbv;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzbu;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/zzbu;-><init>(Lcom/google/android/play/core/internal/zzco;)V

    return-object v1
.end method
