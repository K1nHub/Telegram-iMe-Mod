.class Lorg/telegram/ui/ProfileActivity$43;
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

    .line 6687
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;
    .locals 0

    .line 6766
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1200(Lorg/telegram/ui/ProfileActivity;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6687
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$43;->get(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 6687
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$43;->setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 7

    .line 6690
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$1202(Lorg/telegram/ui/ProfileActivity;F)F

    .line 6691
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$11700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/ProfileStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6692
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$11700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Stories/ProfileStoriesView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->setActionBarActionMode(F)V

    .line 6694
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6696
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_title:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6697
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6698
    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    .line 6699
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 6700
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10900(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6701
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10900(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6703
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$10800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6704
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_subtitleInProfileBlue:I

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6705
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v3

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 6708
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6709
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v3

    .line 6710
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$21100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-static {p1, v3, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v5, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 6712
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    if-eqz p1, :cond_4

    const p1, 0x40ffffff    # 7.9999995f

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    if-eqz p1, :cond_5

    const p1, 0x20ffffff

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarSelectorBlue:I

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6713
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    .line 6714
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$21200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    invoke-static {p1, v5, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    invoke-virtual {v6, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 6716
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6717
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    if-eqz v5, :cond_6

    move v5, v0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    :goto_2
    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6718
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    if-eqz v5, :cond_7

    move v5, v0

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    :goto_3
    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6719
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    if-eqz v5, :cond_8

    move v5, v0

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    :goto_4
    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6720
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    if-eqz v5, :cond_9

    move v5, v0

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    :goto_5
    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6721
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    if-eqz v5, :cond_a

    move v5, v0

    goto :goto_6

    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    :goto_6
    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 6723
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21300(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v3

    if-eqz p1, :cond_b

    .line 6724
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6725
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    .line 6726
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$21300(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {p1, v5, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6728
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21300(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v4

    if-eqz p1, :cond_f

    .line 6729
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result p1

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor5()I

    move-result v5

    goto :goto_7

    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3()I

    move-result v5

    :goto_7
    const v6, 0x3ecccccd    # 0.4f

    invoke-static {p1, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v6

    if-eqz v6, :cond_d

    const v6, -0x42333333    # -0.1f

    goto :goto_8

    :cond_d
    const v6, -0x425c28f6    # -0.08f

    :goto_8
    invoke-static {p1, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    goto :goto_9

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6730
    :goto_9
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    .line 6731
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$21300(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {p1, v5, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6734
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21400(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v3

    if-eqz p1, :cond_10

    .line 6735
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6736
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v5

    .line 6737
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$21400(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {p1, v5, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6739
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21400(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v4

    if-eqz p1, :cond_12

    .line 6740
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$18600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    if-eqz p1, :cond_11

    goto :goto_a

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$21500(Lorg/telegram/ui/ProfileActivity;I)I

    move-result v0

    .line 6741
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6742
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$21400(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v0, p1, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6746
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21600(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v3

    if-eqz p1, :cond_13

    .line 6747
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result p1

    .line 6748
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    .line 6749
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$21600(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v3, v5, v3

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6751
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21600(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v4

    if-eqz p1, :cond_14

    .line 6752
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$21500(Lorg/telegram/ui/ProfileActivity;I)I

    move-result p1

    .line 6753
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$21500(Lorg/telegram/ui/ProfileActivity;I)I

    move-result v0

    .line 6754
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$21600(Lorg/telegram/ui/ProfileActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {p1, v0, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6757
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$20700(Lorg/telegram/ui/ProfileActivity;)V

    .line 6759
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$21800(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 6760
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$43;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)F

    move-result p2

    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$21900(Lorg/telegram/ui/ProfileActivity;F)V

    :cond_16
    return-void
.end method
