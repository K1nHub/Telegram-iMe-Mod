.class Lorg/telegram/ui/ProfileActivity$25;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 4441
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 4445
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4446
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 4465
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 4466
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 4467
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 4468
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2

    .line 4458
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 4459
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 4460
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 4451
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 4452
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 4453
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$25;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
