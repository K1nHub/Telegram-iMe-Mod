.class public Lorg/telegram/ui/ProfileNotificationsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;,
        Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

.field private addingException:Z

.field private animatorSet:Landroid/animation/AnimatorSet;

.field avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private avatarRow:I

.field private avatarSectionRow:I

.field private callsRow:I

.field private callsVibrateRow:I

.field private colorRow:I

.field private customResetRow:I

.field private customResetShadowRow:I

.field private delegate:Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;

.field private dialogId:J

.field private enableRow:I

.field private generalRow:I

.field private ledInfoRow:I

.field private ledRow:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private needReset:Z

.field private notificationsEnabled:Z

.field private popupDisabledRow:I

.field private popupEnabledRow:I

.field private popupInfoRow:I

.field private popupRow:I

.field private previewRow:I

.field private priorityInfoRow:I

.field private priorityRow:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private ringtoneInfoRow:I

.field private ringtoneRow:I

.field private rowCount:I

.field private smartRow:I

.field private soundRow:I

.field private topicId:I

.field private vibrateRow:I


# direct methods
.method public static synthetic $r8$lambda$D0rYp_d1apYHlosUiy8cGvhAnXY(Lorg/telegram/ui/ProfileNotificationsActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$createView$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$G2zFBL2QmmqobdvMBt-R1xO96go(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$createView$6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GsQw4WLyiECo5--JJ9dh8lj_pgM(Lorg/telegram/ui/ProfileNotificationsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$H_zUurbnvhBq-N4eln7cdFyGPks(Lorg/telegram/ui/ProfileNotificationsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$createView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$LaS_omer61uYnbrsAGH3b_lRq8g(Lorg/telegram/ui/ProfileNotificationsActivity;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$createView$4(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZJGAboaP3rYUU-eGTFqIx5PolE(Lorg/telegram/ui/ProfileNotificationsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$getThemeDescriptions$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$xiBIT_BHVUKVRq7oFasvJorGfdg(Lorg/telegram/ui/ProfileNotificationsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$zrD25v1Bf6DqSQOGtKwnpbiCORk(Lorg/telegram/ui/ProfileNotificationsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->lambda$createView$2()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 129
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 130
    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string p2, "dialog_id"

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    const-string p2, "topic_id"

    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    const-string p2, "exception"

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->addingException:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->addingException:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->delegate:Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->previewRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->generalRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledInfoRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityInfoRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->enableRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarSectionRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetShadowRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ProfileNotificationsActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private checkRowsEnabled()V
    .locals 7

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    .line 571
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 572
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 573
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    .line 574
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 575
    iget v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->enableRow:I

    if-eq v5, v6, :cond_6

    iget v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetRow:I

    if-eq v5, v6, :cond_6

    if-eqz v4, :cond_5

    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    const/4 v6, 0x7

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 603
    :cond_0
    iget v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->previewRow:I

    if-ne v5, v4, :cond_6

    .line 604
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 605
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 598
    :cond_1
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/RadioCell;

    .line 599
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/RadioCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 593
    :cond_2
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextColorCell;

    .line 594
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 588
    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 589
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 583
    :cond_4
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 584
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 578
    :cond_5
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    .line 579
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setEnabled(ZLjava/util/ArrayList;)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    .line 614
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 616
    :cond_8
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 617
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$createView$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x1

    .line 371
    iput-boolean p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->needReset:Z

    .line 373
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "custom_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notify2_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 374
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 375
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->delegate:Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;

    if-eqz p1, :cond_0

    .line 376
    iget-wide p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;->didRemoveException(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1()V
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 424
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 2

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 439
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 445
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$4(Ljava/lang/String;II)V
    .locals 3

    .line 459
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smart_max_count_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smart_delay_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 462
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 464
    iget p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5()V
    .locals 2

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 473
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V
    .locals 9

    .line 363
    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetRow:I

    const/4 v1, 0x0

    if-ne p4, v0, :cond_1

    .line 367
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p3, p1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/messenger/R$string;->ResetCustomNotificationsAlertTitle:I

    .line 368
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->ResetCustomNotificationsAlert:I

    .line 369
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->Reset:I

    .line 370
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 379
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 381
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 382
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_12

    .line 384
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 386
    :cond_1
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I

    if-ne p4, p1, :cond_2

    .line 387
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 388
    iget-wide p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    const-string p4, "dialog_id"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 389
    iget p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    const-string p3, "topic_id"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    new-instance p2, Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object p3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/NotificationsSoundActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_3

    .line 391
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    const/4 v0, 0x1

    if-ne p4, p1, :cond_6

    .line 393
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.extra.ringtone.TYPE"

    .line 394
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 395
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 396
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 397
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 402
    sget-object p4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    if-eqz p4, :cond_3

    .line 404
    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 407
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringtone_path_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p3, "NoSound"

    .line 408
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 409
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move-object v1, p4

    goto :goto_1

    .line 412
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_5
    :goto_1
    const-string p2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 416
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p2, 0xd

    .line 417
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 419
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 421
    :cond_6
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I

    if-ne p4, p1, :cond_7

    .line 422
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    iget-object v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;JIZZLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 427
    :cond_7
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->enableRow:I

    if-ne p4, p1, :cond_8

    .line 428
    check-cast p3, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 429
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    .line 430
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 431
    invoke-direct {p0}, Lorg/telegram/ui/ProfileNotificationsActivity;->checkRowsEnabled()V

    goto/16 :goto_3

    .line 432
    :cond_8
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->previewRow:I

    if-ne p4, p1, :cond_9

    .line 433
    check-cast p3, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 434
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content_preview_"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p4

    xor-int/2addr p4, v0

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_3

    .line 436
    :cond_9
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    if-ne p4, p1, :cond_a

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calls_vibrate_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    iget-object v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 442
    :cond_a
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    if-ne p4, p1, :cond_b

    .line 443
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    const/4 v5, -0x1

    new-instance v6, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    iget-object v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createPrioritySelectDialog(Landroid/app/Activity;JIILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 448
    :cond_b
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    const/4 v1, 0x2

    if-ne p4, p1, :cond_e

    .line 449
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 452
    :cond_c
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 453
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "smart_max_count_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 454
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smart_delay_"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0xb4

    invoke-interface {p1, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p3, :cond_d

    goto :goto_2

    :cond_d
    move v1, p3

    .line 458
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, v1, p1, p4, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createSoundFrequencyPickerDialog(Landroid/content/Context;IILorg/telegram/ui/Components/AlertsCreator$SoundFrequencyDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_3

    .line 467
    :cond_e
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I

    if-ne p4, p1, :cond_10

    .line 468
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    .line 471
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    const/4 v4, -0x1

    new-instance v5, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JIILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 476
    :cond_10
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I

    const/4 v2, 0x0

    const-string v3, "popup_"

    if-ne p4, p1, :cond_11

    .line 477
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    check-cast p3, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {p3, v0, v0}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 479
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 481
    check-cast p1, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_3

    .line 483
    :cond_11
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I

    if-ne p4, p1, :cond_12

    .line 484
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 485
    check-cast p3, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {p3, v0, v0}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 488
    check-cast p1, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    :cond_12
    :goto_3
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$7()V
    .locals 5

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 988
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 989
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell2;

    if-eqz v4, :cond_0

    .line 990
    check-cast v3, Lorg/telegram/ui/Cells/UserCell2;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell2;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarSelectorBlue:I

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 263
    iget-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ProfileNotificationsActivity$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ProfileNotificationsActivity$1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 316
    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 317
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/16 v8, 0x33

    iget-boolean v9, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v9, :cond_0

    const/16 v9, 0x38

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0x28

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 321
    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    .line 322
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    neg-long v6, v6

    iget v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    invoke-virtual {v1, v6, v7, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    .line 324
    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1, v2, v5, v6}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 325
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 327
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 329
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 332
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 334
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 335
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->addingException:Z

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v2, Lorg/telegram/messenger/R$string;->NotificationsNewException:I

    const-string v3, "NotificationsNewException"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Done:I

    const-string v3, "Done"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_2

    .line 343
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v2, Lorg/telegram/messenger/R$string;->CustomNotifications:I

    const-string v3, "CustomNotifications"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 346
    :goto_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 347
    check-cast v1, Landroid/widget/FrameLayout;

    .line 348
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 350
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    .line 351
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ProfileNotificationsActivity$2;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 556
    sget p2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, p2, :cond_0

    .line 558
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 978
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 984
    new-instance v11, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProfileNotificationsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity;)V

    .line 996
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/TextColorCell;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-class v6, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-class v6, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v2

    const/4 v2, 0x6

    const-class v6, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v6, v5, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v21

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v12

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v12

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v21, v24

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v22, v4

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v7, v6, v12

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v29

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v6

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextColorCell;

    aput-object v8, v6, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v6

    move/from16 v33, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v8, v6, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v6

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v6, v3, v12

    const-string v6, "radioButton"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v8, v13, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v9, v8, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v8

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v8, v6, v12

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v6

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v13, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v6, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v6

    move/from16 v33, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v12

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v12

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v6, v5, v12

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v28, v5

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v2, v5, v12

    const-string v2, "statusColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object v9, v11

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v13, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v2, v5, v12

    const-string v2, "statusOnlineColor"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object v2, v14

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v13, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v5, v4, v12

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v17, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.extra.ringtone.PICKED_URI"

    .line 502
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    const/4 p3, 0x0

    const/16 v0, 0xd

    if-eqz p2, :cond_4

    .line 505
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_2

    .line 508
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 509
    sget p3, Lorg/telegram/messenger/R$string;->DefaultRingtone:I

    const-string v2, "DefaultRingtone"

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 514
    :cond_2
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 515
    sget p3, Lorg/telegram/messenger/R$string;->SoundDefault:I

    const-string v2, "SoundDefault"

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 520
    :goto_0
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 524
    :cond_4
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 525
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 527
    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    const-string v4, "NoSound"

    if-ne p1, v3, :cond_6

    const-string v3, "sound_path_"

    const-string v5, "sound_"

    if-eqz p3, :cond_5

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 531
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 533
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget-wide v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget p3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    invoke-virtual {p2, v2, v3, p3}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannel(JI)V

    goto :goto_2

    :cond_6
    if-ne p1, v0, :cond_8

    const-string v3, "ringtone_path_"

    const-string v5, "ringtone_"

    if-eqz p3, :cond_7

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 542
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 543
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    :cond_8
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 547
    iget-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    if-eqz p2, :cond_a

    if-ne p1, v0, :cond_9

    .line 548
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    goto :goto_3

    :cond_9
    iget p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I

    :goto_3
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_a
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 7

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    .line 140
    iget-boolean v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->addingException:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    add-int/2addr v4, v3

    .line 141
    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarRow:I

    add-int/lit8 v5, v4, 0x1

    .line 142
    iput v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarSectionRow:I

    goto :goto_0

    .line 144
    :cond_0
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarRow:I

    .line 145
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->avatarSectionRow:I

    .line 147
    :goto_0
    iget v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->generalRow:I

    if-nez v1, :cond_2

    .line 148
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    if-eqz v1, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->enableRow:I

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v5, 0x1

    .line 149
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->enableRow:I

    .line 153
    :goto_2
    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->previewRow:I

    goto :goto_3

    .line 156
    :cond_3
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->previewRow:I

    .line 158
    :goto_3
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I

    add-int/lit8 v1, v4, 0x1

    .line 159
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I

    .line 160
    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 161
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    goto :goto_4

    .line 163
    :cond_4
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I

    .line 165
    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_5

    .line 166
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    goto :goto_5

    .line 168
    :cond_5
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I

    .line 170
    :goto_5
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->priorityInfoRow:I

    .line 172
    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 173
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 174
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v0

    .line 178
    :goto_6
    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    .line 179
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I

    add-int/lit8 v1, v4, 0x1

    .line 180
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I

    add-int/lit8 v4, v1, 0x1

    .line 181
    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I

    add-int/lit8 v1, v4, 0x1

    .line 182
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I

    goto :goto_7

    .line 184
    :cond_7
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I

    .line 185
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I

    .line 186
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I

    .line 187
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I

    .line 190
    :goto_7
    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 191
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I

    add-int/lit8 v1, v4, 0x1

    .line 192
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    add-int/lit8 v4, v1, 0x1

    .line 193
    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    add-int/lit8 v1, v4, 0x1

    .line 194
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I

    goto :goto_8

    .line 196
    :cond_8
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I

    .line 197
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I

    .line 198
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I

    .line 199
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I

    .line 202
    :goto_8
    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledRow:I

    add-int/lit8 v1, v4, 0x1

    .line 203
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I

    add-int/lit8 v4, v1, 0x1

    .line 204
    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->ledInfoRow:I

    .line 206
    iget-boolean v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->addingException:Z

    if-nez v1, :cond_9

    add-int/lit8 v1, v4, 0x1

    .line 207
    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetRow:I

    add-int/lit8 v2, v1, 0x1

    .line 208
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetShadowRow:I

    goto :goto_9

    .line 210
    :cond_9
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetRow:I

    .line 211
    iput v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->customResetShadowRow:I

    .line 214
    :goto_9
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v1

    .line 215
    iget-boolean v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->addingException:Z

    if-eqz v2, :cond_a

    xor-int/lit8 v0, v1, 0x1

    .line 216
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_a

    .line 218
    :cond_a
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 220
    iget-wide v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c

    if-eqz v4, :cond_b

    .line 225
    iput-boolean v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_a

    .line 227
    :cond_b
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_a

    :cond_c
    if-ne v1, v3, :cond_d

    .line 230
    iput-boolean v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_a

    :cond_d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 232
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    goto :goto_a

    .line 234
    :cond_e
    iput-boolean v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z

    .line 238
    :goto_a
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 239
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 244
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 245
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->needReset:Z

    if-nez v0, :cond_0

    .line 246
    iget-wide v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->topicId:I

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v0

    .line 247
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity;->delegate:Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;

    return-void
.end method
