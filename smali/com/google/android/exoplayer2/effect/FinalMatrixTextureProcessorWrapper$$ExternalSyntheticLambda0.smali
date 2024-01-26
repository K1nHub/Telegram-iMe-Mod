.class public final synthetic Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/effect/FrameProcessingTask;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/effect/TextureInfo;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/effect/TextureInfo;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/effect/TextureInfo;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;->$r8$lambda$QfmZiFMb8APvjyWJS6otgW_Fg2U(Lcom/google/android/exoplayer2/effect/MatrixTextureProcessor;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    return-void
.end method
