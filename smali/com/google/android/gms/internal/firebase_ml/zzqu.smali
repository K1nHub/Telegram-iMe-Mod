.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzqu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzny;


# instance fields
.field private final zzaxy:J

.field private final zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

.field private final zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

.field private final zzbcw:Lcom/google/android/gms/internal/firebase_ml/zzqv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzqv;JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzbcw:Lcom/google/android/gms/internal/firebase_ml/zzqv;

    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzaxy:J

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    return-void
.end method


# virtual methods
.method public final zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzbcw:Lcom/google/android/gms/internal/firebase_ml/zzqv;

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzaxy:J

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqu;->zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zza(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    return-object v0
.end method
