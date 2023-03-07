.class public final Lcom/smedialink/utils/extentions/common/ActionBarExtKt;
.super Ljava/lang/Object;
.source "ActionBarExt.kt"


# direct methods
.method public static final applyColorsWithWhiteBackground(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowBackgroundWhite"

    .line 7
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    const-string v0, "windowBackgroundWhiteGrayIcon"

    .line 8
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    const-string v0, "actionBarWhiteSelector"

    .line 9
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    const-string v0, "chat_messagePanelText"

    .line 10
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    return-void
.end method
