.class Lorg/telegram/ui/ProfileActivity$28;
.super Lorg/telegram/ui/Components/RLottieImageView;
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

    .line 5017
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    .line 5038
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5039
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 5026
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 5027
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 5032
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 5033
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 5020
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 5021
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$28;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
