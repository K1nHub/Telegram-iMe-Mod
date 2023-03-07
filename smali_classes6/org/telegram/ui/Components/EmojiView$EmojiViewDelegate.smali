.class public interface abstract Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;
.super Ljava/lang/Object;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmojiViewDelegate"
.end annotation


# virtual methods
.method public abstract canSchedule()Z
.end method

.method public abstract editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V
.end method

.method public abstract editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
.end method

.method public abstract getDialogId()J
.end method

.method public abstract getProgressToSearchOpened()F
.end method

.method public abstract getThreadId()I
.end method

.method public abstract invalidateEnterView()V
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract isInScheduleMode()Z
.end method

.method public abstract isSearchOpened()Z
.end method

.method public abstract isUserSelf()Z
.end method

.method public abstract onAnimatedEmojiUnlockClick()V
.end method

.method public abstract onBackspace()Z
.end method

.method public abstract onClearEmojiRecent()V
.end method

.method public abstract onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V
.end method

.method public abstract onEmojiSelected(Ljava/lang/String;)V
.end method

.method public abstract onEmojiSettingsClick(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
.end method

.method public abstract onKiklikoVideoSelected(Ljava/lang/String;ZZILjava/lang/String;)V
.end method

.method public abstract onSearchOpenClose(I)V
.end method

.method public abstract onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
.end method

.method public abstract onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZILjava/lang/String;)V
.end method

.method public abstract onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
.end method

.method public abstract onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
.end method

.method public abstract onStickersGroupClick(J)V
.end method

.method public abstract onStickersSettingsClick()V
.end method

.method public abstract onTabOpened(I)V
.end method

.method public abstract setKiklikoAvatar(Ljava/lang/String;)V
.end method

.method public abstract showKiklikoReportAlert(Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
.end method
