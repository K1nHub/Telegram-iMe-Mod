.class Landroidx/documentfile/provider/TreeDocumentFile;
.super Landroidx/documentfile/provider/DocumentFile;
.source "TreeDocumentFile.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/documentfile/provider/DocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    .line 38
    iput-object p2, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private static createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    .line 112
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 2

    .line 45
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Landroidx/documentfile/provider/TreeDocumentFile;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    new-instance p2, Landroidx/documentfile/provider/TreeDocumentFile;

    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
