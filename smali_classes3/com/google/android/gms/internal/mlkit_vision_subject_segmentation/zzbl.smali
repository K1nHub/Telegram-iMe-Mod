.class final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;
.super Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;
.source "com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzi;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzb:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzc:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzb:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzc:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzc:I

    return p1
.end method

.method final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzc:I

    return v0
.end method

.method final zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbl;->zzb:[Ljava/lang/Object;

    return-object v0
.end method
