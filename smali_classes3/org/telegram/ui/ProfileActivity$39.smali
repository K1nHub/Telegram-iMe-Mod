.class Lorg/telegram/ui/ProfileActivity$39;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/AnimationProperties$FloatProperty<",
        "Lorg/telegram/ui/ActionBar/ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;)V
    .locals 0

    .line 5606
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;
    .locals 0

    .line 5666
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5606
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$39;->get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 5606
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$39;->setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 6

    .line 5609
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$1002(Lorg/telegram/ui/ProfileActivity;F)F

    .line 5610
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5612
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v0, "profile_title"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5613
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v1, "player_actionBarTitle"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5614
    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    .line 5615
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 5616
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5617
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5619
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5620
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "avatar_subtitleInProfileBlue"

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5621
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v3

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 5624
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v0, "actionBarDefaultIcon"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5625
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v4, "actionBarActionModeDefaultIcon"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    .line 5626
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$18700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v4, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 5628
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v4, "avatar_actionBarSelectorBlue"

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5629
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v5, "actionBarActionModeDefaultSelector"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    .line 5630
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-static {p1, v4, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v5, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 5632
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5633
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5634
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5635
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5636
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5637
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5639
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18900(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "profile_verifiedBackground"

    if-eqz p1, :cond_2

    .line 5640
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5641
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    .line 5642
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$18900(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5645
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19000(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5646
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "profile_verifiedCheck"

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5647
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v4, "windowBackgroundWhite"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    .line 5648
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$19000(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5651
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5652
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5653
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 5654
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$19100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5657
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18300(Lorg/telegram/ui/ProfileActivity;)V

    .line 5659
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$19300(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5660
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$39;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result p2

    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$19400(Lorg/telegram/ui/ProfileActivity;F)V

    :cond_6
    return-void
.end method
