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

    .line 7063
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

    .line 7066
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    .line 7070
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

    .line 7074
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->access$2802(F)F

    goto :goto_0

    :cond_2
    const-wide v1, 0x4023dd5660000000L    # 9.932299613952637

    float-to-double v3, p1

    .line 7076
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    const-wide v1, 0x403b0f1aa0000000L    # 27.05900001525879

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->access$2802(F)F

    .line 7078
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2800()F

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightBrighnessThreshold:F

    cmpg-float p1, p1, v1

    const/4 v1, 0x1

    if-gtz p1, :cond_4

    .line 7079
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isRecordingOrListeningByProximity()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7080
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1900()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7081
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$1902(Z)Z

    .line 7082
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2900()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7084
    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2000()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7085
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$2002(Z)Z

    .line 7086
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3000()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3100()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 7090
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2000()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7091
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$2002(Z)Z

    .line 7092
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3000()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7094
    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1900()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7095
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$1902(Z)Z

    .line 7096
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$2900()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$3100()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_1
    return-void
.end method
