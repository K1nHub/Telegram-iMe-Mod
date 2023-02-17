.class public final Lcom/google/android/gms/internal/mlkit_common/zzdq;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzds$zza;


# static fields
.field public static final zza:Lcom/google/firebase/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Component<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzdo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzds$zza;

    .line 11
    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzdo;

    .line 12
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdp;->zza:Lcom/google/firebase/components/ComponentFactory;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zza:Lcom/google/firebase/components/Component;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzdo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzdo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzdo;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;->zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;->zza(Z)Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzbh$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzad$zza;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzad;)V

    return-void
.end method
