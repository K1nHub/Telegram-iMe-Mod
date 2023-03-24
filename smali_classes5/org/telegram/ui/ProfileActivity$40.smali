.class Lorg/telegram/ui/ProfileActivity$40;
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

    .line 5924
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;
    .locals 0

    .line 5984
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5924
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$40;->get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 5924
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$40;->setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 6

    .line 5927
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$1002(Lorg/telegram/ui/ProfileActivity;F)F

    .line 5928
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5930
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v0, "profile_title"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5931
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v1, "player_actionBarTitle"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5932
    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    .line 5933
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 5934
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5935
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5937
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$10000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5938
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "avatar_subtitleInProfileBlue"

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5939
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v3

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 5942
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v0, "actionBarDefaultIcon"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5943
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v4, "actionBarActionModeDefaultIcon"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    .line 5944
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$19200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v4, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 5946
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v4, "avatar_actionBarSelectorBlue"

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5947
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v5, "actionBarActionModeDefaultSelector"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    .line 5948
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$19300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-static {p1, v4, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v5, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 5950
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5951
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5952
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5953
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5954
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5955
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 5957
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19400(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "profile_verifiedBackground"

    if-eqz p1, :cond_2

    .line 5958
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5959
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    .line 5960
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$19400(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5963
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19500(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5964
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "profile_verifiedCheck"

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5965
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v4, "windowBackgroundWhite"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    .line 5966
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$19500(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5969
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5970
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    .line 5971
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 5972
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$19600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5975
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18800(Lorg/telegram/ui/ProfileActivity;)V

    .line 5977
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$19800(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5978
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$40;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result p2

    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$19900(Lorg/telegram/ui/ProfileActivity;F)V

    :cond_6
    return-void
.end method
