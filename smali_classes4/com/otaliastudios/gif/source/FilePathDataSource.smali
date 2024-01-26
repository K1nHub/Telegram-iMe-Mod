.class public Lcom/otaliastudios/gif/source/FilePathDataSource;
.super Lcom/otaliastudios/gif/source/DefaultDataSource;
.source "FilePathDataSource.java"


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/otaliastudios/gif/source/FilePathDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/source/DefaultDataSource;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/otaliastudios/gif/source/FilePathDataSource;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected openInputStream()Ljava/io/InputStream;
    .locals 2

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/otaliastudios/gif/source/FilePathDataSource;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
