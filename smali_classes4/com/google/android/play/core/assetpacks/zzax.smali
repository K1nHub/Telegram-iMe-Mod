.class public final Lcom/google/android/play/core/assetpacks/zzax;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Lcom/google/android/play/core/assetpacks/zzaw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzco;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzeb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzco;",
            ">;",
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzeb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzax;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzax;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzax;->zzc:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzax;->zza:Lcom/google/android/play/core/internal/zzcs;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzu;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzu;->zzb()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzax;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzax;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzaw;

    check-cast v1, Lcom/google/android/play/core/assetpacks/zzco;

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzeb;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzaw;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)V

    return-object v3
.end method
