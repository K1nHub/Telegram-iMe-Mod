.class public Lorg/telegram/ui/WebviewActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;
    }
.end annotation


# instance fields
.field private currentBot:Ljava/lang/String;

.field private currentDialogId:J

.field private currentGame:Ljava/lang/String;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentUrl:Ljava/lang/String;

.field private linkToCopy:Ljava/lang/String;

.field private loadStats:Z

.field private progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private short_param:Ljava/lang/String;

.field private type:I

.field public typingRunnable:Ljava/lang/Runnable;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$fj2g_zd-lmFb2c1sx_HpUVeMo_c(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/WebviewActivity;->lambda$reloadStats$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tu4ZU27I3IUFbATK4sEco4GnAWI(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WebviewActivity;->lambda$reloadStats$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 107
    new-instance v0, Lorg/telegram/ui/WebviewActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/WebviewActivity$1;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity;->currentUrl:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lorg/telegram/ui/WebviewActivity;->currentGame:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lorg/telegram/ui/WebviewActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 124
    iput-object p4, p0, Lorg/telegram/ui/WebviewActivity;->short_param:Ljava/lang/String;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "?game="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity;->linkToCopy:Ljava/lang/String;

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lorg/telegram/ui/WebviewActivity;->type:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/WebviewActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/WebviewActivity;->linkToCopy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/WebviewActivity;)I
    .locals 0

    .line 60
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/WebviewActivity;->currentUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/WebviewActivity;->short_param:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/WebviewActivity;)I
    .locals 0

    .line 60
    iget p0, p0, Lorg/telegram/ui/WebviewActivity;->type:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/WebviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/WebviewActivity;->reloadStats(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method private synthetic lambda$reloadStats$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lorg/telegram/ui/WebviewActivity;->loadStats:Z

    if-eqz p1, :cond_0

    .line 358
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_statsURL;

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_statsURL;->url:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reloadStats$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 355
    new-instance p2, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openGameInBrowser(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, ""

    .line 367
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "botshare"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tgShareScoreUrl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "tgb://share_game_score?hash="

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_1

    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 372
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    .line 374
    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v7

    aget-char v7, v2, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    .line 378
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 382
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x3d

    .line 383
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_5

    const/16 v6, 0x3f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    goto :goto_2

    .line 386
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 389
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 384
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 393
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "_date"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v6, v5

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 395
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v5

    invoke-direct {v2, v5}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 396
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "_m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_link"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "?game="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    invoke-static {p2, p0, v3}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 401
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 403
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private reloadStats(Ljava/lang/String;)V
    .locals 4

    .line 347
    iget-boolean v0, p0, Lorg/telegram/ui/WebviewActivity;->loadStats:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lorg/telegram/ui/WebviewActivity;->loadStats:Z

    .line 351
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStatsURL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStatsURL;-><init>()V

    .line 352
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/WebviewActivity;->currentDialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStatsURL;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 353
    :goto_0
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStatsURL;->params:Ljava/lang/String;

    .line 354
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStatsURL;->dark:Z

    .line 355
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/WebviewActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static supportWebview()Z
    .locals 3

    .line 336
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 337
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "samsung"

    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GT-I9500"

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/WebviewActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/WebviewActivity$2;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 178
    sget v2, Lorg/telegram/messenger/R$drawable;->share:I

    const/16 v3, 0x36

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 179
    iget v2, p0, Lorg/telegram/ui/WebviewActivity;->type:I

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 180
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 181
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v6, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    const-string v7, "OpenInExternalApp"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->currentGame:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    if-ne v2, v1, :cond_1

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "player_actionBar"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "player_actionBarItems"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "player_actionBarSelector"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "player_actionBarTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "player_actionBarSubtitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->Statistics:I

    const-string v6, "Statistics"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x3

    invoke-direct {v0, p1, v2}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 210
    :cond_1
    :goto_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    .line 211
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 214
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 215
    check-cast v0, Landroid/widget/FrameLayout;

    .line 216
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v6, 0x0

    if-lt p1, v2, :cond_2

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    const/16 v2, 0x15

    if-lt p1, v2, :cond_3

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 222
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 223
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v2, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 224
    iget p1, p0, Lorg/telegram/ui/WebviewActivity;->type:I

    if-nez p1, :cond_3

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    invoke-direct {v1, p0, v6}, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/ui/WebviewActivity$1;)V

    const-string v2, "TelegramWebviewProxy"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/telegram/ui/WebviewActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/WebviewActivity$3;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    iget v2, v0, Lorg/telegram/ui/WebviewActivity;->type:I

    if-nez v2, :cond_0

    .line 411
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "windowBackgroundWhite"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v18, "actionBarDefaultTitle"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v18, "actionBarDefaultSubmenuBackground"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v10, "actionBarDefaultSubmenuItem"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v13, v3, v4

    const-string v18, "actionBarDefaultSubmenuItemIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x0

    const-string v10, "contextProgressInner2"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v13, 0x0

    const-string v18, "contextProgressOuter2"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 424
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "windowBackgroundWhite"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "player_actionBar"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "player_actionBarItems"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v18, "player_actionBarTitle"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const-string v10, "player_actionBarTitle"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v18, "player_actionBarSelector"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v10, "actionBarDefaultSubmenuBackground"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v18, "actionBarDefaultSubmenuItem"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v5, v3

    const-string v10, "actionBarDefaultSubmenuItemIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v13, 0x0

    const-string v18, "contextProgressInner4"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x0

    const-string v10, "contextProgressOuter4"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 138
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 141
    iput-object v2, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 150
    iput-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 318
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/WebviewActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
