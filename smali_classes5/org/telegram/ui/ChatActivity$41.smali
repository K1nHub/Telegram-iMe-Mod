.class Lorg/telegram/ui/ChatActivity$41;
.super Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$firstButton:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 8913
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$41;->val$firstButton:Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setEditButton(Z)V
    .locals 1

    .line 8916
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->setEditButton(Z)V

    .line 8917
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$41;->val$firstButton:Z

    if-eqz v0, :cond_1

    .line 8918
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x74

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 8924
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$41;->val$firstButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 8925
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v3, "chat_replyPanelName"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const v4, 0x19ffffff

    and-int/2addr v2, v4

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8926
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8927
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterTopView$EditViewButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
