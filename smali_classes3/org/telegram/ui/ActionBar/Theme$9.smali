.class Lorg/telegram/ui/ActionBar/Theme$9;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 7889
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    .line 7893
    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7897
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->access$3102(F)F

    goto :goto_0

    :cond_2
    const-wide v1, 0x4023dd5660000000L    # 9.932299613952637

    float-to-double v3, p1

    .line 7899
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    const-wide v1, 0x403b0f1aa0000000L    # 27.05900001525879

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->access$3102(F)F

    .line 7901
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3100()F

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightBrighnessThreshold:F

    const/4 v2, 0x1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_4

    .line 7902
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isRecordingOrListeningByProximity()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7903
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2200()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7904
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$2202(Z)Z

    .line 7905
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3200()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7907
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2300()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7908
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->access$2302(Z)Z

    .line 7909
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3300()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3400()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 7913
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2300()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7914
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$2302(Z)Z

    .line 7915
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3300()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7917
    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2200()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7918
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->access$2202(Z)Z

    .line 7919
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3200()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3400()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_1
    return-void
.end method
