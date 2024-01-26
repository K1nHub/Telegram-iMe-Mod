.class public final Lcom/google/android/exoplayer2/effect/TextureInfo;
.super Ljava/lang/Object;
.source "TextureInfo.java"


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/effect/TextureInfo;


# instance fields
.field public final fboId:I

.field public final height:I

.field public final texId:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/exoplayer2/effect/TextureInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/exoplayer2/effect/TextureInfo;-><init>(IIII)V

    sput-object v0, Lcom/google/android/exoplayer2/effect/TextureInfo;->UNSET:Lcom/google/android/exoplayer2/effect/TextureInfo;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/google/android/exoplayer2/effect/TextureInfo;->texId:I

    .line 46
    iput p2, p0, Lcom/google/android/exoplayer2/effect/TextureInfo;->fboId:I

    .line 47
    iput p3, p0, Lcom/google/android/exoplayer2/effect/TextureInfo;->width:I

    .line 48
    iput p4, p0, Lcom/google/android/exoplayer2/effect/TextureInfo;->height:I

    return-void
.end method
