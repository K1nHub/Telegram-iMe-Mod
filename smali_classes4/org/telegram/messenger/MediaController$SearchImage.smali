.class public Lorg/telegram/messenger/MediaController$SearchImage;
.super Lorg/telegram/messenger/MediaController$MediaEditState;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchImage"
.end annotation


# instance fields
.field public caption:Ljava/lang/CharSequence;

.field public date:I

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public height:I

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public inlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public size:I

.field public thumbPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public thumbUrl:Ljava/lang/String;

.field public type:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 441
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaEditState;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachName()Ljava/lang/String;
    .locals 3

    .line 475
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_0

    .line 476
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    .line 478
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v2, "jpg"

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 460
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 461
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    .line 463
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 465
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v1, "jpg"

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathToAttach()Ljava/lang/String;
    .locals 3

    .line 484
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 485
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 486
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    .line 487
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 489
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 471
    invoke-super {p0}, Lorg/telegram/messenger/MediaController$MediaEditState;->reset()V

    return-void
.end method
