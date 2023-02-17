.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzpv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzny;


# instance fields
.field private final zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

.field private final zzaxy:J

.field private final zzaxz:Lcom/google/android/gms/internal/firebase_ml/zzpn;

.field private final zzaya:Lcom/google/android/gms/internal/firebase_ml/zzmc;

.field private final zzayb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzpr;JLcom/google/android/gms/internal/firebase_ml/zzpn;Lcom/google/android/gms/internal/firebase_ml/zzmc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaxy:J

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaxz:Lcom/google/android/gms/internal/firebase_ml/zzpn;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaya:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzayb:Z

    return-void
.end method


# virtual methods
.method public final zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaxy:J

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaxz:Lcom/google/android/gms/internal/firebase_ml/zzpn;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzaya:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzpv;->zzayb:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(JLcom/google/android/gms/internal/firebase_ml/zzpn;Lcom/google/android/gms/internal/firebase_ml/zzmc;Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    return-object v0
.end method
