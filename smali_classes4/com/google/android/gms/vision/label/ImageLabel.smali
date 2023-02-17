.class public Lcom/google/android/gms/vision/label/ImageLabel;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final zzdn:Ljava/lang/String;

.field private final zzdo:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/vision/label/ImageLabel;->zzdn:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/vision/label/ImageLabel;->label:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/google/android/gms/vision/label/ImageLabel;->zzdo:F

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 8
    iget v0, p0, Lcom/google/android/gms/vision/label/ImageLabel;->zzdo:F

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/vision/label/ImageLabel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/vision/label/ImageLabel;->zzdn:Ljava/lang/String;

    return-object v0
.end method
