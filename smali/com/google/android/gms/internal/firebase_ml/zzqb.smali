.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzqb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzny;


# instance fields
.field private final zzaxy:J

.field private final zzbaa:Lcom/google/android/gms/internal/firebase_ml/zzqa;

.field private final zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

.field private final zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

.field private final zzbad:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzqa;JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbaa:Lcom/google/android/gms/internal/firebase_ml/zzqa;

    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzaxy:J

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    iput-object p6, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbad:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbaa:Lcom/google/android/gms/internal/firebase_ml/zzqa;

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzaxy:J

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbac:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzqb;->zzbad:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zza(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    return-object v0
.end method
