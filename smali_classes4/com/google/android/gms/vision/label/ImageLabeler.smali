.class public Lcom/google/android/gms/vision/label/ImageLabeler;
.super Lcom/google/android/gms/vision/Detector;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/label/ImageLabeler$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Detector<",
        "Lcom/google/android/gms/vision/label/ImageLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzdq:Lcom/google/android/gms/vision/label/internal/client/LabelOptions;


# instance fields
.field private final zzdp:Lcom/google/android/gms/vision/label/internal/client/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/google/android/gms/vision/label/internal/client/LabelOptions;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/label/internal/client/LabelOptions;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/vision/label/ImageLabeler;->zzdq:Lcom/google/android/gms/vision/label/internal/client/LabelOptions;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/vision/label/internal/client/zzi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/vision/label/ImageLabeler;->zzdp:Lcom/google/android/gms/vision/label/internal/client/zzi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/label/internal/client/zzi;Lcom/google/android/gms/vision/label/zza;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/label/ImageLabeler;-><init>(Lcom/google/android/gms/vision/label/internal/client/zzi;)V

    return-void
.end method


# virtual methods
.method public detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/label/ImageLabel;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/vision/label/ImageLabeler;->zzdq:Lcom/google/android/gms/vision/label/internal/client/LabelOptions;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/vision/label/ImageLabeler;->detect(Lcom/google/android/gms/vision/Frame;Lcom/google/android/gms/vision/label/internal/client/LabelOptions;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public detect(Lcom/google/android/gms/vision/Frame;Lcom/google/android/gms/vision/label/internal/client/LabelOptions;)Landroid/util/SparseArray;
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            "Lcom/google/android/gms/vision/label/internal/client/LabelOptions;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/label/ImageLabel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    invoke-static {}, Lcom/google/android/gms/vision/label/ImageLabeler$$ExternalSyntheticThrowNSME0;->m()Ljava/lang/NoSuchMethodError;

    move-result-object p1

    throw p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No frame supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOperational()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/vision/label/ImageLabeler;->zzdp:Lcom/google/android/gms/vision/label/internal/client/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzm;->isOperational()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 18
    invoke-super {p0}, Lcom/google/android/gms/vision/Detector;->release()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/vision/label/ImageLabeler;->zzdp:Lcom/google/android/gms/vision/label/internal/client/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzm;->zzp()V

    return-void
.end method
