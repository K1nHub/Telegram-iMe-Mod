.class public interface abstract Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
.super Ljava/lang/Object;
.source "ContentPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContentPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentPreviewViewerDelegate"
.end annotation


# virtual methods
.method public abstract can()Z
.end method

.method public abstract canSchedule()Z
.end method

.method public abstract canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;
.end method

.method public abstract copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V
.end method

.method public abstract editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
.end method

.method public abstract getDialogId()J
.end method

.method public abstract getQuery(Z)Ljava/lang/String;
.end method

.method public abstract gifAddedOrDeleted()V
.end method

.method public abstract isInScheduleMode()Z
.end method

.method public abstract needCopy()Z
.end method

.method public abstract needMenu()Z
.end method

.method public abstract needOpen()Z
.end method

.method public abstract needRemove()Z
.end method

.method public abstract needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z
.end method

.method public abstract needSend(I)Z
.end method

.method public abstract openKiklikoReport(Ljava/lang/String;)V
.end method

.method public abstract openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V
.end method

.method public abstract remove(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
.end method

.method public abstract removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract resetTouch()V
.end method

.method public abstract sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V
.end method

.method public abstract sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V
.end method

.method public abstract sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V
.end method

.method public abstract sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZI)V
.end method

.method public abstract setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
.end method

.method public abstract setKiklikoAvatar(Ljava/lang/String;)V
.end method
