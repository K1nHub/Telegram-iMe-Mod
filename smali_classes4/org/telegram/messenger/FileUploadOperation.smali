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
.method public static synthetic $r8$lambda$60JDszKU-ghwqMTuqH8gfhinPv8(Lorg/telegram/messenger/FileUploadOperation;I[II[BIIIJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/telegram/messenger/FileUploadOperation;->lambda$startUploadRequest$4(I[II[BIIIJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    .line 47
    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    .line 91
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    .line 92
    iput-object p2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    .line 93
    iput-boolean p3, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    .line 94
    iput-wide p4, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    .line 95
    iput p6, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    return-void
.end method

.method private calcTotalPartsCount()V
    .locals 7

    .line 232
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 233
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_0

    .line 234
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

    .line 236
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

    .line 239
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

    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "uploadinfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    .line 182
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

    .line 183
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

    .line 184
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

    .line 185
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

    .line 186
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

    .line 187
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

    .line 188
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$cancel$2()V
    .locals 4

    const/4 v0, 0x0

    .line 169
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
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
    .locals 4

    .line 202
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 203
    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    .line 204
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 205
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->calcTotalPartsCount()V

    .line 206
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p1, p3

    .line 210
    :goto_0
    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->availableSize:J

    .line 211
    iget p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    iget p2, p0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge p1, p2, :cond_2

    .line 212
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onNetworkChanged$1(Z)V
    .locals 4

    .line 130
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eq v0, p1, :cond_3

    .line 131
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    .line 132
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 133
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

    move v0, p1

    .line 135
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 136
    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 139
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    .line 140
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 141
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    .line 142
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    .line 143
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 145
    iput-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 146
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 148
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 149
    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 150
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 151
    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    .line 152
    iput-boolean p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 155
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    .line 156
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    if-ge p1, v2, :cond_3

    .line 157
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 3

    .line 114
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "uploadinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    .line 115
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectionSlow()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    .line 116
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start upload on slow network = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    if-ge v2, v0, :cond_2

    .line 120
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$startUploadRequest$4(I[II[BIIIJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 21

    move-object/from16 v6, p0

    move/from16 v0, p3

    move-object/from16 v7, p4

    move/from16 v8, p7

    move-object/from16 v1, p10

    .line 530
    iget v2, v6, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    return-void

    .line 533
    :cond_0
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug_uploading:  response reqId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p2, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 536
    iget v2, v1, Lorg/telegram/tgnet/TLObject;->networkType:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v2

    .line 537
    :goto_0
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    const-string v10, "m4a"

    const-string v12, "mp3"

    const/high16 v14, 0x4000000

    const/4 v15, 0x2

    const/high16 v4, 0x1000000

    const/high16 v5, 0x2000000

    const/high16 v9, 0x3000000

    const/4 v13, 0x3

    const/4 v11, 0x4

    if-ne v3, v9, :cond_4

    .line 538
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    move-object/from16 v16, v10

    int-to-long v9, v0

    invoke-virtual {v3, v2, v13, v9, v10}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_3
    :goto_1
    move-object/from16 v9, v16

    goto :goto_3

    :cond_4
    move-object/from16 v16, v10

    if-ne v3, v5, :cond_5

    .line 540
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v9, v0

    invoke-virtual {v3, v2, v15, v9, v10}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto :goto_1

    :cond_5
    if-ne v3, v4, :cond_6

    .line 542
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v9, v0

    invoke-virtual {v3, v2, v11, v9, v10}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto :goto_1

    :cond_6
    if-ne v3, v14, :cond_3

    .line 544
    iget-object v3, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v9, v16

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_7
    move-object/from16 v9, v16

    .line 545
    :goto_2
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v4, v0

    const/4 v0, 0x7

    invoke-virtual {v3, v2, v0, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto :goto_3

    :cond_8
    move-object/from16 v9, v16

    .line 547
    :cond_9
    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    int-to-long v4, v0

    const/4 v0, 0x5

    invoke-virtual {v3, v2, v0, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :goto_3
    if-eqz v7, :cond_a

    .line 551
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_a
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 554
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_1f

    .line 555
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    return-void

    .line 558
    :cond_b
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    move/from16 v2, p6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 560
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v17, 0x0

    cmp-long v2, v0, v17

    if-eqz v2, :cond_c

    .line 561
    iget-wide v2, v6, Lorg/telegram/messenger/FileUploadOperation;->availableSize:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_4

    .line 563
    :cond_c
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    :goto_4
    move-wide/from16 v19, v0

    .line 565
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    iget-wide v2, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    move-object/from16 v1, p0

    move v11, v4

    const/high16 v10, 0x1000000

    const/high16 v14, 0x2000000

    move-wide/from16 v4, v19

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;JJ)V

    .line 566
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    sub-int/2addr v0, v11

    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 567
    iget-boolean v1, v6, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-ne v1, v11, :cond_15

    .line 568
    iput v13, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 569
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const-string v1, ""

    if-nez v0, :cond_e

    .line 571
    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_d

    .line 572
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;-><init>()V

    goto :goto_5

    .line 574
    :cond_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFile;-><init>()V

    .line 575
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->md5_checksum:Ljava/lang/String;

    .line 577
    :goto_5
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->parts:I

    .line 578
    iget-wide v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    .line 579
    iget-object v1, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputFile;->name:Ljava/lang/String;

    .line 580
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

    .line 581
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto :goto_7

    .line 584
    :cond_e
    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_f

    .line 585
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;-><init>()V

    goto :goto_6

    .line 587
    :cond_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;-><init>()V

    .line 588
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->md5_checksum:Ljava/lang/String;

    .line 590
    :goto_6
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->parts:I

    .line 591
    iget-wide v1, v6, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    .line 592
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->key_fingerprint:I

    .line 593
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

    .line 594
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    .line 596
    :goto_7
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    const/high16 v1, 0x3000000

    if-ne v0, v1, :cond_10

    .line 597
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v13, v11}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_a

    :cond_10
    if-ne v0, v14, :cond_11

    .line 599
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v15, v11}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_a

    :cond_11
    if-ne v0, v10, :cond_12

    .line 601
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v11}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_a

    :cond_12
    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_20

    .line 603
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 604
    :cond_13
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v11}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_a

    .line 606
    :cond_14
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v11}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_a

    .line 609
    :cond_15
    iget v1, v6, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge v0, v1, :cond_20

    .line 610
    iget-wide v0, v6, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v0, v0, v17

    if-nez v0, :cond_1e

    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_1e

    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v0, :cond_1e

    .line 611
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_16

    const/4 v0, 0x0

    .line 612
    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    .line 614
    :cond_16
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    if-ne v8, v0, :cond_1b

    add-int/2addr v0, v11

    .line 615
    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    move-wide/from16 v0, p8

    .line 619
    :goto_8
    iget-object v2, v6, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    if-eqz v2, :cond_17

    .line 620
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$000(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)J

    move-result-wide v0

    .line 621
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$100(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v7

    .line 622
    iget-object v2, v6, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    iget v3, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 623
    iget v2, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    add-int/2addr v2, v11

    iput v2, v6, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    goto :goto_8

    .line 625
    :cond_17
    iget-boolean v2, v6, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v2, :cond_18

    const-wide/32 v3, 0x100000

    rem-long v3, v0, v3

    cmp-long v3, v3, v17

    if-eqz v3, :cond_19

    :cond_18
    if-nez v2, :cond_1d

    iget v2, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    if-nez v2, :cond_1d

    .line 626
    :cond_19
    iget-object v2, v6, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_uploaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 628
    iget-boolean v0, v6, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_1a

    .line 629
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

    .line 631
    :cond_1a
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_9

    .line 634
    :cond_1b
    new-instance v0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;-><init>(Lorg/telegram/messenger/FileUploadOperation$1;)V

    move-wide/from16 v1, p8

    .line 635
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$002(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;J)J

    if-eqz v7, :cond_1c

    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 637
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$102(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;[B)[B

    .line 638
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$100(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v7, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_1c
    iget-object v1, v6, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Landroid/util/SparseArray;

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    :cond_1d
    :goto_9
    iget v0, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    add-int/2addr v0, v11

    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    .line 644
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    goto :goto_a

    :cond_1f
    move v0, v11

    .line 647
    iput v0, v6, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 648
    iget-object v0, v6, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, v6}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 649
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    :cond_20
    :goto_a
    return-void
.end method

.method private synthetic lambda$startUploadRequest$5()V
    .locals 2

    .line 652
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge v0, v1, :cond_0

    .line 653
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startUploadRequest$6()V
    .locals 2

    .line 651
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startUploadRequest()V
    .locals 29

    move-object/from16 v12, p0

    .line 248
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 258
    :cond_0
    :try_start_0
    iput-boolean v1, v12, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    .line 259
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    const/16 v2, 0x400

    const-wide/16 v4, 0x0

    const/16 v6, 0x20

    const/4 v14, 0x0

    if-nez v0, :cond_1e

    .line 260
    new-instance v7, Ljava/io/File;

    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v0, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    const-class v0, Ljava/io/FileDescriptor;

    const-string v8, "getInt$"

    new-array v9, v14, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 268
    iget-object v8, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 269
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 273
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v14

    :goto_0
    if-nez v0, :cond_1d

    .line 278
    iget-wide v8, v12, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    cmp-long v0, v8, v4

    if-eqz v0, :cond_1

    .line 279
    iput-wide v8, v12, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    .line 283
    :goto_1
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->forceSmallFile:Z

    if-nez v0, :cond_2

    iget-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v9, 0xa00000

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    .line 284
    iput-boolean v1, v12, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    .line 287
    :cond_2
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->uploadMaxFileParts:I

    int-to-long v7, v0

    .line 288
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v9, v12, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v15, 0x7d000000

    cmp-long v0, v9, v15

    if-lez v0, :cond_3

    .line 289
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->uploadMaxFilePartsPremium:I

    int-to-long v7, v0

    .line 291
    :cond_3
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_4

    const-wide/16 v9, 0x20

    goto :goto_2

    :cond_4
    const-wide/16 v9, 0x80

    :goto_2
    iget-wide v13, v12, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/16 v3, 0x400

    mul-long/2addr v7, v3

    add-long/2addr v13, v7

    const-wide/16 v19, 0x1

    sub-long v13, v13, v19

    div-long/2addr v13, v7

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 292
    rem-int v0, v2, v0

    const/16 v5, 0x40

    if-eqz v0, :cond_6

    move v0, v5

    .line 294
    :goto_3
    iget v7, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-le v7, v0, :cond_5

    mul-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 297
    :cond_5
    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 299
    :cond_6
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v0, :cond_7

    move v0, v6

    goto :goto_4

    :cond_7
    const/16 v0, 0x800

    :goto_4
    iget v7, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    div-int/2addr v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    .line 301
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_8

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    iget v7, v12, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 303
    :goto_5
    iget v7, v12, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    if-ge v0, v7, :cond_8

    .line 304
    iget-object v7, v12, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    new-array v8, v6, [B

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 308
    :cond_8
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    mul-int/2addr v0, v2

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    .line 309
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->calcTotalPartsCount()V

    .line 310
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    new-array v0, v0, [B

    iput-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v7, :cond_9

    const-string v7, "enc"

    goto :goto_6

    :cond_9
    const-string v7, ""

    :goto_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    .line 313
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v0, v7

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    .line 316
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_16

    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v0, :cond_16

    iget-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_16

    iget-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_16

    .line 317
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 318
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 319
    iget-object v7, v12, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_uploaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 320
    iget-boolean v9, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v9, :cond_b

    .line 321
    iget-object v9, v12, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_iv"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 322
    iget-object v10, v12, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_key"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x0

    invoke-interface {v10, v13, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    .line 324
    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v12, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    .line 325
    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v12, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    .line 326
    iget-object v10, v12, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    if-eqz v10, :cond_a

    if-eqz v9, :cond_a

    array-length v10, v10

    if-ne v10, v6, :cond_a

    array-length v10, v9

    if-ne v10, v6, :cond_a

    new-array v10, v6, [B

    .line 327
    iput-object v10, v12, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v13, 0x0

    .line 328
    invoke-static {v9, v13, v10, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_a
    move v9, v1

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-nez v9, :cond_16

    if-eqz v0, :cond_16

    .line 337
    iget-boolean v10, v12, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v10, :cond_c

    iget v13, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    const v14, 0x15180

    sub-int/2addr v13, v14

    if-ge v0, v13, :cond_c

    :goto_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    if-nez v10, :cond_d

    int-to-float v13, v0

    .line 339
    iget v14, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    int-to-float v14, v14

    const v19, 0x45a8c000    # 5400.0f

    sub-float v14, v14, v19

    cmpg-float v13, v13, v14

    if-gez v13, :cond_d

    goto :goto_9

    :cond_d
    :goto_a
    if-eqz v0, :cond_17

    const-wide/16 v13, 0x0

    cmp-long v0, v7, v13

    if-lez v0, :cond_16

    .line 344
    iput-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 345
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v13, v0

    div-long v13, v7, v13

    long-to-int v0, v13

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    if-nez v10, :cond_13

    const/4 v0, 0x0

    :goto_b
    int-to-long v7, v0

    .line 347
    iget-wide v13, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v10, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v2, v10

    div-long/2addr v13, v2

    cmp-long v2, v7, v13

    if-gez v2, :cond_17

    .line 348
    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v3, v12, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 350
    iget-boolean v3, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v3, :cond_e

    rem-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_e

    .line 351
    rem-int/lit8 v3, v2, 0x10

    rsub-int/lit8 v3, v3, 0x10

    const/4 v4, 0x0

    add-int/2addr v3, v4

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    .line 353
    :goto_c
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v7, v2, v3

    invoke-direct {v4, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 354
    iget v8, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-ne v2, v8, :cond_f

    iget v8, v12, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iget v10, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/2addr v10, v1

    if-ne v8, v10, :cond_10

    .line 355
    :cond_f
    iput-boolean v1, v12, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 357
    :cond_10
    iget-object v8, v12, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 358
    iget-boolean v2, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v2, :cond_12

    move v2, v10

    :goto_d
    if-ge v2, v3, :cond_11

    .line 360
    invoke-virtual {v4, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x0

    goto :goto_d

    .line 362
    :cond_11
    iget-object v2, v4, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, v12, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    iget-object v8, v12, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v8

    move/from16 v28, v7

    invoke-static/range {v22 .. v28}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 364
    :cond_12
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x400

    const-wide/16 v3, 0x400

    goto :goto_b

    .line 367
    :cond_13
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 368
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_17

    .line 369
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ivc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 371
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    if-eqz v0, :cond_14

    .line 372
    array-length v0, v0

    if-eq v0, v6, :cond_18

    :cond_14
    const-wide/16 v7, 0x0

    .line 374
    iput-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    const/4 v2, 0x0

    .line 375
    iput v2, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto :goto_e

    :cond_15
    const-wide/16 v7, 0x0

    .line 379
    iput-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    const/4 v2, 0x0

    .line 380
    iput v2, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto :goto_e

    :cond_16
    const/4 v3, 0x0

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    goto :goto_f

    :goto_e
    move v9, v1

    :cond_18
    :goto_f
    if-eqz v9, :cond_1a

    .line 395
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_19

    new-array v0, v6, [B

    .line 396
    iput-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    new-array v2, v6, [B

    .line 397
    iput-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    new-array v2, v6, [B

    .line 398
    iput-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    .line 399
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 400
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 401
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    :cond_19
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v7

    iput-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    .line 404
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v0, :cond_1a

    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-nez v0, :cond_1a

    iget-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_1a

    .line 405
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    .line 409
    :cond_1a
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_1b

    :try_start_3
    const-string v0, "MD5"

    .line 411
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-array v2, v5, [B

    .line 413
    iget-object v4, v12, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v4, v12, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-static {v4, v5, v2, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v2, 0x0

    :goto_10
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1b

    .line 417
    iget v4, v12, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    aget-byte v5, v0, v2

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, v0, v7

    xor-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v7, v2, 0x8

    shl-int/2addr v5, v7

    or-int/2addr v4, v5

    iput v4, v12, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catch_0
    move-exception v0

    .line 420
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 423
    :cond_1b
    iget-wide v4, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iput-wide v4, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    .line 424
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    .line 426
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-eqz v0, :cond_1f

    .line 427
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_1c

    .line 428
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget v2, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 429
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v0

    iput-wide v4, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    goto :goto_11

    .line 431
    :cond_1c
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x400

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 432
    iput-wide v4, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    .line 434
    :goto_11
    iput v1, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto :goto_12

    .line 276
    :cond_1d
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "trying to upload internal file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 v3, 0x0

    .line 438
    :cond_1f
    :goto_12
    iget-wide v4, v12, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_20

    .line 439
    iget-wide v4, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v7, v0

    add-long/2addr v4, v7

    iget-wide v7, v12, Lorg/telegram/messenger/FileUploadOperation;->availableSize:J

    cmp-long v0, v4, v7

    if-lez v0, :cond_20

    return-void

    .line 444
    :cond_20
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-eqz v0, :cond_22

    .line 445
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 446
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_21

    .line 447
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v5, 0x0

    goto :goto_13

    .line 449
    :cond_21
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/16 v4, 0x400

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 451
    :goto_13
    iput v5, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto :goto_14

    .line 453
    :cond_22
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    :goto_14
    move v8, v0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_23

    return-void

    .line 459
    :cond_23
    iget-boolean v2, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v2, :cond_24

    rem-int/lit8 v2, v8, 0x10

    if-eqz v2, :cond_24

    .line 460
    rem-int/lit8 v2, v8, 0x10

    rsub-int/lit8 v2, v2, 0x10

    const/4 v4, 0x0

    add-int/2addr v2, v4

    goto :goto_15

    :cond_24
    const/4 v2, 0x0

    .line 462
    :goto_15
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v5, v8, v2

    invoke-direct {v4, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 463
    iget-boolean v7, v12, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-nez v7, :cond_25

    iget v7, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-ne v8, v7, :cond_25

    iget-wide v9, v12, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v13, 0x0

    cmp-long v7, v9, v13

    if-nez v7, :cond_27

    iget v7, v12, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iget v9, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/2addr v9, v1

    if-ne v7, v9, :cond_27

    .line 464
    :cond_25
    iget-boolean v7, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    if-eqz v7, :cond_26

    .line 465
    iput-boolean v1, v12, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    const/4 v7, 0x0

    .line 466
    iput-boolean v7, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadFirstPartLater:Z

    goto :goto_16

    .line 468
    :cond_26
    iput-boolean v1, v12, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    .line 471
    :cond_27
    :goto_16
    iget-object v7, v12, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    .line 472
    iget-boolean v7, v12, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v7, :cond_29

    move v3, v9

    :goto_17
    if-ge v3, v2, :cond_28

    .line 474
    invoke-virtual {v4, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    goto :goto_17

    .line 476
    :cond_28
    iget-object v2, v4, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, v12, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    iget-object v7, v12, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v7

    move/from16 v25, v5

    invoke-static/range {v19 .. v25}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 477
    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 478
    iget-object v5, v12, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v5, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iget-object v5, v12, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v6, v2

    goto :goto_18

    :cond_29
    move-object v6, v3

    .line 483
    :goto_18
    iget-boolean v2, v12, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v2, :cond_2b

    .line 484
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;-><init>()V

    .line 485
    iget v3, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    .line 486
    iget-wide v9, v12, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v9, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    .line 487
    iget-wide v9, v12, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:J

    const-wide/16 v13, 0x0

    cmp-long v5, v9, v13

    if-eqz v5, :cond_2a

    .line 488
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    goto :goto_19

    .line 490
    :cond_2a
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    .line 492
    :goto_19
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v18, v2

    move v9, v3

    goto :goto_1a

    .line 495
    :cond_2b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;-><init>()V

    .line 496
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_part:I

    .line 497
    iget-wide v9, v12, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v9, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_id:J

    .line 498
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move v9, v0

    move-object/from16 v18, v2

    .line 501
    :goto_1a
    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, v12, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    if-eqz v0, :cond_2c

    const/4 v2, 0x0

    .line 502
    iput-boolean v2, v12, Lorg/telegram/messenger/FileUploadOperation;->nextPartFirst:Z

    .line 503
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    sub-int/2addr v0, v1

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 504
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/RandomAccessFile;

    iget-wide v2, v12, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 506
    :cond_2c
    iget-wide v2, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v12, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 514
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/2addr v0, v1

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    .line 515
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/2addr v0, v1

    iput v0, v12, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    .line 516
    iget v0, v12, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v12, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    add-int v2, v9, v8

    int-to-long v10, v2

    .line 518
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    const/4 v15, 0x4

    add-int/lit8 v5, v2, 0x4

    .line 519
    iget v3, v12, Lorg/telegram/messenger/FileUploadOperation;->operationGuid:I

    .line 522
    iget-boolean v2, v12, Lorg/telegram/messenger/FileUploadOperation;->slowNetwork:Z

    if-eqz v2, :cond_2d

    move/from16 v24, v15

    goto :goto_1b

    .line 525
    :cond_2d
    rem-int/lit8 v2, v0, 0x4

    shl-int/lit8 v2, v2, 0x10

    or-int/lit8 v4, v2, 0x4

    move/from16 v24, v4

    .line 527
    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-array v13, v1, [I

    .line 529
    iget v1, v12, Lorg/telegram/messenger/FileUploadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v17

    new-instance v19, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v4, v13

    move v7, v0

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileUploadOperation;I[II[BIIIJ)V

    const/16 v20, 0x0

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v1, v12}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 655
    iget-boolean v2, v12, Lorg/telegram/messenger/FileUploadOperation;->forceSmallFile:Z

    if-eqz v2, :cond_2e

    const/16 v22, 0x4

    goto :goto_1c

    :cond_2e
    const/16 v22, 0x0

    :goto_1c
    const v23, 0x7fffffff

    const/16 v25, 0x1

    move-object/from16 v21, v1

    .line 529
    invoke-virtual/range {v17 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v13, v2

    .line 656
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2f

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug_uploading:  send reqId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 659
    :cond_2f
    iget-object v1, v12, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    aget v2, v13, v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :catch_1
    move-exception v0

    .line 508
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x4

    .line 509
    iput v1, v12, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 510
    iget-object v0, v12, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, v12}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 511
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method private storeFileUploadInfo()V
    .locals 4

    .line 218
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
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

    .line 220
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

    .line 221
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

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_0

    .line 224
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

    .line 225
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

    .line 226
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

    .line 228
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 164
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 167
    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 168
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 175
    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method protected checkNewDataAvailable(JJ)V
    .locals 8

    .line 201
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

    .line 100
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method protected onNetworkChanged(Z)V
    .locals 2

    .line 126
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 129
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileUploadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    return-void
.end method

.method public setForceSmallFile()V
    .locals 1

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->forceSmallFile:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 108
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 111
    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    .line 112
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lockFile(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
