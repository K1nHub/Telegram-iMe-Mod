.class public Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;
.super Ljava/lang/Object;


# static fields
.field private static final zzazk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzazl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzazm:Lcom/google/android/gms/vision/barcode/Barcode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzazk:Ljava/util/Map;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzazl:Ljava/util/Map;

    const/4 v2, -0x1

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzanv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 36
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzanw:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 39
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzanx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 42
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzany:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 45
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzanz:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 48
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x10

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaoa:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 51
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x20

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaob:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 54
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x40

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaoc:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 57
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x80

    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaod:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x100

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaoe:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 61
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x200

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaof:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 64
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x400

    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaog:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 67
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x800

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaoh:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 70
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x1000

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzaoi:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    .line 73
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaok:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 76
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaol:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 79
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaom:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 82
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaon:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 85
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaoo:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 88
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaop:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 91
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaoq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 94
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaor:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 97
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaos:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 100
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaot:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 103
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaou:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 106
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaov:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 109
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaow:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    .line 112
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    iput-object p1, p0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzazm:Lcom/google/android/gms/vision/barcode/Barcode;

    return-void
.end method


# virtual methods
.method public getFormat()I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzazm:Lcom/google/android/gms/vision/barcode/Barcode;

    iget v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->format:I

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method public getValueType()I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzazm:Lcom/google/android/gms/vision/barcode/Barcode;

    iget v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    return v0
.end method

.method public final zznf()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;
    .locals 2

    .line 22
    sget-object v0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzazk:Ljava/util/Map;

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->getFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;->zzanv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    :cond_0
    return-object v0
.end method

.method public final zzng()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;
    .locals 2

    .line 27
    sget-object v0, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzazl:Ljava/util/Map;

    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->getValueType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;->zzaok:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    :cond_0
    return-object v0
.end method
