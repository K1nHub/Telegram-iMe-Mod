.class public Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;
.super Landroid/widget/LinearLayout;
.source "VoIPNotificationsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;
    }
.end annotation


# instance fields
.field lockAnimation:Z

.field onViewsUpdated:Ljava/lang/Runnable;

.field transitionSet:Landroid/transition/TransitionSet;

.field viewToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;",
            ">;"
        }
    .end annotation
.end field

.field viewToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;",
            ">;"
        }
    .end annotation
.end field

.field viewsByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;",
            ">;"
        }
    .end annotation
.end field

.field wasChanged:Z


# direct methods
.method public static synthetic $r8$lambda$IUDiE_JKSqDh2a8SGLUlrJw1kmA(Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lambda$lock$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewsByTag:Ljava/util/HashMap;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 51
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->transitionSet:Landroid/transition/TransitionSet;

    .line 52
    new-instance v0, Landroid/transition/Fade;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0xc8

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;)V

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->setDuration(J)Landroid/transition/Transition;

    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 69
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->transitionSet:Landroid/transition/TransitionSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    :cond_0
    return-void
.end method

.method private synthetic lambda$lock$0()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lockAnimation:Z

    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->runDelayed()V

    return-void
.end method

.method private lock()V
    .locals 3

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lockAnimation:Z

    .line 112
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;)V

    const-wide/16 v1, 0x2bc

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private runDelayed()V
    .locals 10

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->transitionSet:Landroid/transition/TransitionSet;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 130
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;

    const/4 v3, 0x0

    .line 131
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 132
    iget-object v4, v2, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->tag:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 134
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 141
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 142
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 144
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 145
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 147
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewsByTag:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 148
    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;

    .line 150
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewsByTag:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 152
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lock()V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->onViewsUpdated:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 156
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void
.end method


# virtual methods
.method public addNotification(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewsByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p3, v0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->tag:Ljava/lang/String;

    .line 80
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object p1, v0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewsByTag:Ljava/util/HashMap;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 85
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->startAnimation()V

    .line 87
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lockAnimation:Z

    if-eqz p1, :cond_2

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->wasChanged:Z

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 91
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public animateLayoutChanges()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->wasChanged:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lock()V

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->wasChanged:Z

    return-void
.end method

.method public beforeLayoutChanges()V
    .locals 2

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->wasChanged:Z

    .line 162
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lockAnimation:Z

    if-nez v0, :cond_0

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->transitionSet:Landroid/transition/TransitionSet;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public getChildsHight()I
    .locals 3

    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x10

    .line 181
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public removeNotification(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewsByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;

    if-eqz p1, :cond_2

    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->lockAnimation:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->viewToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->wasChanged:Z

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnViewsUpdated(Ljava/lang/Runnable;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;->onViewsUpdated:Ljava/lang/Runnable;

    return-void
.end method
