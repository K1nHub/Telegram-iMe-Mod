.class public abstract Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;
.super Lcom/google/android/gms/internal/firebase_ml/zzuu;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzwg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_ml/zzuu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu$zzd<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase_ml/zzuu<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/firebase_ml/zzwg;"
    }
.end annotation


# instance fields
.field protected zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_ml/zzum<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzum;->zzqt()Lcom/google/android/gms/internal/firebase_ml/zzum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    return-void
.end method


# virtual methods
.method final zzrr()Lcom/google/android/gms/internal/firebase_ml/zzum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_ml/zzum<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzum;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzum;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzc;->zzbsv:Lcom/google/android/gms/internal/firebase_ml/zzum;

    return-object v0
.end method
