.class final synthetic Lcom/google/android/gms/internal/firebase_ml/zzpw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzoq;


# instance fields
.field private final zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

.field private final zzayc:Lcom/google/android/gms/internal/firebase_ml/zzpx;

.field private final zzayd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzpr;Lcom/google/android/gms/internal/firebase_ml/zzpx;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpw;->zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpw;->zzayc:Lcom/google/android/gms/internal/firebase_ml/zzpx;

    iput-wide p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzpw;->zzayd:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/nio/MappedByteBuffer;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzpw;->zzaxx:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzpw;->zzayc:Lcom/google/android/gms/internal/firebase_ml/zzpx;

    iget-wide v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzpw;->zzayd:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzpx;JLjava/nio/MappedByteBuffer;)V

    return-void
.end method
