.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzqr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzny;


# instance fields
.field private final zzaxy:J

.field private final zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

.field private final zzbcj:Lcom/google/android/gms/internal/firebase_ml/zzqq;

.field private final zzbck:I

.field private final zzbcl:I

.field private final zzbcm:Lcom/google/android/gms/internal/firebase_ml/zzqp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzqq;JLcom/google/android/gms/internal/firebase_ml/zzmc;IILcom/google/android/gms/internal/firebase_ml/zzqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbcj:Lcom/google/android/gms/internal/firebase_ml/zzqq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzaxy:J

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iput p5, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbck:I

    iput p6, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbcl:I

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbcm:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    return-void
.end method


# virtual methods
.method public final zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbcj:Lcom/google/android/gms/internal/firebase_ml/zzqq;

    iget-wide v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzaxy:J

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbab:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    iget v4, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbck:I

    iget v5, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbcl:I

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase_ml/zzqr;->zzbcm:Lcom/google/android/gms/internal/firebase_ml/zzqp;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzqq;->zza(JLcom/google/android/gms/internal/firebase_ml/zzmc;IILcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    return-object v0
.end method
