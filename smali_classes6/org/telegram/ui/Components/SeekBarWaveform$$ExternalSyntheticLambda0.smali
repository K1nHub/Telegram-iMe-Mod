.class public final synthetic Lorg/telegram/ui/Components/SeekBarWaveform$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SeekBarWaveform;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SeekBarWaveform;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/SeekBarWaveform;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarWaveform;->invalidate()V

    return-void
.end method
