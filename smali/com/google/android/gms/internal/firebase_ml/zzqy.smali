.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzqy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzny;


# instance fields
.field private final zzaxy:J

.field private final zzayb:Z

.field private final zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

.field private final zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

.field private final zzbdc:Lcom/google/android/gms/internal/firebase_ml/zzqw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzqw;JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzbdc:Lcom/google/android/gms/internal/firebase_ml/zzqw;

    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzaxy:J

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzayb:Z

    return-void
.end method


# virtual methods
.method public final zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzbdc:Lcom/google/android/gms/internal/firebase_ml/zzqw;

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzaxy:J

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzqy;->zzayb:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zza(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    return-object v0
.end method
