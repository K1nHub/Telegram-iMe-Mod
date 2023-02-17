.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;
.super Lorg/telegram/ui/Components/StickerCategoriesListView;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 4125
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/StickerCategoriesListView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected isTabIconsAnimationEnabled(Z)Z
    .locals 1

    .line 4134
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public selectCategory(I)V
    .locals 0

    .line 4128
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(I)V

    .line 4129
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$8200(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    return-void
.end method
