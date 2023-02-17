.class public Lorg/telegram/messenger/FileUploadOperation;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;,
        Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    }
.end annotation


# static fields
.field private static final initialRequestsCount:I = 0x8

.field private static final initialRequestsSlowNetworkCount:I = 0x1

.field private static final maxUploadingKBytes:I = 0x800

.field private static final maxUploadingSlowNetworkKBytes:I = 0x20

.field private static final minUploadChunkSize:I = 0x80

.field private static final minUploadChunkSlowNetworkSize:I = 0x20


# instance fields
.field private availableSize:J

.field private cachedResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;",
            ">;"
        }
    .end annotation
.end field

.field private currentAccount:I

.field private currentFileId:J

.field private currentPartNum:I

.field private currentType:I

.field private currentUploadRequetsCount:I

.field private delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

.field private estimatedSize:J

.field private fileKey:Ljava/lang/String;

.field private fingerprint:I

.field private forceSmallFile:Z

.field private freeRequestIvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private isBigFile:Z

.field private isEncrypted:Z

.field private isLastPart:Z

.field private iv:[B

.field private ivChange:[B

.field private key:[B

.field protected lastProgressUpdateTime:J

.field private lastSavedPartNum:I

.field private maxRequestsCount:I

.field private nextPartFirst:Z

.field private operationGuid:I

.field private preferences:Landroid/content/SharedPreferences;

.field private readBuffer:[B

.field private readBytesCount:J

.field private requestNum:I

.field private requestTokens:Landroid/util/SparseIntArray;

.field private saveInfoTimes:I

.field private slowNetwork:Z

.field private started:Z

.field private state:I

.field private stream:Ljava/io/RandomAccessFile;

.field private totalFileSize:J

.field private totalPartsCount:I

.field private uploadChunkSize:I

.field private uploadFirstPartLater:Z

.field private uploadStartTime:I

.field private uploadedBytesCount:J

.field private uploadingFilePath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$06_JEIqHeimac78YhLgoyYozb2A(Lorg/telegram/messenger/FileUploadOperation;II[BIIIJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/FileUploadOperation;->lambda$startUploadRequest$4(II[BIIIJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CamBpsxKlCSpWkZfCvCwResRsuM(Lorg/telegram/messenger/FileUploadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileUploadOperation;->lambda$onNetworkChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Daq7SgT_O-L9IZy4IQj2aE4Crf4(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->lambda$cancel$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$runCwhotZAORV0DsK4gN0v7nL14(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->lambda$startUploadRequest$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$tdtHPNO5zd9bctyhALepHUQhsFU(Lorg/telegram/messenger/FileUploadOperation;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileUploadOperation;->lambda$checkNewDataAvailable$3(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vO6NngbE3gA80E17-bIfysrWuNw(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->lambda$startUploadRequest$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$wRErGNQa1eH0ZzhxmnHvKUErEU4(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZJI)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 48
    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    .line 92
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    .line 93
    iput-object p2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    .line 94
    iput-boolean p3, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    .line 95
    iput-wide p4, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    .line 96
    iput p6, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    const-wide/16 p1, 0x0

    cmp-long p6, p4, p1

    if-eqz p6, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 97
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    return-void
.end method

.method private calcTotalPartsCount()V
    .locals 7

    .line 233
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 234
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_0

    .line 235
    iget-wide v3, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v5, v0

    sub-long/2addr v3, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    goto :goto_0

    .line 237
    :cond_0
    iget-wide v3, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/16 v5, 0x400

    sub-long/2addr v3, v5

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    goto :goto_0

    .line 240
    :cond_1
    iget-wide v3, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    :goto_0
    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 180
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "uploadinfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ivc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->unlockFile(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$cancel$2()V
    .locals 4

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 171
    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkNewDataAvailable$3(JJ)V
    .locals 5

    .line 203
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 204
    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    .line 205
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 206
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->calcTotalPartsCount()V

    .line 207
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p1, p3

    .line 211
    :goto_0
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->availableSize:J

    .line 212
    iget p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    iget p2, p0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge p1, p2, :cond_2

    .line 213
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onNetworkChanged$1(Z)V
    .locals 4

    .line 131
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eq v0, p1, :cond_3

    .line 132
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    .line 133
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "network changed to slow = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 137
    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 140
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    .line 141
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 142
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    .line 143
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    .line 144
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 146
    iput-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 147
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 149
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 150
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 151
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 152
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    .line 153
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    .line 154
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 156
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    .line 157
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    if-ge p1, v2, :cond_3

    .line 158
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 3

    .line 115
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "uploadinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    .line 116
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectionSlow()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    .line 117
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start upload on slow network = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    if-ge v2, v0, :cond_2

    .line 121
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$startUploadRequest$4(II[BIIIJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 21

    move-object/from16 v6, p0

    move/from16 v0, p2

    move-object/from16 v7, p3

    move/from16 v8, p6

    move-object/from16 v1, p9

    .line 530
    iget v2, v6, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 533
    iget v2, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v2

    .line 534
    :goto_0
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    const-string v9, "m4a"

    const-string v11, "mp3"

    const/high16 v13, 0x4000000

    const/4 v14, 0x2

    const/high16 v15, 0x1000000

    const/high16 v4, 0x2000000

    const/high16 v5, 0x3000000

    const/4 v12, 0x3

    if-ne v3, v5, :cond_3

    .line 535
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    move-object/from16 v16, v11

    int-to-long v10, v0

    invoke-virtual {v3, v2, v12, v10, v11}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_2
    :goto_1
    move-object/from16 v10, v16

    goto :goto_2

    :cond_3
    move-object/from16 v16, v11

    if-ne v3, v4, :cond_4

    .line 537
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v10, v0

    invoke-virtual {v3, v2, v14, v10, v11}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto :goto_1

    :cond_4
    if-ne v3, v15, :cond_5

    .line 539
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v10, v0

    const/4 v0, 0x4

    invoke-virtual {v3, v2, v0, v10, v11}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto :goto_1

    :cond_5
    if-ne v3, v13, :cond_2

    .line 541
    iget-object v3, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, v16

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 542
    :cond_6
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v4, v0

    const/4 v0, 0x7

    invoke-virtual {v3, v2, v0, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto :goto_2

    :cond_7
    move-object/from16 v10, v16

    .line 544
    :cond_8
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v4, v0

    const/4 v0, 0x5

    invoke-virtual {v3, v2, v0, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :goto_2
    if-eqz v7, :cond_9

    .line 548
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_9
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 551
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_1e

    .line 552
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    return-void

    .line 555
    :cond_a
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    move/from16 v2, p5

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 557
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v17, 0x0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_b

    .line 558
    iget-wide v2, v6, Lorg/telegram/messenger/FileUploadOperation;->availableSize:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_3

    .line 560
    :cond_b
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    :goto_3
    move-wide/from16 v19, v0

    .line 562
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-wide v2, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    move-object/from16 v1, p0

    const/high16 v11, 0x2000000

    const/high16 v13, 0x3000000

    const/4 v15, 0x1

    move-wide/from16 v4, v19

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;JJ)V

    .line 563
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    sub-int/2addr v0, v15

    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 564
    iget-boolean v1, v6, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    if-eqz v1, :cond_14

    if-nez v0, :cond_14

    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-ne v1, v15, :cond_14

    .line 565
    iput v12, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 566
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const-string v1, ""

    if-nez v0, :cond_d

    .line 568
    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_c

    .line 569
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;-><init>()V

    goto :goto_4

    .line 571
    :cond_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFile;-><init>()V

    .line 572
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->md5_checksum:Ljava/lang/String;

    .line 574
    :goto_4
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->parts:I

    .line 575
    iget-wide v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    .line 576
    iget-object v1, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->name:Ljava/lang/String;

    .line 577
    iget-object v1, v6, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, p0

    move-object/from16 p3, v0

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-interface/range {p1 .. p6}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    .line 578
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto :goto_6

    .line 581
    :cond_d
    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_e

    .line 582
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;-><init>()V

    goto :goto_5

    .line 584
    :cond_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;-><init>()V

    .line 585
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->md5_checksum:Ljava/lang/String;

    .line 587
    :goto_5
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->parts:I

    .line 588
    iget-wide v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    .line 589
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->key_fingerprint:I

    .line 590
    iget-object v1, v6, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    const/4 v2, 0x0

    iget-object v3, v6, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    iget-object v4, v6, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    move-object/from16 p1, v1

    move-object/from16 p2, p0

    move-object/from16 p3, v2

    move-object/from16 p4, v0

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-interface/range {p1 .. p6}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    .line 591
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    .line 593
    :goto_6
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    if-ne v0, v13, :cond_f

    .line 594
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v12, v15}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_9

    :cond_f
    if-ne v0, v11, :cond_10

    .line 596
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v14, v15}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_9

    :cond_10
    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_11

    .line 598
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v15}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_9

    :cond_11
    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_1f

    .line 600
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 601
    :cond_12
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v15}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_9

    .line 603
    :cond_13
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v15}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_9

    .line 606
    :cond_14
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge v0, v1, :cond_1f

    .line 607
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v2, v0, v17

    if-nez v2, :cond_1d

    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v0, :cond_1d

    .line 608
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_15

    .line 609
    iput v1, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    .line 611
    :cond_15
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    if-ne v8, v0, :cond_1a

    add-int/2addr v0, v15

    .line 612
    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    move-wide/from16 v0, p7

    .line 616
    :goto_7
    iget-object v2, v6, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    if-eqz v2, :cond_16

    .line 617
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$000(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)J

    move-result-wide v0

    .line 618
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$100(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v7

    .line 619
    iget-object v2, v6, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 620
    iget v2, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    add-int/2addr v2, v15

    iput v2, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    goto :goto_7

    .line 622
    :cond_16
    iget-boolean v2, v6, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v2, :cond_17

    const-wide/32 v3, 0x100000

    rem-long v3, v0, v3

    cmp-long v5, v3, v17

    if-eqz v5, :cond_18

    :cond_17
    if-nez v2, :cond_1c

    iget v2, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    if-nez v2, :cond_1c

    .line 623
    :cond_18
    iget-object v2, v6, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_uploaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 625
    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_19

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v6, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ivc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 628
    :cond_19
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8

    .line 631
    :cond_1a
    new-instance v0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;-><init>(Lorg/telegram/messenger/FileUploadOperation$1;)V

    move-wide/from16 v2, p7

    .line 632
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$002(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;J)J

    if-eqz v7, :cond_1b

    const/16 v2, 0x20

    new-array v3, v2, [B

    .line 634
    invoke-static {v0, v3}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$102(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;[B)[B

    .line 635
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$100(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v3

    invoke-static {v7, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    :cond_1b
    iget-object v1, v6, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    :cond_1c
    :goto_8
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    add-int/2addr v0, v15

    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    .line 641
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    goto :goto_9

    :cond_1e
    const/4 v0, 0x4

    .line 644
    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 645
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, v6}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 646
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    :cond_1f
    :goto_9
    return-void
.end method

.method private synthetic lambda$startUploadRequest$5()V
    .locals 2

    .line 649
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge v0, v1, :cond_0

    .line 650
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startUploadRequest$6()V
    .locals 2

    .line 648
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startUploadRequest()V
    .locals 27

    move-object/from16 v11, p0

    .line 249
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 259
    :cond_0
    :try_start_0
    iput-boolean v1, v11, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    .line 260
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    const/16 v2, 0x400

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x20

    const/4 v13, 0x0

    if-nez v0, :cond_1e

    .line 261
    new-instance v7, Ljava/io/File;

    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v8, "trying to upload internal file"

    if-nez v0, :cond_1d

    .line 265
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v0, v7, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :try_start_2
    const-class v0, Ljava/io/FileDescriptor;

    const-string v9, "getInt$"

    new-array v10, v13, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 269
    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 270
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 274
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1c

    .line 279
    iget-wide v8, v11, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v0, v8, v4

    if-eqz v0, :cond_1

    .line 280
    iput-wide v8, v11, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    goto :goto_1

    .line 282
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 284
    :goto_1
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->forceSmallFile:Z

    if-nez v0, :cond_2

    iget-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v9, 0xa00000

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    .line 285
    iput-boolean v1, v11, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    .line 288
    :cond_2
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->uploadMaxFileParts:I

    int-to-long v7, v0

    .line 289
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v9, v11, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v14, 0x7d000000

    cmp-long v0, v9, v14

    if-lez v0, :cond_3

    .line 290
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->uploadMaxFilePartsPremium:I

    int-to-long v7, v0

    .line 292
    :cond_3
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_4

    const-wide/16 v9, 0x20

    goto :goto_2

    :cond_4
    const-wide/16 v9, 0x80

    :goto_2
    iget-wide v14, v11, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/16 v12, 0x400

    mul-long v7, v7, v12

    add-long/2addr v14, v7

    const-wide/16 v17, 0x1

    sub-long v14, v14, v17

    div-long/2addr v14, v7

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 293
    rem-int v0, v2, v0

    const/16 v7, 0x40

    if-eqz v0, :cond_6

    const/16 v0, 0x40

    .line 295
    :goto_3
    iget v8, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-le v8, v0, :cond_5

    mul-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 298
    :cond_5
    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 300
    :cond_6
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x20

    goto :goto_4

    :cond_7
    const/16 v0, 0x800

    :goto_4
    iget v8, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    div-int/2addr v0, v8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    .line 302
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_8

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    iget v8, v11, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 304
    :goto_5
    iget v8, v11, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge v0, v8, :cond_8

    .line 305
    iget-object v8, v11, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    new-array v9, v6, [B

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 309
    :cond_8
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    mul-int/lit16 v0, v0, 0x400

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 310
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->calcTotalPartsCount()V

    .line 311
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    new-array v0, v0, [B

    iput-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v8, :cond_9

    const-string v8, "enc"

    goto :goto_6

    :cond_9
    const-string v8, ""

    :goto_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    .line 314
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    div-long v14, v14, v17

    long-to-int v0, v14

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    .line 317
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_16

    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v0, :cond_16

    iget-wide v14, v11, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v0, v14, v4

    if-nez v0, :cond_16

    iget-wide v14, v11, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    cmp-long v0, v8, v14

    if-nez v0, :cond_16

    .line 318
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v11, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 319
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 320
    iget-object v8, v11, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_uploaded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 321
    iget-boolean v10, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v10, :cond_b

    .line 322
    iget-object v10, v11, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_iv"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 323
    iget-object v14, v11, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_key"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_a

    if-eqz v2, :cond_a

    .line 325
    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 326
    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 327
    iget-object v10, v11, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    if-eqz v10, :cond_a

    if-eqz v2, :cond_a

    array-length v10, v10

    if-ne v10, v6, :cond_a

    array-length v10, v2

    if-ne v10, v6, :cond_a

    new-array v10, v6, [B

    .line 328
    iput-object v10, v11, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v14, 0x0

    .line 329
    invoke-static {v2, v14, v10, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_16

    if-eqz v0, :cond_16

    .line 338
    iget-boolean v10, v11, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v10, :cond_c

    iget v14, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    const v15, 0x15180

    sub-int/2addr v14, v15

    if-ge v0, v14, :cond_c

    :goto_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    if-nez v10, :cond_d

    int-to-float v14, v0

    .line 340
    iget v15, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    int-to-float v15, v15

    const v18, 0x45a8c000    # 5400.0f

    sub-float v15, v15, v18

    cmpg-float v14, v14, v15

    if-gez v14, :cond_d

    goto :goto_9

    :cond_d
    :goto_a
    if-eqz v0, :cond_17

    cmp-long v0, v8, v4

    if-lez v0, :cond_16

    .line 345
    iput-wide v8, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 346
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v14, v0

    div-long v14, v8, v14

    long-to-int v0, v14

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    if-nez v10, :cond_13

    const/4 v0, 0x0

    :goto_b
    int-to-long v8, v0

    .line 348
    iget-wide v14, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v10, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v12, v10

    div-long/2addr v14, v12

    cmp-long v10, v8, v14

    if-gez v10, :cond_17

    .line 349
    iget-object v8, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    .line 351
    iget-boolean v9, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v9, :cond_e

    rem-int/lit8 v9, v8, 0x10

    if-eqz v9, :cond_e

    .line 352
    rem-int/lit8 v9, v8, 0x10

    rsub-int/lit8 v9, v9, 0x10

    const/4 v10, 0x0

    add-int/2addr v9, v10

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    .line 354
    :goto_c
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v12, v8, v9

    invoke-direct {v10, v12}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 355
    iget v13, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-ne v8, v13, :cond_f

    iget v13, v11, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iget v14, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/2addr v14, v1

    if-ne v13, v14, :cond_10

    .line 356
    :cond_f
    iput-boolean v1, v11, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 358
    :cond_10
    iget-object v13, v11, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 359
    iget-boolean v8, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v9, :cond_11

    .line 361
    invoke-virtual {v10, v14}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x0

    goto :goto_d

    .line 363
    :cond_11
    iget-object v8, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    iget-object v13, v11, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v13

    move/from16 v26, v12

    invoke-static/range {v20 .. v26}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 365
    :cond_12
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v12, 0x400

    goto :goto_b

    .line 368
    :cond_13
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 369
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_17

    .line 370
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_ivc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 372
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    if-eqz v0, :cond_14

    .line 373
    array-length v0, v0

    if-eq v0, v6, :cond_17

    .line 375
    :cond_14
    iput-wide v4, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    const/4 v2, 0x0

    .line 376
    iput v2, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto :goto_e

    .line 380
    :cond_15
    iput-wide v4, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    const/4 v2, 0x0

    .line 381
    iput v2, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    :cond_16
    :goto_e
    const/4 v2, 0x1

    :cond_17
    if-eqz v2, :cond_19

    .line 396
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_18

    new-array v0, v6, [B

    .line 397
    iput-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    new-array v2, v6, [B

    .line 398
    iput-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    new-array v2, v6, [B

    .line 399
    iput-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 400
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 401
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 402
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v8, 0x0

    invoke-static {v0, v8, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_18
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    iput-wide v8, v11, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 405
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v0, :cond_19

    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_19

    iget-wide v8, v11, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_19

    .line 406
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    .line 410
    :cond_19
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_1a

    :try_start_4
    const-string v0, "MD5"

    .line 412
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-array v2, v7, [B

    .line 414
    iget-object v7, v11, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const/4 v8, 0x0

    invoke-static {v7, v8, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iget-object v7, v11, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-static {v7, v8, v2, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v2, 0x0

    :goto_f
    const/4 v7, 0x4

    if-ge v2, v7, :cond_1a

    .line 418
    iget v7, v11, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    aget-byte v8, v0, v2

    add-int/lit8 v9, v2, 0x4

    aget-byte v9, v0, v9

    xor-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    mul-int/lit8 v9, v2, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v11, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catch_0
    move-exception v0

    .line 421
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 424
    :cond_1a
    iget-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iput-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 425
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    .line 427
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-eqz v0, :cond_1e

    .line 428
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_1b

    .line 429
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget v2, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 430
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v7, v0

    iput-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    goto :goto_10

    .line 432
    :cond_1b
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    const-wide/16 v7, 0x400

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 433
    iput-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 435
    :goto_10
    iput v1, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto :goto_11

    .line 277
    :cond_1c
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1d
    new-instance v0, Lorg/telegram/messenger/FileLog$IgnoreSentException;

    invoke-direct {v0, v8}, Lorg/telegram/messenger/FileLog$IgnoreSentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1e
    :goto_11
    iget-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1f

    .line 440
    iget-wide v7, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    iget-wide v9, v11, Lorg/telegram/messenger/FileUploadOperation;->availableSize:J

    cmp-long v0, v7, v9

    if-lez v0, :cond_1f

    return-void

    .line 445
    :cond_1f
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-eqz v0, :cond_21

    .line 446
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 447
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_20

    .line 448
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v8, 0x0

    goto :goto_12

    .line 450
    :cond_20
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/16 v7, 0x400

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 452
    :goto_12
    iput v8, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto :goto_13

    .line 454
    :cond_21
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    :goto_13
    move v7, v0

    const/4 v0, -0x1

    if-ne v7, v0, :cond_22

    return-void

    .line 460
    :cond_22
    iget-boolean v2, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v2, :cond_23

    rem-int/lit8 v2, v7, 0x10

    if-eqz v2, :cond_23

    .line 461
    rem-int/lit8 v2, v7, 0x10

    rsub-int/lit8 v2, v2, 0x10

    const/4 v8, 0x0

    add-int/2addr v2, v8

    goto :goto_14

    :cond_23
    const/4 v2, 0x0

    .line 463
    :goto_14
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v9, v7, v2

    invoke-direct {v8, v9}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 464
    iget-boolean v10, v11, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v10, :cond_24

    iget v10, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-ne v7, v10, :cond_24

    iget-wide v12, v11, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v10, v12, v4

    if-nez v10, :cond_26

    iget v10, v11, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iget v12, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/2addr v12, v1

    if-ne v10, v12, :cond_26

    .line 465
    :cond_24
    iget-boolean v10, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-eqz v10, :cond_25

    .line 466
    iput-boolean v1, v11, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    const/4 v10, 0x0

    .line 467
    iput-boolean v10, v11, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    goto :goto_15

    .line 469
    :cond_25
    iput-boolean v1, v11, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 472
    :cond_26
    :goto_15
    iget-object v10, v11, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 473
    iget-boolean v10, v11, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v10, :cond_28

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_27

    .line 475
    invoke-virtual {v8, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x0

    goto :goto_16

    .line 477
    :cond_27
    iget-object v2, v8, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, v11, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    iget-object v10, v11, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v10

    move/from16 v23, v9

    invoke-static/range {v17 .. v23}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 478
    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 479
    iget-object v9, v11, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v9, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget-object v6, v11, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v6, v2

    goto :goto_17

    :cond_28
    move-object v6, v3

    .line 484
    :goto_17
    iget-boolean v2, v11, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v2, :cond_2a

    .line 485
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;-><init>()V

    .line 486
    iget v3, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    .line 487
    iget-wide v9, v11, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v9, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    .line 488
    iget-wide v9, v11, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v12, v9, v4

    if-eqz v12, :cond_29

    .line 489
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    goto :goto_18

    .line 491
    :cond_29
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    .line 493
    :goto_18
    iput-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v18, v2

    move v8, v3

    goto :goto_19

    .line 496
    :cond_2a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;-><init>()V

    .line 497
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_part:I

    .line 498
    iget-wide v3, v11, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_id:J

    .line 499
    iput-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move v8, v0

    move-object/from16 v18, v2

    .line 502
    :goto_19
    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, v11, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-eqz v0, :cond_2b

    const/4 v12, 0x0

    .line 503
    iput-boolean v12, v11, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    .line 504
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    sub-int/2addr v0, v1

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 505
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-wide v2, v11, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1a

    :cond_2b
    const/4 v12, 0x0

    .line 507
    :goto_1a
    iget-wide v2, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    int-to-long v4, v7

    add-long/2addr v2, v4

    iput-wide v2, v11, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 515
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/2addr v0, v1

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 516
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/2addr v0, v1

    iput v0, v11, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 517
    iget v0, v11, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v11, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    add-int v1, v8, v7

    int-to-long v9, v1

    .line 519
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    const/16 v16, 0x4

    add-int/lit8 v4, v1, 0x4

    .line 520
    iget v3, v11, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    .line 523
    iget-boolean v1, v11, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v1, :cond_2c

    const/16 v24, 0x4

    goto :goto_1b

    .line 526
    :cond_2c
    rem-int/lit8 v1, v0, 0x4

    shl-int/lit8 v1, v1, 0x10

    or-int/lit8 v1, v1, 0x4

    move/from16 v24, v1

    .line 529
    :goto_1b
    iget v1, v11, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    new-instance v19, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v5, v6

    move v6, v0

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileUploadOperation;II[BIIIJ)V

    const/16 v20, 0x0

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v1, v11}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 652
    iget-boolean v2, v11, Lorg/telegram/messenger/FileUploadOperation;->forceSmallFile:Z

    if-eqz v2, :cond_2d

    const/16 v22, 0x4

    goto :goto_1c

    :cond_2d
    const/16 v22, 0x0

    :goto_1c
    const v23, 0x7fffffff

    const/16 v25, 0x1

    move-object/from16 v21, v1

    .line 529
    invoke-virtual/range {v17 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v1

    .line 653
    iget-object v2, v11, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :catch_1
    move-exception v0

    .line 509
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x4

    .line 510
    iput v1, v11, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 511
    iget-object v0, v11, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, v11}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 512
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method private storeFileUploadInfo()V
    .locals 4

    .line 219
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ivc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 165
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 168
    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 169
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->unlockFile(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 176
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method protected checkNewDataAvailable(JJ)V
    .locals 8

    .line 202
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FileUploadOperation;JJ)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getTotalFileSize()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method protected onNetworkChanged(Z)V
    .locals 2

    .line 127
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 130
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileUploadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    return-void
.end method

.method public setForceSmallFile()V
    .locals 1

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->forceSmallFile:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 109
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 113
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->lockFile(Ljava/lang/String;)V

    .line 114
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
