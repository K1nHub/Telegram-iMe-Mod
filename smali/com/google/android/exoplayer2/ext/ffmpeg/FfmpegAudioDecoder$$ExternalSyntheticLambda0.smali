.class public final synthetic Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder;

    check-cast p1, Lcom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder;->$r8$lambda$RV487266h8Z_GEC1klN6iHgKBdE(Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegAudioDecoder;Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V

    return-void
.end method
