.class Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 3

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$800(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$900(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$800(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$1100(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)Lorg/telegram/ui/Components/SeekBarView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStepsCount()I
    .locals 2

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$900(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$800(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onSeekBarDrag(ZF)V
    .locals 3

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    iget-object v0, p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$800(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$900(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;->this$1:Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->access$800(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->access$1000(Lorg/telegram/ui/ThemeActivity;IZ)Z

    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
