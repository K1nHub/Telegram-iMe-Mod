.class public final Lcom/google/android/exoplayer2/effect/RgbAdjustment;
.super Ljava/lang/Object;
.source "RgbAdjustment.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/RgbMatrix;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/effect/RgbAdjustment$Builder;
    }
.end annotation


# instance fields
.field private final rgbMatrix:[F


# direct methods
.method private constructor <init>([F)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/RgbAdjustment;->rgbMatrix:[F

    return-void
.end method

.method synthetic constructor <init>([FLcom/google/android/exoplayer2/effect/RgbAdjustment$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/RgbAdjustment;-><init>([F)V

    return-void
.end method


# virtual methods
.method public getMatrix(JZ)[F
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/RgbAdjustment;->rgbMatrix:[F

    return-object p1
.end method

.method public bridge synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/RgbMatrix$-CC;->$default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/RgbMatrix;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toGlTextureProcessor(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/effect/RgbMatrix$-CC;->$default$toGlTextureProcessor(Lcom/google/android/exoplayer2/effect/RgbMatrix;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/effect/SingleFrameGlTextureProcessor;

    move-result-object p1

    return-object p1
.end method
