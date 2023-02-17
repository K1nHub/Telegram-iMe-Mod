.class public final synthetic Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-void
.end method


# virtual methods
.method public final createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;->$r8$lambda$YLaoYC4vhMo08CKr85bIw7Awnu4(Lcom/google/android/exoplayer2/trackselection/BufferSizeAdaptationBuilder$1;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p1

    return-object p1
.end method
