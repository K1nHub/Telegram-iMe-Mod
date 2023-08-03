.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;
.super Ljava/lang/Object;
.source "EmojiBottomSheet.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1685
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->ignoreTextChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 1688
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    .line 1689
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1690
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Ljava/lang/String;I)V

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1692
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    .line 1693
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    .line 1695
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1696
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1697
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
