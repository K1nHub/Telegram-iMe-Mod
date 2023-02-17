.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;
.super Ljava/lang/Object;
.source "ChatThemeBottomSheet.java"

# interfaces
.implements Lorg/telegram/tgnet/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/tgnet/ResultCallback<",
        "Ljava/util/List<",
        "Lorg/telegram/ui/ActionBar/EmojiThemes;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 261
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 264
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCachedThemes(Ljava/util/List;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Ljava/util/List;)V

    return-void
.end method

.method public onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
