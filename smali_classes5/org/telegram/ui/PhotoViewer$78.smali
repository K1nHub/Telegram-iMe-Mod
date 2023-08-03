.class Lorg/telegram/ui/PhotoViewer$78;
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

.field final synthetic val$compressQuality:I

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$TfTzgY55sCrX0vNOGg6fcIS4DHk(Lorg/telegram/ui/PhotoViewer$78;Ljava/lang/Runnable;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$78;->lambda$run$0(Ljava/lang/Runnable;[I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;I)V
    .locals 0

    .line 18226
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$78;->val$videoPath:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/PhotoViewer$78;->val$compressQuality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Runnable;[I)V
    .locals 4

    .line 18254
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 18257
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$30502(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 18258
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x5

    aget v0, p2, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$31602(Lorg/telegram/ui/PhotoViewer;J)J

    .line 18259
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x4

    aget v0, p2, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$18802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 18260
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x7

    aget v0, p2, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$31702(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18261
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$30700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/16 v1, 0x8

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$18800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$31802(Lorg/telegram/ui/PhotoViewer;J)J

    .line 18263
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$26100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 18264
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget p2, p2, v1

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$31902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18265
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$32000(Lorg/telegram/ui/PhotoViewer;)V

    .line 18267
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$29700(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    sub-int/2addr p2, v2

    if-le p1, p2, :cond_1

    .line 18268
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$29700(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p1, p2}, Lorg/telegram/ui/PhotoViewer;->access$19902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18271
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$29700(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    if-le p2, v2, :cond_2

    move v0, v2

    :cond_2
    invoke-static {p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$32100(Lorg/telegram/ui/PhotoViewer;ZZ)V

    .line 18272
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_3

    .line 18273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "compressionsCount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$29700(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " w = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$30900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$31100(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " r = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$31900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 18275
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$30300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 18277
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$32100(Lorg/telegram/ui/PhotoViewer;ZZ)V

    .line 18278
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$29702(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18281
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18700(Lorg/telegram/ui/PhotoViewer;)V

    .line 18282
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 18229
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 18232
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->val$videoPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 18234
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$78;->val$videoPath:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    const/16 v2, 0xa

    .line 18236
    aget v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 18237
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget v6, v1, v4

    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    aget v2, v1, v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    invoke-static {v5, v4}, Lorg/telegram/ui/PhotoViewer;->access$26102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 18238
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    const/4 v0, 0x3

    aget v0, v1, v0

    :cond_4
    invoke-static {v2, v0}, Lorg/telegram/ui/PhotoViewer;->access$30702(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/ui/PhotoViewer;->access$30602(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18240
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$26100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18241
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    aget v2, v1, v3

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$30902(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$30802(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18242
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x2

    aget v2, v1, v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$31102(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$31002(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18243
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$31100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$31200(Lorg/telegram/ui/PhotoViewer;II)V

    .line 18244
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$78;->val$compressQuality:I

    if-ne v2, v4, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$31300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    :cond_5
    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$19902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 18245
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$31400(Lorg/telegram/ui/PhotoViewer;)V

    .line 18246
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$78;->val$videoPath:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->isH264Video(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$31502(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 18249
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$30500(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_7

    return-void

    .line 18253
    :cond_7
    new-instance v0, Lorg/telegram/ui/PhotoViewer$78$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p0, v1}, Lorg/telegram/ui/PhotoViewer$78$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$78;Ljava/lang/Runnable;[I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
