.class public Lorg/telegram/messenger/VideoEncodingService;
.super Landroid/app/Service;
.source "VideoEncodingService.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private currentAccount:I

.field private currentProgress:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    .line 50
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 51
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 52
    iget v0, p0, Lorg/telegram/messenger/VideoEncodingService;->currentAccount:I

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 53
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    const/4 p2, 0x2

    .line 54
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Long;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float p1, v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float p2, v3

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x3

    .line 56
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 57
    iput p1, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    .line 58
    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 p3, 0x64

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2, p3, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    const/4 p2, 0x4

    iget-object p3, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 62
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 65
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    if-ne p1, p2, :cond_3

    .line 66
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 67
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 68
    iget p3, p0, Lorg/telegram/messenger/VideoEncodingService;->currentAccount:I

    if-ne p2, p3, :cond_3

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 36
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :catchall_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 41
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 42
    iget v0, p0, Lorg/telegram/messenger/VideoEncodingService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 43
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "destroy video service"

    .line 44
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string p2, "path"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    .line 76
    iget p2, p0, Lorg/telegram/messenger/VideoEncodingService;->currentAccount:I

    .line 77
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v0, "currentAccount"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lorg/telegram/messenger/VideoEncodingService;->currentAccount:I

    .line 78
    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result p3

    const/4 v0, 0x2

    if-nez p3, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v0

    .line 82
    :cond_0
    iget p3, p0, Lorg/telegram/messenger/VideoEncodingService;->currentAccount:I

    if-eq p2, p3, :cond_1

    .line 83
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 84
    iget p2, p0, Lorg/telegram/messenger/VideoEncodingService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    const-string p2, "gif"

    const/4 p3, 0x0

    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 87
    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->path:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 88
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v0

    .line 91
    :cond_2
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_3

    const-string p2, "start video service"

    .line 92
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez p2, :cond_5

    .line 95
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 96
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x1080088

    .line 97
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 98
    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 99
    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 100
    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_4

    .line 102
    iget-object p1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->SendingGif:I

    const-string v1, "SendingGif"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    iget-object p1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 105
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->SendingVideo:I

    const-string v1, "SendingVideo"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 106
    iget-object p1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 109
    :cond_5
    :goto_0
    iput p3, p0, Lorg/telegram/messenger/VideoEncodingService;->currentProgress:I

    .line 110
    iget-object p1, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 p2, 0x64

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x4

    .line 112
    :try_start_0
    iget-object p2, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/VideoEncodingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return v0
.end method
