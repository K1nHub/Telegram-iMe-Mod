.class Lorg/telegram/messenger/FileLoader$2;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZILjava/lang/String;Landroid/net/Uri;)Lorg/telegram/messenger/FileLoadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$customDirectoryUri:Landroid/net/Uri;

.field final synthetic val$customFileName:Ljava/lang/String;

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$finalType:I

.field final synthetic val$parentObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$2;->val$parentObject:Ljava/lang/Object;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$2;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    iput p5, p0, Lorg/telegram/messenger/FileLoader$2;->val$finalType:I

    iput-object p6, p0, Lorg/telegram/messenger/FileLoader$2;->val$customFileName:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/messenger/FileLoader$2;->val$customDirectoryUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;JJ)V
    .locals 8

    .line 867
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileLoadProgressChanged(Lorg/telegram/messenger/FileLoadOperation;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 2

    .line 852
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/FileLoader;->access$300(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoaderPriorityQueue;Ljava/lang/String;)V

    .line 854
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidFailedLoad(Ljava/lang/String;I)V

    .line 858
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->val$parentObject:Ljava/lang/Object;

    instance-of p1, p1, Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 859
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->val$parentObject:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/DownloadController;->onDownloadFail(Lorg/telegram/messenger/MessageObject;I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x2

    .line 861
    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V
    .locals 4

    .line 821
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    iget v0, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$parentObject:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lorg/telegram/messenger/FilePathDatabase;->saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    .line 828
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->val$parentObject:Ljava/lang/Object;

    instance-of v1, v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    .line 829
    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 830
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    if-eqz v1, :cond_2

    .line 831
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DownloadController;->onDownloadComplete(Lorg/telegram/messenger/MessageObject;)V

    .line 835
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation()Z

    move-result v0

    if-nez v0, :cond_3

    .line 836
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$100(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 838
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$200(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$2;->val$parentObject:Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/messenger/FileLoader$2;->val$finalType:I

    invoke-interface {v0, v1, p2, v2, v3}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;I)V

    .line 842
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$fileName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/FileLoader;->access$300(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoaderPriorityQueue;Ljava/lang/String;)V

    .line 844
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader$2;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->val$customFileName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$2;->val$customDirectoryUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 845
    invoke-static {p2, p1, v0, v1, v2}, Lorg/fork/utils/FileSavingHelper;->saveDocumentFileToCustomDirectory(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Landroid/net/Uri;Z)V

    :cond_4
    return-void
.end method

.method public hasAnotherRefOnFile(Ljava/lang/String;)Z
    .locals 1

    .line 879
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FilePathDatabase;->hasAnotherRefOnFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public saveFilePath(Lorg/telegram/messenger/FilePathDatabase$PathData;Ljava/io/File;)V
    .locals 7

    .line 874
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$2;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/messenger/FilePathDatabase$PathData;->id:J

    iget v4, p1, Lorg/telegram/messenger/FilePathDatabase$PathData;->dc:I

    iget v5, p1, Lorg/telegram/messenger/FilePathDatabase$PathData;->type:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/FilePathDatabase;->putPath(JIILjava/lang/String;)V

    return-void
.end method
