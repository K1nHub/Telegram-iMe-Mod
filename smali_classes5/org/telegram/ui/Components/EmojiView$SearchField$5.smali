.class Lorg/telegram/ui/Components/EmojiView$SearchField$5;
.super Lorg/telegram/ui/Components/StickerCategoriesListView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$SearchField;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/content/Context;[Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iput p7, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->val$type:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/StickerCategoriesListView;-><init>(Landroid/content/Context;[Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected isTabIconsAnimationEnabled(Z)Z
    .locals 0

    .line 1206
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public selectCategory(I)V
    .locals 3

    .line 1194
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(I)V

    .line 1195
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object v0, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1, v2}, Lorg/telegram/ui/Components/EmojiView;->access$3200(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 1196
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->val$type:I

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1197
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    goto :goto_1

    .line 1198
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->val$type:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected(Z)V

    .line 1201
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField$5;->this$1:Lorg/telegram/ui/Components/EmojiView$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->access$2700(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    return-void
.end method
