.class public Lorg/telegram/ui/BubbleActivity;
.super Lorg/telegram/ui/BasePermissionsActivity;
.source "BubbleActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private dialogId:J

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private finished:Z

.field private lockRunnable:Ljava/lang/Runnable;

.field private mainFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentAccount:I

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeSaveIntentState:I

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method public static synthetic $r8$lambda$aLBfJAWvNe4zhpflv9o_ChG5anE(Lorg/telegram/ui/BubbleActivity;Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/BubbleActivity;->lambda$showPasscodeActivity$0(Lorg/telegram/ui/Components/PasscodeView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/BasePermissionsActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/BubbleActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/BubbleActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/BubbleActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->showPasscodeActivity()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;ZZZII)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 143
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result p4

    if-nez p4, :cond_0

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz p4, :cond_1

    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->showPasscodeActivity()V

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 146
    iput-boolean p2, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsNew:Z

    .line 147
    iput-boolean p3, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsRestore:Z

    .line 148
    iput p5, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentAccount:I

    .line 149
    iput p6, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentState:I

    .line 150
    invoke-static {p5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return v1

    .line 153
    :cond_1
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string p3, "currentAccount"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    .line 154
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    :cond_2
    const/4 p2, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.tmessages.openchat"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p2, "chatId"

    const-wide/16 p3, 0x0

    .line 160
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p5

    const-string p2, "userId"

    .line 161
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 162
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    cmp-long v3, p1, p3

    if-eqz v3, :cond_3

    .line 164
    iput-wide p1, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    const-string p3, "user_id"

    .line 165
    invoke-virtual {v2, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    neg-long p1, p5

    .line 167
    iput-wide p1, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    const-string p1, "chat_id"

    .line 168
    invoke-virtual {v2, p1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    :goto_0
    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInBubbleMode(Z)V

    .line 172
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    :cond_4
    if-nez p2, :cond_5

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 178
    :cond_5
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array p4, v0, [Ljava/lang/Object;

    iget-wide p5, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p4, v1

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 181
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->setOpenedInBubble(JZ)V

    .line 182
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    return v0
.end method

.method private synthetic lambda$showPasscodeActivity$0(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 8

    const/4 v0, 0x0

    .line 130
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 131
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 132
    iget-boolean v3, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsNew:Z

    iget-boolean v4, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsRestore:Z

    const/4 v5, 0x1

    iget v6, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentAccount:I

    iget v7, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentState:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/BubbleActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 135
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 136
    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 138
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private onFinish()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lorg/telegram/ui/BubbleActivity;->finished:Z

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 199
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lorg/telegram/ui/BubbleActivity;->finished:Z

    return-void
.end method

.method private onPasscodePause()V
    .locals 6

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 276
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 279
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 281
    new-instance v0, Lorg/telegram/ui/BubbleActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BubbleActivity$1;-><init>(Lorg/telegram/ui/BubbleActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 299
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-eqz v1, :cond_1

    .line 300
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 301
    :cond_1
    sget v1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    if-eqz v1, :cond_3

    int-to-long v4, v1

    mul-long v4, v4, v2

    add-long/2addr v4, v2

    .line 302
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 305
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 307
    :cond_3
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method private onPasscodeResume()V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 312
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    .line 315
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->showPasscodeActivity()V

    .line 318
    :cond_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 319
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 320
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_2
    return-void
.end method

.method private showPasscodeActivity()V
    .locals 3

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 118
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 119
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->hasInstance()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 126
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZ)V

    .line 127
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/BubbleActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/BubbleActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/BubbleActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    return-void
.end method


# virtual methods
.method public synthetic needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needAddFragmentToStack(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result p1

    return p1
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 1

    .line 357
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 358
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onFinish()V

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public synthetic needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result p1

    return p1
.end method

.method public synthetic needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeEditorView;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 243
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 340
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 341
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 345
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 326
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 60
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 64
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isVibrationEnabled:Z

    if-nez v1, :cond_0

    .line 65
    sget v1, Lorg/telegram/messenger/R$style;->Theme_TMessages_NoHapticFeedback:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 67
    :cond_0
    sget v1, Lorg/telegram/messenger/R$style;->Theme_TMessages:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->transparent:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 69
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-nez v1, :cond_1

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 73
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 77
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-eqz v1, :cond_2

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 83
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->fillStatusBarHeight(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 87
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 88
    invoke-interface {v2, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setInBubbleMode(Z)V

    .line 89
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 91
    new-instance v2, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 92
    invoke-virtual {v2, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 93
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 96
    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 100
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-interface {v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentStack(Ljava/util/List;)V

    .line 102
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V

    .line 104
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 105
    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/BubbleActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    iget v0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 228
    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->setOpenedInBubble(JZ)V

    .line 229
    iget v0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 231
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onFinish()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onLowMemory()V

    return-void
.end method

.method public synthetic onMeasureOverride([I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onMeasureOverride(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;[I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 191
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/BubbleActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onPause()V

    const/4 v0, 0x1

    .line 217
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    .line 218
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onPasscodePause()V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    :cond_0
    return-void
.end method

.method public synthetic onPreIme()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onPreIme(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 249
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 250
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/BasePermissionsActivity;->checkPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 254
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 257
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    const/4 v0, 0x0

    .line 264
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    .line 265
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onPasscodeResume()V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->dismissDialogs()V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    :goto_0
    return-void
.end method

.method public synthetic onThemeProgress(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onThemeProgress(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;F)V

    return-void
.end method
