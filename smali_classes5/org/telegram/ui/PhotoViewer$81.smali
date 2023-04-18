.class Lorg/telegram/ui/PhotoViewer$81;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->processOpenVideo(Ljava/lang/String;ZFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$compressQality:I

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$UHWkVpz4GiKdxDDBIYLi5RbvtTo(Lorg/telegram/ui/PhotoViewer$81;Ljava/lang/Runnable;[III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$81;->lambda$run$0(Ljava/lang/Runnable;[III)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;I)V
    .locals 0

    .line 17662
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$81;->val$videoPath:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/PhotoViewer$81;->val$compressQality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Runnable;[III)V
    .locals 6

    .line 17677
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30300(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto/16 :goto_6

    .line 17680
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$30302(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/16 p1, 0xa

    .line 17681
    aget p1, p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 17682
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget v3, p2, v0

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    aget p1, p2, p1

    if-eqz p1, :cond_3

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    invoke-static {v2, p1}, Lorg/telegram/ui/PhotoViewer;->access$30402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 17684
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$30502(Lorg/telegram/ui/PhotoViewer;J)J

    .line 17685
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x4

    aget v2, p2, v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$18802(Lorg/telegram/ui/PhotoViewer;F)F

    const/4 p1, -0x1

    if-ne p3, p1, :cond_4

    .line 17687
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x3

    aget v2, p2, v2

    invoke-static {p3, v2}, Lorg/telegram/ui/PhotoViewer;->access$30702(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v2

    invoke-static {p3, v2}, Lorg/telegram/ui/PhotoViewer;->access$30602(Lorg/telegram/ui/PhotoViewer;I)I

    goto :goto_2

    .line 17689
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2, p3}, Lorg/telegram/ui/PhotoViewer;->access$30702(Lorg/telegram/ui/PhotoViewer;I)I

    move-result p3

    invoke-static {v2, p3}, Lorg/telegram/ui/PhotoViewer;->access$30602(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17691
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x7

    aget v2, p2, v2

    invoke-static {p3, v2}, Lorg/telegram/ui/PhotoViewer;->access$30802(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17692
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$30700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    const/16 v3, 0x8

    div-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$18800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    float-to-long v4, v2

    invoke-static {p3, v4, v5}, Lorg/telegram/ui/PhotoViewer;->access$30902(Lorg/telegram/ui/PhotoViewer;J)J

    .line 17694
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$30400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 17695
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget v2, p2, v3

    invoke-static {p3, v2}, Lorg/telegram/ui/PhotoViewer;->access$31002(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17696
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget v2, p2, v1

    invoke-static {p3, v2}, Lorg/telegram/ui/PhotoViewer;->access$31202(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v2

    invoke-static {p3, v2}, Lorg/telegram/ui/PhotoViewer;->access$31102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17697
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x2

    aget p2, p2, v2

    invoke-static {p3, p2}, Lorg/telegram/ui/PhotoViewer;->access$31402(Lorg/telegram/ui/PhotoViewer;I)I

    move-result p2

    invoke-static {p3, p2}, Lorg/telegram/ui/PhotoViewer;->access$31302(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17699
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$31200(Lorg/telegram/ui/PhotoViewer;)I

    move-result p3

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$31400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-static {p2, p3, v2}, Lorg/telegram/ui/PhotoViewer;->access$31500(Lorg/telegram/ui/PhotoViewer;II)V

    if-ne p4, p1, :cond_5

    .line 17701
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$31600(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$19902(Lorg/telegram/ui/PhotoViewer;I)I

    goto :goto_3

    .line 17703
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, p4}, Lorg/telegram/ui/PhotoViewer;->access$19902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17705
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$31700(Lorg/telegram/ui/PhotoViewer;)V

    .line 17707
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$29500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    sub-int/2addr p2, v1

    if-le p1, p2, :cond_6

    .line 17708
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$29500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$19902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17711
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$29500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    if-le p2, v1, :cond_7

    move p2, v1

    goto :goto_4

    :cond_7
    move p2, v0

    :goto_4
    invoke-static {p1, p2, v1}, Lorg/telegram/ui/PhotoViewer;->access$31800(Lorg/telegram/ui/PhotoViewer;ZZ)V

    .line 17712
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_8

    .line 17713
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "compressionsCount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$29500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " w = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$31200(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$31400(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " r = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$31000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 17715
    :cond_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x12

    if-ge p1, p2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 17716
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$30402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 17717
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$31800(Lorg/telegram/ui/PhotoViewer;ZZ)V

    .line 17719
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$30100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 17721
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$31800(Lorg/telegram/ui/PhotoViewer;ZZ)V

    .line 17722
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$29502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 17725
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18700(Lorg/telegram/ui/PhotoViewer;)V

    .line 17726
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    :cond_b
    :goto_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 17665
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30300(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 17668
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->val$videoPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v5

    const/16 v0, 0xb

    new-array v4, v0, [I

    .line 17671
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->val$videoPath:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    .line 17672
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30300(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    return-void

    .line 17676
    :cond_1
    iget v6, p0, Lorg/telegram/ui/PhotoViewer$81;->val$compressQality:I

    new-instance v0, Lorg/telegram/ui/PhotoViewer$81$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/PhotoViewer$81$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$81;Ljava/lang/Runnable;[III)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
