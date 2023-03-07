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

.method public static synthetic $r8$lambda$IYnZboEspimBwQVmmGofZCfDi1A(ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$3(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KBcZHoD05HvurE7BKrY42MK4Hoo(Lorg/telegram/ui/ProfileActivity$16;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MIesrAXyxUGyyDwGeGPe8BJw0d8(Lorg/telegram/ui/ProfileActivity$16;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$4(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 3679
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3688
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .locals 2

    .line 3696
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$13900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3854
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3850
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    const-string p2, "VALIDATE_PASSWORD"

    .line 3851
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 3852
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3853
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$onItemClick$3(ILandroid/content/DialogInterface;I)V
    .locals 0

    rsub-int/lit8 p1, p2, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    .line 3966
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass(I)V

    goto :goto_0

    .line 3968
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onItemClick$4(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 32

    move-object/from16 v8, p0

    move/from16 v0, p3

    .line 3737
    iget v1, v8, Lorg/telegram/ui/ProfileActivity$16;->debugMenuTelegramItemsCount:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-lt v0, v1, :cond_3

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3740
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isDebugThemeSwitchEnabled:Z

    xor-int/2addr v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDebugThemeSwitchEnabled(Z)V

    goto/16 :goto_a

    :cond_0
    if-ne v0, v4, :cond_1

    .line 3742
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14600(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_a

    :cond_1
    if-ne v0, v2, :cond_2

    .line 3744
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/smedialink/ui/debug/DebugPresenter;

    if-eqz v0, :cond_34

    .line 3745
    invoke-virtual {v0}, Lcom/smedialink/ui/debug/DebugPresenter;->resetAirdropInformation()V

    goto/16 :goto_a

    :cond_2
    if-ne v0, v3, :cond_34

    .line 3748
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isDebugForceHighPerformanceEnabled:Z

    xor-int/2addr v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setDebugForceHighPerformanceEnabled(Z)V

    goto/16 :goto_a

    :cond_3
    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 3752
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iput-boolean v4, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 3753
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3754
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    goto/16 :goto_a

    :cond_4
    const-wide/16 v5, 0x0

    if-ne v0, v4, :cond_5

    .line 3756
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v1, v5, v6}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    goto/16 :goto_a

    :cond_5
    if-ne v0, v2, :cond_6

    .line 3758
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->resetImportedContacts()V

    goto/16 :goto_a

    :cond_6
    if-ne v0, v3, :cond_7

    .line 3760
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->forceResetDialogs()V

    goto/16 :goto_a

    :cond_7
    const/4 v7, 0x4

    if-ne v0, v7, :cond_8

    .line 3762
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 3763
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "systemConfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3764
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string v2, "logsEnabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3765
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15000(Lorg/telegram/ui/ProfileActivity;)V

    .line 3766
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    :cond_8
    const/4 v7, 0x5

    if-ne v0, v7, :cond_9

    .line 3768
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleInappCamera()V

    goto/16 :goto_a

    :cond_9
    const/4 v7, 0x6

    if-ne v0, v7, :cond_a

    .line 3770
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->clearSentMedia()V

    .line 3771
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setNoSoundHintShowed(Z)V

    .line 3772
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "archivehint"

    .line 3773
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "proximityhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "archivehint_l"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "gifhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "reminderhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "soundHint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "themehint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "bganimationhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "filterhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3774
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "featured_hidden"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "emoji_featured_hidden"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3775
    sput v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 3776
    sput v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 3777
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 3778
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 3779
    sput v3, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 3780
    sput v3, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 3781
    sput v3, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 3782
    sput v3, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 3783
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatThemeController;->clearCache()V

    .line 3784
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3785
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->cleanup()V

    goto/16 :goto_a

    :cond_a
    const/4 v7, 0x7

    if-ne v0, v7, :cond_b

    .line 3787
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->showCallDebugSettings(Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_b
    const/16 v7, 0x8

    if-ne v0, v7, :cond_c

    .line 3789
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRoundCamera16to9()V

    goto/16 :goto_a

    :cond_c
    const/16 v7, 0x9

    if-ne v0, v7, :cond_d

    .line 3791
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(Z)V

    goto/16 :goto_a

    :cond_d
    const/16 v7, 0xa

    if-ne v0, v7, :cond_e

    .line 3793
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->readAllDialogs(I)V

    goto/16 :goto_a

    :cond_e
    const/16 v7, 0xb

    if-ne v0, v7, :cond_f

    .line 3795
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnRecord()V

    goto/16 :goto_a

    :cond_f
    const/16 v7, 0xc

    const/16 v9, 0x10

    if-ne v0, v7, :cond_10

    .line 3797
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSmoothKeyboard()V

    .line 3798
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    if-eqz v0, :cond_34

    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 3799
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_a

    :cond_10
    const/16 v7, 0xd

    if-ne v0, v7, :cond_11

    .line 3802
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDisableVoiceAudioEffects()V

    goto/16 :goto_a

    :cond_11
    const/16 v7, 0xe

    const/16 v10, 0x15

    if-ne v0, v7, :cond_13

    .line 3804
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleNoStatusBar()V

    .line 3805
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_34

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_34

    .line 3806
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noStatusBar:Z

    if-eqz v0, :cond_12

    .line 3807
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_a

    .line 3809
    :cond_12
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_a

    :cond_13
    const/16 v7, 0xf

    const/4 v11, 0x0

    if-ne v0, v7, :cond_14

    .line 3813
    sput-object v11, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 3814
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 3815
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_14
    const-string v7, "VALIDATE_PHONE_NUMBER"

    if-ne v0, v9, :cond_15

    .line 3817
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    .line 3818
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "VALIDATE_PASSWORD"

    .line 3819
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3820
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_15
    const/16 v9, 0x11

    if-ne v0, v9, :cond_16

    .line 3822
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleForceRTMPStream()V

    goto/16 :goto_a

    :cond_16
    const/16 v9, 0x12

    if-ne v0, v9, :cond_17

    .line 3824
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "webview.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 3825
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "webviewCache.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 3826
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    goto/16 :goto_a

    :cond_17
    const/16 v9, 0x13

    if-ne v0, v9, :cond_19

    .line 3828
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDebugWebView()V

    .line 3829
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v2, :cond_18

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugEnabled:I

    goto :goto_0

    :cond_18
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugDisabled:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    :cond_19
    const/16 v9, 0x14

    if-ne v0, v9, :cond_1a

    .line 3831
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleForceDisableTabletMode()V

    .line 3833
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 3834
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3835
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3836
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 3837
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3838
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_a

    :cond_1a
    if-ne v0, v10, :cond_1b

    .line 3840
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useLNavigation:Z

    xor-int/2addr v0, v4

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->useLNavigation:Z

    .line 3841
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 3842
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_a

    :cond_1b
    const/16 v9, 0x16

    if-ne v0, v9, :cond_1c

    .line 3844
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->isActive()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    goto/16 :goto_a

    :cond_1c
    const/16 v9, 0x17

    if-ne v0, v9, :cond_1d

    .line 3846
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    .line 3847
    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 3848
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3849
    iget-object v1, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda3;

    invoke-direct {v2, v8}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    :cond_1d
    const/16 v7, 0x18

    if-ne v0, v7, :cond_2d

    .line 3859
    sget v0, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 3860
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 3865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v9, v5

    move-wide v11, v9

    move-wide v13, v11

    move-wide v15, v13

    move-wide/from16 v17, v15

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    :goto_1
    const-string v7, "\n"

    const-wide/16 v25, 0x3e8

    if-ge v1, v0, :cond_22

    .line 3867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 3868
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p1, v0

    const-string v0, "/cpufreq/cpuinfo_cur_freq"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 3869
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p2, v2

    const-string v2, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3870
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cpu_capacity"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "#"

    .line 3871
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v27, 0x1

    move-object/from16 p3, v3

    if-eqz v5, :cond_1e

    const-string v3, "min="

    .line 3873
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    move-object/from16 v31, v6

    move-object v3, v7

    div-long v6, v29, v25

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3874
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long v5, v5, v25

    add-long/2addr v9, v5

    add-long v11, v11, v27

    goto :goto_2

    :cond_1e
    move-object/from16 v31, v6

    move-object v3, v7

    :goto_2
    if-eqz v0, :cond_1f

    const-string v5, "cur="

    .line 3878
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long v5, v5, v25

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3879
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long v5, v5, v25

    add-long/2addr v13, v5

    add-long v15, v15, v27

    :cond_1f
    if-eqz v2, :cond_20

    const-string v0, "max="

    .line 3883
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long v5, v5, v25

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long v5, v5, v25

    add-long v17, v17, v5

    add-long v19, v19, v27

    :cond_20
    if-eqz v31, :cond_21

    const-string v0, "cpc="

    .line 3888
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v21, v21, v5

    add-long v23, v23, v27

    .line 3892
    :cond_21
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v5, 0x0

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_1

    :cond_22
    move/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 p3, v3

    move-object v3, v7

    .line 3894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3895
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (android "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x1f

    if-lt v2, v5, :cond_23

    const-string v6, "SoC: "

    .line 3897
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v1, "/sys/kernel/gpu/gpu_model"

    .line 3899
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string v6, "GPU: "

    .line 3901
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/kernel/gpu/gpu_min_clock"

    .line 3902
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v6, "/sys/kernel/gpu/gpu_mm_min_clock"

    .line 3903
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "/sys/kernel/gpu/gpu_max_clock"

    .line 3904
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v1, :cond_24

    const-string v8, ", min="

    .line 3906
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object v8, v6

    div-long v5, v27, v25

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_24
    move-object v8, v6

    :goto_3
    if-eqz v8, :cond_25

    const-string v5, ", mmin="

    .line 3909
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long v5, v5, v25

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_25
    if-eqz v7, :cond_26

    const-string v5, ", max="

    .line 3912
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long v5, v5, v25

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3914
    :cond_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    :cond_27
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v5

    const-string v7, "GLES Version: "

    .line 3917
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Memory: class="

    .line 3918
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    int-to-long v7, v5

    const-wide/16 v25, 0x400

    mul-long v7, v7, v25

    mul-long v7, v7, v25

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3920
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v6, ", total="

    .line 3921
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", avail="

    .line 3922
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", low?="

    .line 3923
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v5, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " (threshold="

    .line 3924
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v5, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3925
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Current class: "

    .line 3926
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->performanceClassName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", measured: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->performanceClassName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    if-lt v2, v1, :cond_28

    const-string v1, ", suggest="

    .line 3928
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->MEDIA_PERFORMANCE_CLASS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3930
    :cond_28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    .line 3931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " CPUs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    cmp-long v5, v11, v1

    if-lez v5, :cond_29

    const-string v5, ", avgMinFreq="

    .line 3933
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_29
    cmp-long v5, v15, v1

    if-lez v5, :cond_2a

    const-string v5, ", avgCurFreq="

    .line 3936
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v13, v15

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2a
    cmp-long v5, v19, v1

    if-lez v5, :cond_2b

    const-string v5, ", avgMaxFreq="

    .line 3939
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v17, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2b
    cmp-long v5, v23, v1

    if-lez v5, :cond_2c

    const-string v1, ", avgCapacity="

    .line 3942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v21, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3944
    :cond_2c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p0

    .line 3946
    iget-object v9, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v10, Lorg/telegram/ui/ProfileActivity$16$1;

    iget-object v1, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ProfileActivity$16$1;-><init>(Lorg/telegram/ui/ProfileActivity$16;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    :cond_2d
    const/16 v5, 0x19

    if-ne v0, v5, :cond_34

    .line 3955
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$5500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string v5, "Force performance class"

    .line 3956
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3957
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v5

    .line 3958
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v6

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 3959
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v5, v2, :cond_2e

    const-string v9, "**HIGH**"

    goto :goto_4

    :cond_2e
    const-string v9, "HIGH"

    .line 3960
    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (measured)"

    const-string v10, ""

    if-ne v6, v2, :cond_2f

    move-object v12, v9

    goto :goto_5

    :cond_2f
    move-object v12, v10

    :goto_5
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    aput-object v7, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v5, v4, :cond_30

    const-string v7, "**AVERAGE**"

    goto :goto_6

    :cond_30
    const-string v7, "AVERAGE"

    .line 3961
    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v6, v4, :cond_31

    move-object v7, v9

    goto :goto_7

    :cond_31
    move-object v7, v10

    :goto_7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    aput-object v1, v3, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v5, :cond_32

    const-string v4, "**LOW**"

    goto :goto_8

    :cond_32
    const-string v4, "LOW"

    .line 3962
    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_33

    goto :goto_9

    :cond_33
    move-object v9, v10

    :goto_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    aput-object v1, v3, v2

    new-instance v1, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda0;-><init>(I)V

    .line 3959
    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3971
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3972
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_34
    :goto_a
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 13

    .line 3693
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 3694
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance p2, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-static {p1, p2}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showChatProfileTelegramIdDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V

    return v1

    .line 3700
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p2, v0, :cond_20

    .line 3701
    iget p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ge p1, p2, :cond_2

    .line 3702
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3988
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

    goto/16 :goto_1b

    :catch_0
    move-exception p1

    .line 3990
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 3703
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

    .line 3704
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenu:I

    const-string v3, "DebugMenu"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/16 v2, 0x1a

    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 3706
    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuImportContacts:I

    const-string v5, "DebugMenuImportContacts"

    .line 3707
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuReloadContacts:I

    const-string v5, "DebugMenuReloadContacts"

    .line 3708
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuResetContacts:I

    const-string v5, "DebugMenuResetContacts"

    .line 3709
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuResetDialogs:I

    const-string v5, "DebugMenuResetDialogs"

    .line 3710
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 3711
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

    .line 3712
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

    .line 3713
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x7

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuCallSettings:I

    const-string v9, "DebugMenuCallSettings"

    .line 3714
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v4, 0x8

    aput-object v6, v3, v4

    const/16 v4, 0x9

    .line 3716
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

    .line 3717
    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v4, 0xb

    .line 3718
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

    .line 3719
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

    .line 3720
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

    .line 3721
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

    .line 3722
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

    .line 3724
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

    .line 3725
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

    .line 3726
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

    .line 3727
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

    .line 3729
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

    .line 3730
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v4, :cond_1a

    const-string v8, "Force remove premium suggestions"

    goto :goto_15

    :cond_1a
    move-object v8, v6

    :goto_15
    aput-object v8, v3, v9

    const/16 v8, 0x18

    if-eqz v4, :cond_1b

    const-string v9, "Share device info"

    goto :goto_16

    :cond_1b
    move-object v9, v6

    :goto_16
    aput-object v9, v3, v8

    const/16 v8, 0x19

    if-eqz v4, :cond_1c

    const-string v4, "Force performance class"

    goto :goto_17

    :cond_1c
    move-object v4, v6

    :goto_17
    aput-object v4, v3, v8

    .line 3735
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$16;->val$context:Landroid/content/Context;

    new-instance v8, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v4}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$16;Landroid/content/Context;)V

    invoke-virtual {p1, v3, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3976
    iput v2, p0, Lorg/telegram/ui/ProfileActivity$16;->debugMenuTelegramItemsCount:I

    new-array v2, v7, [Ljava/lang/CharSequence;

    aput-object v6, v2, v0

    .line 3979
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/smedialink/ui/debug/DebugPresenter;

    if-eqz v3, :cond_1d

    sget v4, Lorg/telegram/messenger/R$string;->debug_option_choose_wallet_environment:I

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/smedialink/ui/debug/DebugPresenter;->getCurrentWalletEnvironment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_1d
    move-object v0, v6

    :goto_18
    aput-object v0, v2, v1

    .line 3980
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/smedialink/ui/debug/DebugPresenter;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/smedialink/ui/debug/DebugPresenter;->isStageEnvironment()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget v0, Lorg/telegram/messenger/R$string;->debug_option_reset_airdrop:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_1e
    move-object v0, v6

    :goto_19
    aput-object v0, v2, p2

    .line 3981
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDebugForceHighPerformanceEnabled:Z

    if-eqz p2, :cond_1f

    const-string p2, "Disable high productivity mode"

    goto :goto_1a

    :cond_1f
    const-string p2, "Enable high productivity mode"

    :goto_1a
    aput-object p2, v2, v5

    .line 3977
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->addItems([Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3984
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3985
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_1b
    return v1

    .line 3994
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-lt p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p2, v0, :cond_22

    .line 3996
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14300(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_21

    .line 3997
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14300(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$14100(Lorg/telegram/ui/ProfileActivity;)I

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

    goto :goto_1c

    .line 3999
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 4001
    :goto_1c
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ProfileActivity;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;Z)Z

    move-result p1

    return p1

    .line 4003
    :cond_22
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

    invoke-static {v0, p2, p1, v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;ILandroid/view/View;FF)Z

    move-result p1

    return p1
.end method
