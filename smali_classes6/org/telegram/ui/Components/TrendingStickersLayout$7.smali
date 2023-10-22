.class Lorg/telegram/ui/Components/TrendingStickersLayout$7;
.super Ljava/lang/Object;
.source "TrendingStickersLayout.java"

# interfaces
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersLayout;->showStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSchedule()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->canSchedule()Z

    move-result v0

    return v0
.end method

.method public editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    return-void
.end method

.method public editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 1

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->isInScheduleMode()Z

    move-result v0

    return v0
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZILjava/lang/String;)V
    .locals 7

    .line 470
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;ZZILjava/lang/String;)V

    return-void
.end method

.method public synthetic setKiklikoAvatar(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate$-CC;->$default$setKiklikoAvatar(Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Ljava/lang/String;)V

    return-void
.end method
