.class public interface abstract Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;
.super Ljava/lang/Object;
.source "SmartBotsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/smartpanel/SmartBotsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBotsSettingsClick()V
.end method

.method public abstract onGifAnswerSelected(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onShopClick()V
.end method

.method public abstract onTextAnswerSelected(Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;I)V
.end method

.method public abstract onTranslationYChanged(F)V
.end method

.method public abstract sendChosenGif(IJLjava/lang/String;)V
.end method
