.class public Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;
.super Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;
.source "SessionReleaseInstaller.java"


# instance fields
.field private mInstallStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field private mSessionId:I

.field private mUserConfirmationRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "installerHandler",
            "listener"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;)V

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    return-void
.end method

.method private abandonSession()V
    .locals 3

    .line 279
    iget v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v2, "Abandon PackageInstaller session."

    .line 280
    invoke-static {v0, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 282
    iget v2, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 283
    iput v1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->abandonSession()V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;Landroid/net/Uri;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->startInstallSession(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->cancelIfNoProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mUserConfirmationRequested:Z

    return p0
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->onCancel()V

    return-void
.end method

.method private static addFileToInstallSession(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInstaller$Session;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileDescriptor",
            "session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    const-string v1, "AppCenterPackageInstallerStream"

    const-wide/16 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0

    .line 221
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 p0, 0x10000

    :try_start_1
    new-array p0, p0, [B

    .line 224
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 225
    invoke-virtual {v0, p0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 220
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
.end method

.method private cancelIfNoProgress()V
    .locals 3

    .line 183
    new-instance v0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$3;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$3;-><init>(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private cleanPreviousSessions()V
    .locals 5

    .line 288
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 289
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abandon leaked session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppCenterDistribute"

    invoke-static {v4, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createSession(Landroid/os/ParcelFileDescriptor;)Landroid/content/pm/PackageInstaller$Session;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 259
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 260
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 261
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p1

    iput p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    .line 264
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "AppCenterDistribute"

    const-string v2, "Cannot open session, trying to cleanup previous ones."

    .line 268
    invoke-static {v1, v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->cleanPreviousSessions()V

    .line 274
    iget p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p1

    return-object p1
.end method

.method private getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized registerListeners()V
    .locals 3

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mInstallStatusReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Register receiver for installing a new release."

    .line 233
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/microsoft/appcenter/distribute/install/session/InstallStatusReceiver;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/install/session/InstallStatusReceiver;-><init>(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mInstallStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/microsoft/appcenter/distribute/install/session/InstallStatusReceiver;->getInstallerReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    if-nez v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/microsoft/appcenter/distribute/install/session/PackageInstallerListener;

    invoke-direct {v1, p0}, Lcom/microsoft/appcenter/distribute/install/session/PackageInstallerListener;-><init>(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V

    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startInstallSession(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localUri"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 202
    :try_start_1
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->createSession(Landroid/os/ParcelFileDescriptor;)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    .line 203
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->addFileToInstallSession(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInstaller$Session;)V

    .line 206
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/distribute/install/session/InstallStatusReceiver;->getInstallStatusIntentSender(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 208
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 209
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_0

    .line 199
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    .line 211
    :try_start_5
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    :cond_1
    const-string v0, "Cannot initiate PackageInstaller.Session"

    .line 213
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 215
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized unregisterListeners()V
    .locals 3

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mInstallStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v2, "Unregister receiver for installing a new release."

    .line 246
    invoke-static {v0, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mInstallStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mInstallStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 252
    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 253
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-super {p0}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->clear()V

    .line 111
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->unregisterListeners()V

    .line 112
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->abandonSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public install(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localUri"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->registerListeners()V

    .line 94
    new-instance v0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;-><init>(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized onInstallCancel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    iget v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 171
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 173
    :try_start_1
    iput p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    .line 174
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onInstallConfirmation(ILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionId",
            "confirmIntent"
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    iget v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 138
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "AppCenterDistribute"

    const-string v0, "Ask confirmation to install a new release."

    .line 140
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mUserConfirmationRequested:Z

    .line 144
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    :try_start_2
    new-instance p2, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$2;

    invoke-direct {p2, p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$2;-><init>(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V

    invoke-interface {p1, p2}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onInstallError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionId",
            "message"
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    iget v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 163
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 165
    :try_start_1
    iput p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I

    .line 166
    invoke-virtual {p0, p2}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->onError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onInstallProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iget v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 123
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 133
    :try_start_1
    iput-boolean p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->mUserConfirmationRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PackageInstaller"

    return-object v0
.end method
