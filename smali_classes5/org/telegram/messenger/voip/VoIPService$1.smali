.class Lorg/telegram/messenger/voip/VoIPService$1;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method public static synthetic $r8$lambda$bDZQDQG-5xuWxJTZ0pq3YWjVxiA(Lorg/telegram/messenger/voip/VoIPService$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService$1;->lambda$run$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cIfdbaM0doJdUbhyFIazG3bkCvQ(Landroid/media/AudioManager;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$1;->lambda$run$1(Landroid/media/AudioManager;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$700(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method private static synthetic lambda$run$1(Landroid/media/AudioManager;)V
    .locals 2

    .line 333
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->access$600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 334
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->access$500()Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 335
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 337
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$502(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 340
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 342
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "Error setting audio more to normal"

    .line 343
    invoke-static {v0, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 338
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 318
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 319
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 320
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const-class v3, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 321
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->access$000()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->access$100()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 322
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$200(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 324
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 325
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$302(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 326
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$1;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$402(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 328
    :cond_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 331
    :cond_1
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/voip/VoIPService$1;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 332
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/voip/VoIPService$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager;)V

    invoke-static {v2}, Lorg/telegram/messenger/voip/VoIPService;->access$502(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
