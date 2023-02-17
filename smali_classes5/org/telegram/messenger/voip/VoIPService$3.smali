.class Lorg/telegram/messenger/voip/VoIPService$3;
.super Landroid/content/BroadcastReceiver;
.source "VoIPService.java"


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
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "audio"

    const-string/jumbo v1, "state"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    .line 382
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->access$802(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 383
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$800(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$800(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 387
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 388
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 389
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1, v4}, Lorg/telegram/messenger/voip/VoIPService;->access$1002(Lorg/telegram/messenger/voip/VoIPService;I)I

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 391
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1002(Lorg/telegram/messenger/voip/VoIPService;I)I

    goto :goto_1

    .line 393
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1, v3}, Lorg/telegram/messenger/voip/VoIPService;->access$1002(Lorg/telegram/messenger/voip/VoIPService;I)I

    .line 395
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_2

    .line 397
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1000(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 398
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1000(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    .line 399
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->access$1002(Lorg/telegram/messenger/voip/VoIPService;I)I

    .line 402
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1, v4}, Lorg/telegram/messenger/voip/VoIPService;->access$1102(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 403
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    goto/16 :goto_9

    .line 404
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 405
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1200(Lorg/telegram/messenger/voip/VoIPService;)V

    goto/16 :goto_9

    .line 406
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 407
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string v0, "android.bluetooth.profile.extra.STATE"

    if-eqz p1, :cond_8

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bt headset state = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 410
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    invoke-static {p1, v3}, Lorg/telegram/messenger/voip/VoIPService;->access$1300(Lorg/telegram/messenger/voip/VoIPService;Z)V

    goto/16 :goto_9

    .line 411
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v5, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    .line 412
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 413
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_b

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth SCO state updated: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_b
    if-nez p1, :cond_d

    .line 416
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p2}, Lorg/telegram/messenger/voip/VoIPService;->access$200(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 417
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p2}, Lorg/telegram/messenger/voip/VoIPService;->access$1400(Lorg/telegram/messenger/voip/VoIPService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p2}, Lorg/telegram/messenger/voip/VoIPService;->access$1400(Lorg/telegram/messenger/voip/VoIPService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p2

    if-eq p2, v2, :cond_d

    .line 418
    :cond_c
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1, v4}, Lorg/telegram/messenger/voip/VoIPService;->access$1300(Lorg/telegram/messenger/voip/VoIPService;Z)V

    return-void

    .line 422
    :cond_d
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    if-ne p1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    invoke-static {p2, v1}, Lorg/telegram/messenger/voip/VoIPService;->access$402(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 423
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    if-ne p1, v3, :cond_f

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    :goto_5
    invoke-static {p2, p1}, Lorg/telegram/messenger/voip/VoIPService;->access$302(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 424
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$300(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 425
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1500(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 426
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1600(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 427
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1, v4}, Lorg/telegram/messenger/voip/VoIPService;->access$1602(Lorg/telegram/messenger/voip/VoIPService;Z)Z

    .line 428
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 429
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 430
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 433
    :cond_10
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 434
    invoke-interface {p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_6

    .line 436
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 437
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 438
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 439
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    goto :goto_9

    .line 441
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 442
    :goto_7
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_14

    .line 443
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    invoke-interface {p1, v3}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onScreenOnChange(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 445
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    .line 446
    :goto_8
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p2}, Lorg/telegram/messenger/voip/VoIPService;->access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_14

    .line 447
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$3;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p2}, Lorg/telegram/messenger/voip/VoIPService;->access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    invoke-interface {p2, v4}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onScreenOnChange(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_14
    :goto_9
    return-void
.end method
