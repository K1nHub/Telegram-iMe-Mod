.class Lorg/telegram/ui/ProfileActivity$16;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private debugMenuTelegramItemsCount:I

.field private pressCount:I

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$3iLgq3hLytjx3enB1yGQ5elLsZM(Lorg/telegram/ui/ProfileActivity$16;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQv77TeXNQ9iwpMsSxxREaGehrk(Lorg/telegram/ui/ProfileActivity$16;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KBcZHoD05HvurE7BKrY42MK4Hoo(Lorg/telegram/ui/ProfileActivity$16;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$nkvinCSd_yy6a8sFMlxx19L6lpc(Lorg/telegram/ui/ProfileActivity$16;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$3(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 3644
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3653
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .locals 2

    .line 3661
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3817
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3813
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    const-string p2, "VALIDATE_PASSWORD"

    .line 3814
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 3815
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3816
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onItemClick$3(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 3700
    iget p2, p0, Lorg/telegram/ui/ProfileActivity$16;->debugMenuTelegramItemsCount:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lt p3, p2, :cond_3

    sub-int/2addr p3, p2

    if-nez p3, :cond_0

    .line 3703
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    xor-int/2addr p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDebugThemeSwitchEnabled(Z)V

    goto/16 :goto_1

    :cond_0
    if-ne p3, v2, :cond_1

    .line 3705
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14400(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_1

    :cond_1
    if-ne p3, v0, :cond_2

    .line 3707
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/smedialink/ui/debug/DebugPresenter;

    if-eqz p1, :cond_1d

    .line 3708
    invoke-virtual {p1}, Lcom/smedialink/ui/debug/DebugPresenter;->resetAirdropInformation()V

    goto/16 :goto_1

    :cond_2
    if-ne p3, v1, :cond_1d

    .line 3711
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isDebugForceHighPerformanceEnabled:Z

    xor-int/2addr p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDebugForceHighPerformanceEnabled(Z)V

    goto/16 :goto_1

    :cond_3
    const/4 p2, 0x0

    if-nez p3, :cond_4

    .line 3715
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iput-boolean v2, p1, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 3716
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3717
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    goto/16 :goto_1

    :cond_4
    if-ne p3, v2, :cond_5

    .line 3719
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    goto/16 :goto_1

    :cond_5
    if-ne p3, v0, :cond_6

    .line 3721
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->resetImportedContacts()V

    goto/16 :goto_1

    :cond_6
    if-ne p3, v1, :cond_7

    .line 3723
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->forceResetDialogs()V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x4

    if-ne p3, v0, :cond_8

    .line 3725
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    xor-int/2addr p1, v2

    sput-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 3726
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p3, "systemConfig"

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3727
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string p3, "logsEnabled"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3728
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14800(Lorg/telegram/ui/ProfileActivity;)V

    .line 3729
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x5

    if-ne p3, v0, :cond_9

    .line 3731
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleInappCamera()V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x6

    if-ne p3, v0, :cond_a

    .line 3733
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->clearSentMedia()V

    .line 3734
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setNoSoundHintShowed(Z)V

    .line 3735
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "archivehint"

    .line 3736
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "proximityhint"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "archivehint_l"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "gifhint"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "reminderhint"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "soundHint"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "themehint"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "bganimationhint"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "filterhint"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3737
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "featured_hidden"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "emoji_featured_hidden"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3738
    sput p2, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 3739
    sput p2, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 3740
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 3741
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 3742
    sput v1, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 3743
    sput v1, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 3744
    sput v1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 3745
    sput v1, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 3746
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$15000(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatThemeController;->clearCache()V

    .line 3747
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3748
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->cleanup()V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x7

    if-ne p3, v0, :cond_b

    .line 3750
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->showCallDebugSettings(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0x8

    if-ne p3, v0, :cond_c

    .line 3752
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRoundCamera16to9()V

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0x9

    if-ne p3, v0, :cond_d

    .line 3754
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(Z)V

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0xa

    if-ne p3, v0, :cond_e

    .line 3756
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->readAllDialogs(I)V

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0xb

    if-ne p3, v0, :cond_f

    .line 3758
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnRecord()V

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0xc

    const/16 v1, 0x10

    if-ne p3, v0, :cond_10

    .line 3760
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSmoothKeyboard()V

    .line 3761
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 3762
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    :cond_10
    const/16 v0, 0xd

    if-ne p3, v0, :cond_11

    .line 3765
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDisableVoiceAudioEffects()V

    goto/16 :goto_1

    :cond_11
    const/16 v0, 0xe

    const/16 v3, 0x15

    if-ne p3, v0, :cond_13

    .line 3767
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleNoStatusBar()V

    .line 3768
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1d

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_1d

    .line 3769
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->noStatusBar:Z

    if-eqz p1, :cond_12

    .line 3770
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_1

    .line 3772
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x33000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_1

    :cond_13
    const/16 v0, 0xf

    if-ne p3, v0, :cond_14

    const/4 p1, 0x0

    .line 3776
    sput-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 3777
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 3778
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_14
    const-string v0, "VALIDATE_PHONE_NUMBER"

    if-ne p3, v1, :cond_15

    .line 3780
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    .line 3781
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p3, "VALIDATE_PASSWORD"

    .line 3782
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3783
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_15
    const/16 v1, 0x11

    if-ne p3, v1, :cond_16

    .line 3785
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleForceRTMPStream()V

    goto/16 :goto_1

    :cond_16
    const/16 v1, 0x12

    if-ne p3, v1, :cond_17

    .line 3787
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "webview.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 3788
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "webviewCache.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 3789
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebStorage;->deleteAllData()V

    goto/16 :goto_1

    :cond_17
    const/16 v1, 0x13

    if-ne p3, v1, :cond_19

    .line 3791
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDebugWebView()V

    .line 3792
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz p3, :cond_18

    sget p3, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugEnabled:I

    goto :goto_0

    :cond_18
    sget p3, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugDisabled:I

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_19
    const/16 v1, 0x14

    if-ne p3, v1, :cond_1a

    .line 3794
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleForceDisableTabletMode()V

    .line 3796
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 3797
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 3798
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 3799
    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    .line 3800
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3801
    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :cond_1a
    if-ne p3, v3, :cond_1b

    .line 3803
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useLNavigation:Z

    xor-int/2addr p1, v2

    sput-boolean p1, Lorg/telegram/messenger/SharedConfig;->useLNavigation:Z

    .line 3804
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 3805
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    :cond_1b
    const/16 p1, 0x16

    if-ne p3, p1, :cond_1c

    .line 3807
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->isActive()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    goto :goto_1

    :cond_1c
    const/16 p1, 0x17

    if-ne p3, p1, :cond_1d

    .line 3809
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    .line 3810
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 3811
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3812
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1d
    :goto_1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 13

    .line 3658
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 3659
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance p2, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-static {p1, p2}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showChatProfileTelegramIdDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V

    return v1

    .line 3665
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1e

    .line 3666
    iget p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ge p1, p2, :cond_2

    .line 3667
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3835
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "\u00af\\_(\u30c4)_/\u00af"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_19

    :catch_0
    move-exception p1

    .line 3837
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 3668
    :cond_2
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3669
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenu:I

    const-string v3, "DebugMenu"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/16 v2, 0x18

    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 3671
    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuImportContacts:I

    const-string v5, "DebugMenuImportContacts"

    .line 3672
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuReloadContacts:I

    const-string v5, "DebugMenuReloadContacts"

    .line 3673
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuResetContacts:I

    const-string v5, "DebugMenuResetContacts"

    .line 3674
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuResetDialogs:I

    const-string v5, "DebugMenuResetDialogs"

    .line 3675
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 3676
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    move-object v4, v6

    goto :goto_2

    :cond_3
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_4

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuDisableLogs:I

    const-string v7, "DebugMenuDisableLogs"

    goto :goto_1

    :cond_4
    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuEnableLogs:I

    const-string v7, "DebugMenuEnableLogs"

    :goto_1
    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/4 v7, 0x4

    aput-object v4, v3, v7

    const/4 v4, 0x5

    .line 3677
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    if-eqz v8, :cond_5

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuDisableCamera:I

    const-string v9, "DebugMenuDisableCamera"

    goto :goto_3

    :cond_5
    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuEnableCamera:I

    const-string v9, "DebugMenuEnableCamera"

    :goto_3
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x6

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuClearMediaCache:I

    const-string v9, "DebugMenuClearMediaCache"

    .line 3678
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x7

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuCallSettings:I

    const-string v9, "DebugMenuCallSettings"

    .line 3679
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v4, 0x8

    aput-object v6, v3, v4

    const/16 v4, 0x9

    .line 3681
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v8, :cond_7

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isStandaloneApp()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move-object v8, v6

    goto :goto_5

    :cond_7
    :goto_4
    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuCheckAppUpdate:I

    const-string v9, "DebugMenuCheckAppUpdate"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :goto_5
    aput-object v8, v3, v4

    const/16 v4, 0xa

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuReadAllDialogs:I

    const-string v9, "DebugMenuReadAllDialogs"

    .line 3682
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v4, 0xb

    .line 3683
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    if-eqz v8, :cond_8

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuDisablePauseMusic:I

    const-string v9, "DebugMenuDisablePauseMusic"

    goto :goto_6

    :cond_8
    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuEnablePauseMusic:I

    const-string v9, "DebugMenuEnablePauseMusic"

    :goto_6
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v4, 0xc

    .line 3684
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const/16 v9, 0x17

    if-eqz v8, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-nez v8, :cond_a

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v9, :cond_a

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-eqz v8, :cond_9

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuDisableSmoothKeyboard:I

    const-string v10, "DebugMenuDisableSmoothKeyboard"

    goto :goto_7

    :cond_9
    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuEnableSmoothKeyboard:I

    const-string v10, "DebugMenuEnableSmoothKeyboard"

    :goto_7
    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_a
    move-object v8, v6

    :goto_8
    aput-object v8, v3, v4

    const/16 v4, 0xd

    .line 3685
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v8, :cond_c

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    if-eqz v8, :cond_b

    const-string v8, "Enable voip audio effects"

    goto :goto_9

    :cond_b
    const-string v8, "Disable voip audio effects"

    goto :goto_9

    :cond_c
    move-object v8, v6

    :goto_9
    aput-object v8, v3, v4

    const/16 v4, 0xe

    .line 3686
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v8, v10, :cond_e

    sget-boolean v11, Lorg/telegram/messenger/SharedConfig;->noStatusBar:Z

    if-eqz v11, :cond_d

    const-string v11, "Show status bar background"

    goto :goto_a

    :cond_d
    const-string v11, "Hide status bar background"

    goto :goto_a

    :cond_e
    move-object v11, v6

    :goto_a
    aput-object v11, v3, v4

    const/16 v4, 0xf

    .line 3687
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v11, :cond_f

    const-string v12, "Clean app update"

    goto :goto_b

    :cond_f
    move-object v12, v6

    :goto_b
    aput-object v12, v3, v4

    const/16 v4, 0x10

    if-eqz v11, :cond_10

    const-string v12, "Reset suggestions"

    goto :goto_c

    :cond_10
    move-object v12, v6

    :goto_c
    aput-object v12, v3, v4

    const/16 v4, 0x11

    if-eqz v11, :cond_12

    .line 3689
    sget-boolean v11, Lorg/telegram/messenger/SharedConfig;->forceRtmpStream:Z

    if-eqz v11, :cond_11

    sget v11, Lorg/telegram/messenger/R$string;->DebugMenuDisableForceRtmpStreamFlag:I

    goto :goto_d

    :cond_11
    sget v11, Lorg/telegram/messenger/R$string;->DebugMenuEnableForceRtmpStreamFlag:I

    :goto_d
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    :cond_12
    move-object v11, v6

    :goto_e
    aput-object v11, v3, v4

    const/16 v4, 0x12

    .line 3690
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v11, :cond_13

    sget v11, Lorg/telegram/messenger/R$string;->DebugMenuClearWebViewCache:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    :cond_13
    move-object v11, v6

    :goto_f
    aput-object v11, v3, v4

    const/16 v4, 0x13

    if-lt v8, v4, :cond_15

    .line 3691
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v8, :cond_14

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuDisableWebViewDebug:I

    goto :goto_10

    :cond_14
    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuEnableWebViewDebug:I

    :goto_10
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_15
    move-object v8, v6

    :goto_11
    aput-object v8, v3, v4

    const/16 v4, 0x14

    .line 3692
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletInternal()Z

    move-result v8

    if-eqz v8, :cond_17

    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v8, :cond_17

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    if-eqz v8, :cond_16

    const-string v8, "Enable tablet mode"

    goto :goto_12

    :cond_16
    const-string v8, "Disable tablet mode"

    goto :goto_12

    :cond_17
    move-object v8, v6

    :goto_12
    aput-object v8, v3, v4

    aput-object v6, v3, v10

    const/16 v4, 0x16

    .line 3694
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v8, :cond_19

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    if-eqz v8, :cond_18

    sget v8, Lorg/telegram/messenger/R$string;->FloatingDebugDisable:I

    goto :goto_13

    :cond_18
    sget v8, Lorg/telegram/messenger/R$string;->FloatingDebugEnable:I

    :goto_13
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_14

    :cond_19
    move-object v8, v6

    :goto_14
    aput-object v8, v3, v4

    .line 3695
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v4, :cond_1a

    const-string v4, "Force remove premium suggestions"

    goto :goto_15

    :cond_1a
    move-object v4, v6

    :goto_15
    aput-object v4, v3, v9

    .line 3698
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$16;->val$context:Landroid/content/Context;

    new-instance v8, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v4}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$16;Landroid/content/Context;)V

    invoke-virtual {p1, v3, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3823
    iput v2, p0, Lorg/telegram/ui/ProfileActivity$16;->debugMenuTelegramItemsCount:I

    new-array v2, v7, [Ljava/lang/CharSequence;

    aput-object v6, v2, v0

    .line 3826
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/smedialink/ui/debug/DebugPresenter;

    if-eqz v3, :cond_1b

    sget v4, Lorg/telegram/messenger/R$string;->debug_option_choose_wallet_environment:I

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/smedialink/ui/debug/DebugPresenter;->getCurrentWalletEnvironment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_1b
    move-object v0, v6

    :goto_16
    aput-object v0, v2, v1

    .line 3827
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/smedialink/ui/debug/DebugPresenter;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/smedialink/ui/debug/DebugPresenter;->isStageEnvironment()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget v0, Lorg/telegram/messenger/R$string;->debug_option_reset_airdrop:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_1c
    move-object v0, v6

    :goto_17
    aput-object v0, v2, p2

    .line 3828
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDebugForceHighPerformanceEnabled:Z

    if-eqz p2, :cond_1d

    const-string p2, "Disable high productivity mode"

    goto :goto_18

    :cond_1d
    const-string p2, "Enable high productivity mode"

    :goto_18
    aput-object p2, v2, v5

    .line 3824
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->addItems([Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3831
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3832
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_19
    return v1

    .line 3841
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-lt p2, v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p2, v0, :cond_20

    .line 3843
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14100(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 3844
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14200(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14100(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$13900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_1a

    .line 3846
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14200(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 3848
    :goto_1a
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ProfileActivity;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Z)Z

    move-result p1

    return p1

    .line 3850
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v0, p2, p1, v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$14300(Lorg/telegram/ui/ProfileActivity;ILandroid/view/View;FF)Z

    move-result p1

    return p1
.end method
