.class Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;
.super Landroid/widget/FrameLayout;
.source "VoIPNotificationsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationView"
.end annotation


# instance fields
.field iconView:Landroid/widget/ImageView;

.field public tag:Ljava/lang/String;

.field textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$xEsU3qXqlMtOG9q9VmR9ihlVIlw(Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->lambda$startAnimation$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 191
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 193
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 195
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x10

    .line 196
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, -0x1000000

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->iconView:Landroid/widget/ImageView;

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x4

    const/16 v7, 0xa

    const/4 v8, 0x4

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->textView:Landroid/widget/TextView;

    const/4 p1, -0x1

    .line 200
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x10

    const/16 v3, 0x2c

    const/4 v4, 0x4

    const/16 v5, 0x10

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$startAnimation$0()V
    .locals 6

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 209
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 210
    new-instance v2, Landroid/transition/Fade;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v3, 0x96

    .line 211
    invoke-virtual {v2, v3, v4}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v4, 0xc8

    .line 212
    invoke-virtual {v3, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 213
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public startAnimation()V
    .locals 3

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
