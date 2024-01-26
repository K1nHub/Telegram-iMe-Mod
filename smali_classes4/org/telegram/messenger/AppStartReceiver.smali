.class public Lorg/telegram/messenger/AppStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStartReceiver.java"


# direct methods
.method public static synthetic $r8$lambda$3RTLFR4jSsD6NQ_SSfyeDDSMWuU()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/AppStartReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReceive$0()V
    .locals 9

    .line 24
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    .line 25
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 26
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 27
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    .line 31
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 34
    :cond_1
    invoke-static {v2}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v3

    .line 35
    invoke-static {}, Lcom/iMe/fork/enums/LockedSection;->values()[Lcom/iMe/fork/enums/LockedSection;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 36
    invoke-virtual {v3, v7}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 37
    invoke-virtual {v7}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 38
    invoke-virtual {v7, v1}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v3}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    sget-object p1, Lorg/telegram/messenger/AppStartReceiver$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/AppStartReceiver$$ExternalSyntheticLambda0;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
