.class final Lcom/google/android/gms/internal/firebase_ml/zzlj;
.super Lcom/google/android/gms/internal/firebase_ml/zzlh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient length:I

.field private final transient offset:I

.field private final synthetic zzact:Lcom/google/android/gms/internal/firebase_ml/zzlh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzlh;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->zzact:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzlh;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->offset:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->length:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->length:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->zzc(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->zzact:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->length:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlh;->zze(II)Lcom/google/android/gms/internal/firebase_ml/zzlh;

    move-result-object p1

    return-object p1
.end method

.method public final zze(II)Lcom/google/android/gms/internal/firebase_ml/zzlh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/firebase_ml/zzlh<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzkv;->zza(III)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->zzact:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlh;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlh;

    return-object p1
.end method

.method final zzic()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->zzact:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzle;->zzic()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzid()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->zzact:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzle;->zzid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzie()I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->zzact:Lcom/google/android/gms/internal/firebase_ml/zzlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzle;->zzid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzlj;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzig()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
