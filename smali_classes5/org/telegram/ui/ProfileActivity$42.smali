.class Lorg/telegram/ui/ProfileActivity$42;
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

    .line 6431
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;
    .locals 0

    .line 6494
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1200(Lorg/telegram/ui/ProfileActivity;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6431
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$42;->get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 6431
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$42;->setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 6

    .line 6434
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$1202(Lorg/telegram/ui/ProfileActivity;F)F

    .line 6435
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/ProfileStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6436
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/ProfileStoriesView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->setActionBarActionMode(F)V

    .line 6438
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6440
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_title:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6441
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6442
    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    .line 6443
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10400(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 6444
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10800(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6445
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10800(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6447
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$10700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6448
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_subtitleInProfileBlue:I

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6449
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v3

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 6452
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6453
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    .line 6454
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$20500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v4, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 6456
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarSelectorBlue:I

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6457
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v4

    .line 6458
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$20600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-static {p1, v4, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v5, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 6460
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6461
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6462
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6463
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6464
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6465
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6467
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$20700(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6468
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6469
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    .line 6470
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$20700(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6473
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$20800(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6474
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6475
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    .line 6476
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$20800(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6479
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$20900(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6480
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6481
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    .line 6482
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$20900(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6485
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$20100(Lorg/telegram/ui/ProfileActivity;)V

    .line 6487
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$21100(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6488
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)F

    move-result p2

    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$21200(Lorg/telegram/ui/ProfileActivity;F)V

    :cond_7
    return-void
.end method
