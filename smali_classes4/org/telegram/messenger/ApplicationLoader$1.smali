.class Lorg/telegram/messenger/ApplicationLoader$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->initForkSmartBots()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "extra_download_id"

    const-wide/16 v0, -0x1

    .line 100
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 101
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->handleDownloadCompletion(J)V

    return-void
.end method
