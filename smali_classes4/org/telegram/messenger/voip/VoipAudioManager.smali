.class public Lorg/telegram/messenger/voip/VoipAudioManager;
.super Ljava/lang/Object;
.source "VoipAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoipAudioManager$InstanceHolder;
    }
.end annotation


# instance fields
.field private isSpeakerphoneOn:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$chGKQOLlfcD3_nQFcnAKQ7Wd8c0(Landroid/media/AudioManager;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->lambda$setSpeakerphoneOn$0(Landroid/media/AudioManager;Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/voip/VoipAudioManager$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoipAudioManager;-><init>()V

    return-void
.end method

.method public static get()Lorg/telegram/messenger/voip/VoipAudioManager;
    .locals 1

    .line 23
    sget-object v0, Lorg/telegram/messenger/voip/VoipAudioManager$InstanceHolder;->instance:Lorg/telegram/messenger/voip/VoipAudioManager;

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 51
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private static synthetic lambda$setSpeakerphoneOn$0(Landroid/media/AudioManager;Z)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method


# virtual methods
.method public isSpeakerphoneOn()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoipAudioManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 3

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn:Ljava/lang/Boolean;

    .line 32
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoipAudioManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 33
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lorg/telegram/messenger/voip/VoipAudioManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager;Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
