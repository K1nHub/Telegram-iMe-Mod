.class Lorg/telegram/ui/PhotoViewer$50;
.super Lorg/telegram/ui/Components/FloatSeekBarAccessibilityDelegate;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createVideoControlsInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$seekBarDelegate:Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;)V
    .locals 0

    .line 7934
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$50;->val$seekBarDelegate:Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;

    invoke-direct {p0}, Lorg/telegram/ui/Components/FloatSeekBarAccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 7934
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$50;->getContentDescription(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentDescription(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    .line 7949
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23000(Lorg/telegram/ui/PhotoViewer;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Minutes"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$23000(Lorg/telegram/ui/PhotoViewer;)[I

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Seconds"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$23100(Lorg/telegram/ui/PhotoViewer;)[I

    move-result-object v5

    aget v5, v5, v1

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$23100(Lorg/telegram/ui/PhotoViewer;)[I

    move-result-object v0

    aget v0, v0, v4

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7951
    sget v2, Lorg/telegram/messenger/R$string;->AccDescrPlayerDuration:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v0, v3, v4

    const-string p1, "AccDescrPlayerDuration"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProgress()F
    .locals 1

    .line 7937
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->getProgress()F

    move-result v0

    return v0
.end method

.method public setProgress(F)V
    .locals 1

    .line 7942
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50;->val$seekBarDelegate:Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;->onSeekBarDrag(F)V

    .line 7943
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 7944
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1200(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
