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

.method public static synthetic $r8$lambda$MIesrAXyxUGyyDwGeGPe8BJw0d8(Lorg/telegram/ui/ProfileActivity$16;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$4(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_2mgTK1VIf7FMN3mrVvavMsS3Qk(Lorg/telegram/ui/ProfileActivity$16;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$16;->lambda$onItemClick$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 4108
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4117
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .locals 2

    .line 4131
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->updateListAnimated(Z)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4267
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4263
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    const-string p2, "VALIDATE_PASSWORD"

    .line 4264
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 4265
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4266
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

    .line 4382
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass(I)V

    goto :goto_0

    .line 4384
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onItemClick$4(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 32

    move-object/from16 v8, p0

    move/from16 v0, p3

    .line 4171
    iget v1, v8, Lorg/telegram/ui/ProfileActivity$16;->debugMenuTelegramItemsCount:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 4174
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15900(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_c

    :cond_0
    if-ne v0, v2, :cond_31

    .line 4176
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/iMe/ui/debug/DebugPresenter;

    if-eqz v0, :cond_31

    .line 4177
    invoke-virtual {v0}, Lcom/iMe/ui/debug/DebugPresenter;->resetAirdropInformation()V

    goto/16 :goto_c

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4182
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iput-boolean v2, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 4183
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4184
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    goto/16 :goto_c

    :cond_2
    const-wide/16 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 4186
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    goto/16 :goto_c

    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 4188
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->resetImportedContacts()V

    goto/16 :goto_c

    :cond_4
    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    .line 4190
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->forceResetDialogs()V

    goto/16 :goto_c

    :cond_5
    const/4 v7, 0x4

    if-ne v0, v7, :cond_6

    .line 4192
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 4193
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "systemConfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4194
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string v2, "logsEnabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4195
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16300(Lorg/telegram/ui/ProfileActivity;)V

    .line 4196
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$10100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_c

    :cond_6
    const/4 v7, 0x5

    if-ne v0, v7, :cond_7

    .line 4198
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleInappCamera()V

    goto/16 :goto_c

    :cond_7
    const/4 v7, 0x6

    const-string v9, "dual_available"

    if-ne v0, v7, :cond_8

    .line 4200
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->clearSentMedia()V

    .line 4201
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setNoSoundHintShowed(Z)V

    .line 4202
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "archivehint"

    .line 4203
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "proximityhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "archivehint_l"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "speedhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "gifhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "reminderhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "soundHint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "themehint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "bganimationhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "filterhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "n_0"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "storyprvhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "storyhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "storyhint2"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "storydualhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "storysvddualhint"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "stories_camera"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "dualcam"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "dualmatrix"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "askNotificationsAfter"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "askNotificationsDuration"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "viewoncehint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "taptostorysoundhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4204
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16400(Lorg/telegram/ui/ProfileActivity;)I

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

    .line 4205
    sput v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 4206
    sput v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 4207
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 4208
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 4209
    sput v6, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 4210
    sput v6, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 4211
    sput v6, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 4212
    sput v6, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 4213
    sput v5, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 4214
    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->updateStealthModeSendMessageConfirm(I)V

    .line 4215
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    .line 4216
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatThemeController;->clearCache()V

    .line 4217
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4218
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->cleanup()V

    .line 4219
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->cleanup()V

    goto/16 :goto_c

    :cond_8
    const/4 v7, 0x7

    if-ne v0, v7, :cond_9

    .line 4221
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->showCallDebugSettings(Landroid/content/Context;)V

    goto/16 :goto_c

    :cond_9
    const/16 v7, 0x8

    if-ne v0, v7, :cond_a

    .line 4223
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRoundCamera16to9()V

    goto/16 :goto_c

    :cond_a
    const/16 v7, 0x9

    if-ne v0, v7, :cond_b

    .line 4225
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(Z)V

    goto/16 :goto_c

    :cond_b
    const/16 v7, 0xa

    if-ne v0, v7, :cond_c

    .line 4227
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->readAllDialogs(I)V

    goto/16 :goto_c

    :cond_c
    const/16 v7, 0xb

    if-ne v0, v7, :cond_d

    .line 4229
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDisableVoiceAudioEffects()V

    goto/16 :goto_c

    :cond_d
    const/16 v7, 0xc

    const/4 v10, 0x0

    if-ne v0, v7, :cond_e

    .line 4231
    sput-object v10, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 4232
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 4233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_e
    const/16 v7, 0xd

    const-string v11, "VALIDATE_PHONE_NUMBER"

    if-ne v0, v7, :cond_f

    .line 4235
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    .line 4236
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "VALIDATE_PASSWORD"

    .line 4237
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4238
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_f
    const/16 v7, 0xe

    if-ne v0, v7, :cond_10

    .line 4240
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "webview.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 4241
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "webviewCache.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 4242
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    goto/16 :goto_c

    :cond_10
    const/16 v7, 0xf

    if-ne v0, v7, :cond_12

    .line 4244
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDebugWebView()V

    .line 4245
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v2, :cond_11

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugEnabled:I

    goto :goto_0

    :cond_11
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugDisabled:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    :cond_12
    const/16 v7, 0x10

    if-ne v0, v7, :cond_13

    .line 4247
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleForceDisableTabletMode()V

    .line 4249
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 4250
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4251
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 4252
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 4253
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4254
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_c

    :cond_13
    const/16 v7, 0x11

    if-ne v0, v7, :cond_14

    .line 4256
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->isActive()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    goto/16 :goto_c

    :cond_14
    const/16 v7, 0x12

    if-ne v0, v7, :cond_15

    .line 4258
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    .line 4259
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    .line 4260
    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 4261
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4262
    iget-object v1, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda3;

    invoke-direct {v2, v8}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_c

    :cond_15
    const/16 v7, 0x13

    if-ne v0, v7, :cond_25

    .line 4272
    sget v0, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 4273
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 4278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v9, v3

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

    if-ge v1, v0, :cond_1a

    .line 4280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 4281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p1, v0

    const-string v0, "/cpufreq/cpuinfo_cur_freq"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 4282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p2, v2

    const-string v2, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 4283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cpu_capacity"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-string v8, "#"

    .line 4284
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v27, 0x1

    if-eqz v3, :cond_16

    move-object/from16 p3, v5

    const-string v5, "min="

    .line 4286
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    move-object/from16 v31, v4

    div-long v4, v29, v25

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4287
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v25

    add-long/2addr v9, v3

    add-long v11, v11, v27

    goto :goto_2

    :cond_16
    move-object/from16 v31, v4

    move-object/from16 p3, v5

    :goto_2
    if-eqz v0, :cond_17

    const-string v3, "cur="

    .line 4291
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v25

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4292
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v25

    add-long/2addr v13, v3

    add-long v15, v15, v27

    :cond_17
    if-eqz v2, :cond_18

    const-string v0, "max="

    .line 4296
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v25

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4297
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long v2, v2, v25

    add-long v17, v17, v2

    add-long v19, v19, v27

    :cond_18
    if-eqz v31, :cond_19

    const-string v0, "cpc="

    .line 4301
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4302
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v21, v21, v2

    add-long v23, v23, v27

    .line 4305
    :cond_19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v3, 0x0

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v5, p3

    goto/16 :goto_1

    :cond_1a
    move/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 p3, v5

    .line 4307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4308
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

    const-string v3, ")\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1b

    const-string v4, "SoC: "

    .line 4310
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->SOC_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "/sys/kernel/gpu/gpu_model"

    .line 4312
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v4, "GPU: "

    .line 4314
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/kernel/gpu/gpu_min_clock"

    .line 4315
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "/sys/kernel/gpu/gpu_mm_min_clock"

    .line 4316
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "/sys/kernel/gpu/gpu_max_clock"

    .line 4317
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v1, :cond_1c

    const-string v8, ", min="

    .line 4319
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object v8, v4

    div-long v3, v27, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1c
    move-object v8, v4

    :goto_3
    if-eqz v8, :cond_1d

    const-string v3, ", mmin="

    .line 4322
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1d
    if-eqz v5, :cond_1e

    const-string v3, ", max="

    .line 4325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4327
    :cond_1e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4329
    :cond_1f
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v3

    const-string v5, "GLES Version: "

    .line 4330
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Memory: class="

    .line 4331
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    move/from16 p2, v2

    int-to-long v1, v3

    const-wide/16 v25, 0x400

    mul-long v1, v1, v25

    mul-long v1, v1, v25

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4332
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4333
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v2, ", total="

    .line 4334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", avail="

    .line 4335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", low?="

    .line 4336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " (threshold="

    .line 4337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4338
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current class: "

    .line 4339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->performanceClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", measured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->performanceClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_20

    const-string v1, ", suggest="

    .line 4341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->MEDIA_PERFORMANCE_CLASS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4343
    :cond_20
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    .line 4344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " CPUs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    cmp-long v3, v11, v1

    if-lez v3, :cond_21

    const-string v3, ", avgMinFreq="

    .line 4346
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_21
    cmp-long v3, v15, v1

    if-lez v3, :cond_22

    const-string v3, ", avgCurFreq="

    .line 4349
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v13, v15

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_22
    cmp-long v3, v19, v1

    if-lez v3, :cond_23

    const-string v3, ", avgMaxFreq="

    .line 4352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v17, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_23
    cmp-long v1, v23, v1

    if-lez v1, :cond_24

    const-string v1, ", avgCapacity="

    .line 4355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v21, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4357
    :cond_24
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p0

    .line 4359
    iget-object v1, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v2, "video/avc"

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ProfileActivity;->access$16700(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4360
    iget-object v1, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v2, "video/hevc"

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/ProfileActivity;->access$16700(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4362
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

    goto/16 :goto_c

    :cond_25
    const/16 v3, 0x14

    if-ne v0, v3, :cond_2c

    .line 4371
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$5900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string v3, "Force performance class"

    .line 4372
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4373
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v3

    .line 4374
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v4

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 4375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v3, v5, :cond_26

    const-string v9, "**HIGH**"

    goto :goto_4

    :cond_26
    const-string v9, "HIGH"

    .line 4376
    :goto_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (measured)"

    const-string v11, ""

    if-ne v4, v5, :cond_27

    move-object v12, v9

    goto :goto_5

    :cond_27
    move-object v12, v11

    :goto_5
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    aput-object v7, v6, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v3, v2, :cond_28

    const-string v7, "**AVERAGE**"

    goto :goto_6

    :cond_28
    const-string v7, "AVERAGE"

    .line 4377
    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v2, :cond_29

    move-object v7, v9

    goto :goto_7

    :cond_29
    move-object v7, v11

    :goto_7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    aput-object v1, v6, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_2a

    const-string v2, "**LOW**"

    goto :goto_8

    :cond_2a
    const-string v2, "LOW"

    .line 4378
    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_2b

    goto :goto_9

    :cond_2b
    move-object v9, v11

    :goto_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    aput-object v1, v6, v5

    new-instance v1, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda0;

    invoke-direct {v1, v4}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda0;-><init>(I)V

    .line 4375
    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4387
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4388
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_c

    :cond_2c
    const/16 v2, 0x15

    if-ne v0, v2, :cond_2d

    .line 4390
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRoundCamera()V

    goto :goto_c

    :cond_2d
    const/16 v2, 0x16

    if-ne v0, v2, :cond_2f

    .line 4392
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    .line 4393
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    xor-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v9, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4395
    :try_start_0
    iget-object v2, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v0, :cond_2e

    sget v0, Lorg/telegram/messenger/R$string;->DebugMenuDualOnToast:I

    goto :goto_a

    :cond_2e
    sget v0, Lorg/telegram/messenger/R$string;->DebugMenuDualOffToast:I

    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :cond_2f
    const/16 v2, 0x17

    if-ne v0, v2, :cond_30

    .line 4398
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSurfaceInStories()V

    .line 4399
    :goto_b
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 4400
    iget-object v0, v8, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_30
    const/16 v1, 0x18

    if-ne v0, v1, :cond_31

    .line 4403
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePhotoViewerBlur()V

    :catch_0
    :cond_31
    :goto_c
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 9

    .line 4122
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 4123
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->presenter:Lcom/iMe/feature/profile/ProfilePresenter;

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "onLongItemClick"

    .line 4124
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v2

    .line 4127
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 4128
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance p2, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileActivity$16;)V

    invoke-static {p1, v1, p2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showChatProfileTelegramIdDialog(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    return v2

    .line 4135
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ne p2, v0, :cond_20

    .line 4136
    iget p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$16;->pressCount:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_4

    .line 4137
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 4417
    :cond_3
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "DebugMenuLongPress"

    sget v0, Lorg/telegram/messenger/R$string;->DebugMenuLongPress:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_17

    :catch_0
    move-exception p1

    .line 4419
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 4138
    :cond_4
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4139
    sget v0, Lorg/telegram/messenger/R$string;->DebugMenu:I

    const-string v3, "DebugMenu"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/16 v0, 0x19

    new-array v3, v0, [Ljava/lang/CharSequence;

    .line 4141
    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuImportContacts:I

    const-string v5, "DebugMenuImportContacts"

    .line 4142
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuReloadContacts:I

    const-string v5, "DebugMenuReloadContacts"

    .line 4143
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuResetContacts:I

    const-string v5, "DebugMenuResetContacts"

    .line 4144
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2

    const/4 v4, 0x3

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuResetDialogs:I

    const-string v6, "DebugMenuResetDialogs"

    .line 4145
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 4146
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    move-object v5, v6

    goto :goto_2

    :cond_5
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_6

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuDisableLogs:I

    const-string v7, "DebugMenuDisableLogs"

    goto :goto_1

    :cond_6
    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuEnableLogs:I

    const-string v7, "DebugMenuEnableLogs"

    :goto_1
    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 4147
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    if-eqz v5, :cond_7

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuDisableCamera:I

    const-string v7, "DebugMenuDisableCamera"

    goto :goto_3

    :cond_7
    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuEnableCamera:I

    const-string v7, "DebugMenuEnableCamera"

    :goto_3
    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuClearMediaCache:I

    const-string v7, "DebugMenuClearMediaCache"

    .line 4148
    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuCallSettings:I

    const-string v7, "DebugMenuCallSettings"

    .line 4149
    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    aput-object v6, v3, v4

    const/16 v4, 0x9

    .line 4151
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v5, :cond_9

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isStandaloneApp()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v6

    goto :goto_5

    :cond_9
    :goto_4
    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuCheckAppUpdate:I

    const-string v7, "DebugMenuCheckAppUpdate"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    aput-object v5, v3, v4

    const/16 v4, 0xa

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuReadAllDialogs:I

    const-string v7, "DebugMenuReadAllDialogs"

    .line 4152
    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    .line 4153
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_b

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    if-eqz v5, :cond_a

    const-string v5, "Enable voip audio effects"

    goto :goto_6

    :cond_a
    const-string v5, "Disable voip audio effects"

    goto :goto_6

    :cond_b
    move-object v5, v6

    :goto_6
    aput-object v5, v3, v4

    const/16 v4, 0xc

    .line 4154
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_c

    const-string v7, "Clean app update"

    goto :goto_7

    :cond_c
    move-object v7, v6

    :goto_7
    aput-object v7, v3, v4

    const/16 v4, 0xd

    if-eqz v5, :cond_d

    const-string v7, "Reset suggestions"

    goto :goto_8

    :cond_d
    move-object v7, v6

    :goto_8
    aput-object v7, v3, v4

    const/16 v4, 0xe

    if-eqz v5, :cond_e

    .line 4156
    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuClearWebViewCache:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_e
    move-object v5, v6

    :goto_9
    aput-object v5, v3, v4

    const/16 v4, 0xf

    .line 4157
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v5, v7, :cond_10

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v5, :cond_f

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuDisableWebViewDebug:I

    goto :goto_a

    :cond_f
    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuEnableWebViewDebug:I

    :goto_a
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_10
    move-object v5, v6

    :goto_b
    aput-object v5, v3, v4

    const/16 v4, 0x10

    .line 4158
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletInternal()Z

    move-result v5

    if-eqz v5, :cond_12

    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_12

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    if-eqz v5, :cond_11

    const-string v5, "Enable tablet mode"

    goto :goto_c

    :cond_11
    const-string v5, "Disable tablet mode"

    goto :goto_c

    :cond_12
    move-object v5, v6

    :goto_c
    aput-object v5, v3, v4

    const/16 v4, 0x11

    .line 4159
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_14

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    if-eqz v5, :cond_13

    sget v5, Lorg/telegram/messenger/R$string;->FloatingDebugDisable:I

    goto :goto_d

    :cond_13
    sget v5, Lorg/telegram/messenger/R$string;->FloatingDebugEnable:I

    :goto_d
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_14
    move-object v5, v6

    :goto_e
    aput-object v5, v3, v4

    const/16 v4, 0x12

    .line 4160
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_15

    const-string v8, "Force remove premium suggestions"

    goto :goto_f

    :cond_15
    move-object v8, v6

    :goto_f
    aput-object v8, v3, v4

    if-eqz v5, :cond_16

    const-string v4, "Share device info"

    goto :goto_10

    :cond_16
    move-object v4, v6

    :goto_10
    aput-object v4, v3, v7

    const/16 v4, 0x14

    const-string v7, "Force performance class"

    aput-object v7, v3, v4

    const/16 v4, 0x15

    if-eqz v5, :cond_18

    .line 4163
    invoke-static {}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCameraDebug()Z

    move-result v5

    if-nez v5, :cond_18

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    if-nez v5, :cond_17

    const-string v5, "Force big camera for round"

    goto :goto_11

    :cond_17
    const-string v5, "Disable big camera for round"

    goto :goto_11

    :cond_18
    move-object v5, v6

    :goto_11
    aput-object v5, v3, v4

    const/16 v4, 0x16

    .line 4164
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "DebugMenuDualOff"

    goto :goto_12

    :cond_19
    const-string v5, "DebugMenuDualOn"

    :goto_12
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x17

    .line 4165
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v5, :cond_1b

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    if-eqz v5, :cond_1a

    const-string v5, "back to TextureView in stories"

    goto :goto_13

    :cond_1a
    const-string v5, "use SurfaceView in stories"

    goto :goto_13

    :cond_1b
    move-object v5, v6

    :goto_13
    aput-object v5, v3, v4

    const/16 v4, 0x18

    .line 4166
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_1d

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    if-eqz v5, :cond_1c

    const-string v5, "do not blur in photoviewer"

    goto :goto_14

    :cond_1c
    const-string v5, "blur in photoviewer"

    goto :goto_14

    :cond_1d
    move-object v5, v6

    :goto_14
    aput-object v5, v3, v4

    .line 4169
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$16;->val$context:Landroid/content/Context;

    new-instance v5, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v4}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$16;Landroid/content/Context;)V

    invoke-virtual {p1, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4407
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$16;->debugMenuTelegramItemsCount:I

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 4409
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/iMe/ui/debug/DebugPresenter;

    if-eqz v0, :cond_1e

    sget v3, Lorg/telegram/messenger/R$string;->debug_option_choose_wallet_environment:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/iMe/ui/debug/DebugPresenter;->getCurrentWalletEnvironment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1e
    move-object v0, v6

    :goto_15
    aput-object v0, p2, v1

    .line 4410
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->debugPresenter:Lcom/iMe/ui/debug/DebugPresenter;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/iMe/ui/debug/DebugPresenter;->isStageEnvironment()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget v0, Lorg/telegram/messenger/R$string;->debug_option_reset_airdrop:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_1f
    move-object v0, v6

    :goto_16
    aput-object v0, p2, v2

    .line 4408
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->addItems([Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4413
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4414
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_17
    return v2

    .line 4423
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-lt p2, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p2, v0, :cond_22

    .line 4425
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15600(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 4426
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15700(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$15600(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_18

    .line 4428
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15700(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 4430
    :goto_18
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, p2, v2, p1}, Lorg/telegram/ui/ProfileActivity;->onMemberClick(Lorg/telegram/tgnet/TLRPC$ChatParticipant;ZLandroid/view/View;)Z

    move-result p1

    return p1

    .line 4432
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

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v0, p2, p1, v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;ILandroid/view/View;FF)Z

    move-result p1

    return p1
.end method
