.class Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;
.super Landroid/os/AsyncTask;
.source "DownloadManagerRemoveTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadId"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;->mContext:Landroid/content/Context;

    .line 37
    iput-wide p2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;->mDownloadId:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;->mContext:Landroid/content/Context;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 45
    iget-wide v1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;->mDownloadId:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->remove([J)I

    const/4 p1, 0x0

    return-object p1
.end method
