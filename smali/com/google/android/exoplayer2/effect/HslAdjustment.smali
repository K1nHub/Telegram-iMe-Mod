.class public Lcom/google/android/exoplayer2/effect/HslAdjustment;
.super Ljava/lang/Object;
.source "HslAdjustment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/effect/HslAdjustment$Builder;
    }
.end annotation


# instance fields
.field public final hueAdjustmentDegrees:F

.field public final lightnessAdjustment:F

.field public final saturationAdjustment:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment;->hueAdjustmentDegrees:F

    .line 109
    iput p2, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment;->saturationAdjustment:F

    .line 110
    iput p3, p0, Lcom/google/android/exoplayer2/effect/HslAdjustment;->lightnessAdjustment:F

    return-void
.end method

.method synthetic constructor <init>(FFFLcom/google/android/exoplayer2/effect/HslAdjustment$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/HslAdjustment;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/HslAdjustment;->toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/android/exoplayer2/effect/HslProcessor;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/exoplayer2/effect/HslProcessor;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/effect/HslAdjustment;Z)V

    return-object v0
.end method
