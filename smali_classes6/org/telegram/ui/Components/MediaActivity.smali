.class public Lorg/telegram/ui/Components/MediaActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;
.implements Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
    }
.end annotation


# instance fields
.field private actionModeMessageObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private applyBulletin:Ljava/lang/Runnable;

.field avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field private calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

.field private customScreenType:I

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dialogId:J

.field private filterPhotos:Z

.field private filterVideos:Z

.field private final firstSubtitleCheck:[Z

.field private floatingAnimator:Landroid/animation/AnimatorSet;

.field private floatingButton:Landroid/widget/ImageView;

.field private floatingButtonContainer:Landroid/widget/FrameLayout;

.field private floatingButtonHideProgress:F

.field private floatingButtonTranslation:F

.field private floatingButtonTranslation1:F

.field private floatingButtonTranslation2:F

.field private floatingHidden:Z

.field private initialTab:I

.field private lastTab:I

.field private nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

.field private shiftDp:I

.field private showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final subtitleAnimator:[Landroid/animation/ValueAnimator;

.field private final subtitleShown:[Z

.field private final subtitleT:[F

.field private subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

.field private tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

.field private titles:[Landroid/widget/FrameLayout;

.field private titlesContainer:Landroid/widget/FrameLayout;

.field private topicId:I

.field private type:I

.field private zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;


# direct methods
.method public static synthetic $r8$lambda$2VX20iuMsZcsJKa92RHWvrQYS5s(Lorg/telegram/ui/Components/MediaActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$hideFloatingButton$15(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2g0ta3Rw2IWBp9JLJYAgwLABjTM(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6jeToMtc59a8Q501BmV3xZTbrrg(Lorg/telegram/ui/Components/MediaActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$7(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AjCxr45l05Wg5UzdZstJ0tb031k(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dqn7dQQt_fsLOhVPICENv58Bafk(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J-DDdiPWHd9kwKfbnm9ZWR-qNow(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MFs14sPuKi9G2YW7G7AQ_k6cuA8(Lorg/telegram/ui/Components/MediaActivity;[ZLjava/util/ArrayList;[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$9([ZLjava/util/ArrayList;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NJ9IJGtM7g4SHEx9eoygoP3iUD0(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NTa--8tPNdJkT2UqlocWwQ32nu8(Lorg/telegram/ui/Components/MediaActivity;[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$10([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8_hZ0Hnn0dxS1EsIn-h7kQoVOo(Lorg/telegram/ui/Components/MediaActivity;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$8(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIp1qm3pn6hMbkwXKhZUEn-KSkc(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$0(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XKqS5eS3AvGLmBUYOjWfea7ESko(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$aseY7aYoUFmUR5lyGEfhRsTpNO0(Lorg/telegram/ui/Components/MediaActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$updateMediaCount$14(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWn6Zo0J6ZI6PCXMuUZrX7Nt7Lw(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cqCH6CMsgOP7Y_F70qPt37IJs8I(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g8g7HLfLLoiDVtSQ8Z1MVRqe-QY(Lorg/telegram/ui/Components/MediaActivity;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity;->lambda$showSubtitle$16(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hZq3nvKbBcGA_uadDMgrS-inQ5A(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->lambda$onGetDebugItems$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$onmrwe85CflgSVZLTf6Y53Jlzuo(Lorg/telegram/ui/Components/MediaActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$updateMediaCount$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmi9gkwRful_SdpABIqeVtQz0OQ(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$12(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V
    .locals 1

    .line 167
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/widget/FrameLayout;

    .line 140
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-array v0, p1, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 141
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v0, p1, [Lorg/telegram/ui/Components/AnimatedTextView;

    .line 142
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    const/16 v0, -0xc

    .line 151
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    new-array v0, p1, [Z

    .line 1137
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    new-array v0, p1, [F

    .line 1138
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    new-array v0, p1, [Z

    .line 1139
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    new-array p1, p1, [Landroid/animation/ValueAnimator;

    .line 1140
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    .line 168
    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MediaActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/MediaActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/BackDrawable;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/MediaActivity;)[Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/MediaActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/MediaActivity;)[F
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method private hideFloatingButton(ZZ)V
    .locals 5

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move p1, v1

    .line 1100
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 1103
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1105
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 1108
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1109
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 1110
    iget v4, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    aput v4, p2, v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1111
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1116
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MediaActivity$7;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1125
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1126
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1127
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1128
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    .line 1130
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    const/16 p2, 0x64

    .line 1131
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    mul-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation:F

    .line 1132
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateFloatingButtonOffset()V

    .line 1133
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    const/16 v3, 0x8

    :cond_7
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private isMusicType()Z
    .locals 2

    .line 123
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->customScreenType:I

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_MUSIC:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$createView$0(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 338
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$10([Z)V
    .locals 1

    const/4 v0, 0x0

    .line 541
    aget-boolean p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 542
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 544
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 12

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 490
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 491
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    .line 493
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result p1

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 496
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    if-eqz v3, :cond_3

    move v3, v2

    move v4, v3

    .line 498
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 499
    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 500
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v5, :cond_2

    .line 501
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    .line 506
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    .line 507
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScroll(Z)V

    if-eqz p1, :cond_5

    .line 509
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    .line 511
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 514
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    move v5, v2

    .line 515
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 516
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 517
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    aput-boolean v7, v3, v5

    .line 518
    iput-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 520
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v5, v6, v7, v0}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    .line 522
    new-instance v5, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0, v0, p1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/MediaActivity;Ljava/util/ArrayList;Z)V

    iput-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    .line 525
    new-instance v11, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda16;

    invoke-direct {v11, p0, v1, v0, v3}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/MediaActivity;[ZLjava/util/ArrayList;[Z)V

    const-string v0, "Undo"

    if-eqz p1, :cond_8

    .line 536
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$raw;->contact_check:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "StorySavedTitle"

    invoke-static {v2, v4, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string p1, "StorySavedSubtitle"

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_3

    .line 538
    :cond_8
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$raw;->chats_archived:I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "StoryArchived"

    invoke-static {v2, v4, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1388

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 540
    :goto_3
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/MediaActivity;[Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setOnHideListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 1

    .line 561
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 562
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromFloatingButton(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 4

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomIn()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 3

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomOut()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 2

    .line 382
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-nez v0, :cond_0

    .line 383
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 2

    .line 393
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-nez v0, :cond_0

    .line 394
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 404
    new-instance p1, Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p1, v1, v0, v2, v3}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$7(Ljava/lang/Integer;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    return-void
.end method

.method private synthetic lambda$createView$8(Ljava/util/ArrayList;Z)V
    .locals 2

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesPinned(Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$createView$9([ZLjava/util/ArrayList;[Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 526
    aput-boolean v1, p1, v0

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 528
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 529
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 530
    aget-boolean v1, p3, v0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$hideFloatingButton$15(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    const/16 p1, 0x64

    .line 1113
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation:F

    .line 1114
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateFloatingButtonOffset()V

    return-void
.end method

.method private synthetic lambda$onGetDebugItems$17()V
    .locals 2

    .line 1243
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->isLearning(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->setLearning(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$showSubtitle$16(ILandroid/animation/ValueAnimator;)V
    .locals 3

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 1157
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    const v1, 0x3f8e353f    # 1.111f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1158
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1159
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1160
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateMediaCount$13(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1007
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateMediaCount$14(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1019
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showSubtitle(IZZ)V
    .locals 6

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    aget-boolean v1, v0, p1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 1145
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    aget-boolean v2, v1, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v4

    .line 1146
    :goto_0
    aput-boolean v4, v1, p1

    .line 1147
    aput-boolean p2, v0, p1

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 1149
    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_2
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_4

    .line 1153
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v5, v5, p1

    aput v5, v2, v4

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    aput-object v0, p3, p1

    .line 1155
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MediaActivity;I)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1162
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity$8;-><init>(Lorg/telegram/ui/Components/MediaActivity;IZ)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1176
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    const-wide/16 v0, 0x140

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1177
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1178
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 1180
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    if-eqz p2, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    aput v2, p3, p1

    .line 1181
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    const v2, 0x3f8e353f    # 1.111f

    if-eqz p2, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {p3, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1182
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {p3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1183
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    const/16 v2, 0x8

    if-eqz p2, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    :goto_3
    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1184
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1185
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p1, p3, p1

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    move v4, v2

    :goto_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private updateColors()V
    .locals 4

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v3

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1205
    aget-object v0, v0, v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1208
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_1

    .line 1209
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateColors()V

    .line 1211
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x2

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 1212
    aget-object v0, v0, v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateFloatingButtonOffset()V
    .locals 3

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 1087
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation:F

    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation1:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation2:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateMediaCount()V
    .locals 14

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    .line 959
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    .line 960
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 962
    iget v4, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eq v4, v3, :cond_0

    :goto_0
    move v4, v8

    goto :goto_1

    :cond_0
    if-ne v0, v7, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    if-ne v0, v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    const/16 v9, 0x9

    if-eq v0, v6, :cond_d

    if-eq v0, v9, :cond_d

    if-ne v0, v7, :cond_3

    goto/16 :goto_3

    :cond_3
    if-ltz v0, :cond_c

    .line 1043
    aget v6, v1, v0

    if-gez v6, :cond_4

    goto/16 :goto_2

    :cond_4
    if-nez v0, :cond_7

    .line 1047
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    const/4 v3, 0x6

    aget v1, v1, v3

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Photos"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 1050
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    const/4 v3, 0x7

    aget v1, v1, v3

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Videos"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 1053
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v8

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Media"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    :cond_7
    if-ne v0, v3, :cond_8

    .line 1056
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v3

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Files"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_8
    if-ne v0, v5, :cond_9

    .line 1059
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1060
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Voice"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_9
    const/4 v5, 0x3

    if-ne v0, v5, :cond_a

    .line 1062
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Links"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_a
    const/4 v5, 0x4

    if-ne v0, v5, :cond_b

    .line 1065
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "MusicFiles"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    :cond_b
    const/4 v5, 0x5

    if-ne v0, v5, :cond_c

    .line 1068
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "GIFs"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_c
    :goto_2
    return-void

    .line 972
    :cond_d
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f

    .line 973
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomOut()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 974
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    move v10, v5

    goto :goto_4

    :cond_e
    move v10, v4

    :goto_4
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 976
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_11

    .line 977
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomIn()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 978
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_10

    move v10, v5

    goto :goto_5

    :cond_10
    move v10, v4

    :goto_5
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 981
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_12

    if-eq v0, v7, :cond_12

    .line 983
    invoke-direct {p0, v8, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 984
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v10, v10, v8

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "ProfileMyStoriesCount"

    invoke-static {v12, v1, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_6

    .line 986
    :cond_12
    invoke-direct {p0, v8, v8, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 989
    :goto_6
    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v3, :cond_16

    .line 990
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_13

    if-eq v0, v7, :cond_13

    .line 992
    invoke-direct {p0, v3, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 993
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v10, v10, v3

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "ProfileStoriesArchiveCount"

    invoke-static {v12, v1, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 995
    :cond_13
    invoke-direct {p0, v3, v8, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    :goto_7
    if-ne v0, v9, :cond_15

    .line 997
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_14

    goto :goto_8

    :cond_14
    move v1, v8

    goto :goto_9

    :cond_15
    :goto_8
    move v1, v3

    :goto_9
    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    .line 1000
    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-wide/16 v9, 0xdc

    const/4 v11, 0x0

    if-eqz v1, :cond_1b

    if-eq v0, v7, :cond_18

    .line 1001
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v12

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-gtz v1, :cond_17

    goto :goto_a

    :cond_17
    move v1, v8

    goto :goto_b

    :cond_18
    :goto_a
    move v1, v3

    :goto_b
    if-nez v1, :cond_19

    .line 1003
    iget-object v12, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1005
    :cond_19
    iget-object v12, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    if-eqz v1, :cond_1a

    move v13, v11

    goto :goto_c

    :cond_1a
    move v13, v5

    :goto_c
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda14;

    invoke-direct {v13, p0, v1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/MediaActivity;Z)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1009
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1012
    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_1f

    if-ne v0, v7, :cond_1c

    move v12, v3

    goto :goto_d

    :cond_1c
    move v12, v8

    :goto_d
    if-eqz v12, :cond_1d

    .line 1015
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1017
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v12, :cond_1e

    goto :goto_e

    :cond_1e
    move v11, v5

    :goto_e
    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v11, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda13;

    invoke-direct {v11, p0, v12}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/MediaActivity;Z)V

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1021
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1025
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v1, :cond_23

    if-eqz v2, :cond_20

    .line 1026
    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    if-ne v2, v0, :cond_20

    move v2, v3

    goto :goto_f

    :cond_20
    move v2, v8

    :goto_f
    if-ne v0, v6, :cond_22

    .line 1028
    iget-object v6, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    if-nez v6, :cond_21

    move v6, v8

    goto :goto_10

    :cond_21
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    :goto_10
    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, "ArchiveStories"

    invoke-static {v10, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/String;Z)V

    goto :goto_11

    .line 1030
    :cond_22
    sget v6, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    const-string v9, "SaveToProfile"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/String;Z)V

    .line 1032
    :goto_11
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    .line 1035
    :cond_23
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_26

    if-eq v0, v7, :cond_24

    .line 1036
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v0

    if-lez v0, :cond_24

    goto :goto_12

    :cond_24
    move v3, v8

    .line 1037
    :goto_12
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_25

    move v4, v5

    :cond_25
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_26
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 953
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v2, p1

    .line 231
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    .line 233
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 234
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 235
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/MediaActivity$1;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/MediaActivity$1;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 277
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setColorFilterMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 278
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 279
    new-instance v14, Lorg/telegram/ui/Components/MediaActivity$2;

    invoke-direct {v14, v15, v2, v1}, Lorg/telegram/ui/Components/MediaActivity$2;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    const/4 v13, 0x1

    .line 326
    iput-boolean v13, v14, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    .line 327
    iput-object v14, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 329
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 330
    iget v3, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/16 v12, 0x9

    const/16 v10, 0xa

    const/16 v4, 0x8

    const/4 v9, 0x0

    const/16 v8, 0x38

    if-ne v3, v13, :cond_0

    .line 331
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v5, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v6, 0x55

    invoke-static {v8, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-direct {v5, v2, v0, v7, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 335
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 336
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 337
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 338
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 341
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-direct {v5, v2, v0, v7, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 342
    sget v7, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 343
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 345
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 346
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 347
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_zoomin:I

    sget v13, Lorg/telegram/messenger/R$string;->MediaZoomIn:I

    const-string v9, "MediaZoomIn"

    invoke-static {v9, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v7, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 348
    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_zoomout:I

    sget v9, Lorg/telegram/messenger/R$string;->MediaZoomOut:I

    const-string v13, "MediaZoomOut"

    invoke-static {v13, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v12, v7, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 362
    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    sget v9, Lorg/telegram/messenger/R$string;->Calendar:I

    const-string v13, "Calendar"

    invoke-static {v13, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v10, v7, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 376
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 377
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 378
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 379
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v7, 0x6

    sget v9, Lorg/telegram/messenger/R$string;->MediaShowPhotos:I

    const-string v13, "MediaShowPhotos"

    invoke-static {v13, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v11, v9, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 380
    iget-boolean v7, v15, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 381
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v7, 0x7

    sget v9, Lorg/telegram/messenger/R$string;->MediaShowVideos:I

    const-string v13, "MediaShowVideos"

    invoke-static {v13, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v11, v9, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 391
    iget-boolean v7, v15, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 392
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-direct {v5, v2, v0, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 403
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 404
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 409
    :cond_0
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v11

    .line 411
    :goto_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    const/16 v5, 0x77

    .line 412
    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v11

    .line 413
    :goto_1
    iget v6, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v9, 0x3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    :goto_2
    const-string v7, "fonts/rmedium.ttf"

    const/16 v19, 0xe

    const/16 v8, 0x48

    const/4 v11, 0x2

    if-ge v3, v6, :cond_6

    .line 414
    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v4, v6, v3

    .line 415
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v3

    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v6, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v3

    .line 418
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setPivotX(F)V

    .line 419
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setPivotY(F)V

    .line 421
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 422
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 423
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 424
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    const v6, 0x3fa66666    # 1.3f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 425
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    .line 426
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v11}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 427
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v3

    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v3

    const/16 v23, -0x2

    const/16 v24, -0x2

    const/16 v25, 0x33

    const/16 v7, 0x76

    if-eqz v0, :cond_3

    move/from16 v26, v7

    goto :goto_3

    :cond_3
    move/from16 v26, v8

    :goto_3
    const/16 v27, 0x0

    const/16 v28, 0x38

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, 0x1

    invoke-direct {v6, v2, v9, v9, v9}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    aput-object v6, v4, v3

    .line 430
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v23, v4, v3

    const v24, 0x3ecccccd    # 0.4f

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x140

    sget-object v29, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 431
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v4, v4, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 432
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v4, v4, v3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 433
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v3

    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v6, v6, v3

    const/16 v23, -0x2

    const/16 v24, -0x2

    const/16 v25, 0x33

    if-eqz v0, :cond_4

    move/from16 v26, v7

    goto :goto_4

    :cond_4
    move/from16 v26, v8

    :goto_4
    const/16 v27, 0x0

    const/16 v28, 0x38

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_5

    .line 436
    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    const/16 v10, 0xa

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 440
    :cond_6
    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$3;

    invoke-direct {v3, v15, v2}, Lorg/telegram/ui/Components/MediaActivity$3;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 455
    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 456
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/16 v10, 0x15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setRoundRadius(I)V

    .line 457
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 458
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 459
    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 460
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    .line 461
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/16 v23, 0x2a

    const/16 v24, 0x2a

    const/16 v25, 0x33

    const/16 v26, 0x40

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v24, 0x3ecccccd    # 0.4f

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x140

    .line 467
    sget-object v29, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 468
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 469
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 470
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 471
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 472
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v23, -0x2

    const/16 v24, -0x1

    const/16 v25, 0x17

    if-eqz v0, :cond_8

    const/16 v0, 0x30

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v26, v0, 0x48

    const/16 v27, -0x2

    const/16 v28, 0x48

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_c

    .line 475
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v15, v2, v3}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    .line 476
    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 480
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v22, 0xa

    .line 481
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v7, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 482
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v15, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 483
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 484
    sget v3, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    const-string v4, "SaveToProfile"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/String;Z)V

    .line 485
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 486
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 487
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 488
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 548
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 549
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 551
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$4;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/MediaActivity$4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-static {v15, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 558
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    .line 559
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 560
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    .line 566
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 567
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 568
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrCaptureStory:I

    const-string v4, "AccDescrCaptureStory"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x38

    .line 583
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v3, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 584
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v7, -0x1000000

    if-ge v4, v10, :cond_9

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 586
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v7, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 587
    new-instance v9, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v11, 0x0

    invoke-direct {v9, v8, v3, v11, v11}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v3, 0x38

    .line 588
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    goto :goto_7

    :cond_9
    const/16 v3, 0x38

    .line 591
    :goto_7
    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v9, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    const/16 v11, 0x11

    invoke-static {v3, v3, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_b

    .line 593
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v8, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ge v4, v10, :cond_a

    .line 595
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 596
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v7, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 597
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v11, 0x0

    invoke-direct {v4, v3, v0, v11, v11}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v8, 0x38

    .line 598
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v4

    goto :goto_8

    :cond_a
    const/16 v8, 0x38

    const/4 v11, 0x0

    .line 601
    :goto_8
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_b
    move v8, v3

    const/4 v11, 0x0

    :goto_9
    const/4 v9, 0x1

    .line 604
    invoke-direct {v15, v9, v11}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    goto :goto_a

    :cond_c
    move v9, v3

    const/16 v8, 0x38

    const/4 v11, 0x0

    const/16 v22, 0xa

    .line 607
    :goto_a
    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$6;

    move-object v0, v7

    iget-wide v3, v15, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    const/16 v16, 0x0

    move-object/from16 v30, v6

    move/from16 v6, v16

    const/16 v16, 0x0

    move-object/from16 v31, v7

    move-object/from16 v7, v16

    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/16 v16, 0x0

    const/16 v17, 0x38

    iget-object v9, v15, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    const/16 v16, 0x1

    const/16 v18, 0x3

    const/16 v20, 0x0

    move/from16 v10, v20

    new-instance v11, Lorg/telegram/ui/Components/MediaActivity$5;

    move-object v12, v11

    invoke-direct {v11, v15}, Lorg/telegram/ui/Components/MediaActivity$5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    const/4 v11, 0x0

    move v13, v11

    .line 643
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    move-object/from16 v21, v14

    move-object v14, v11

    move-object v11, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 p1, v11

    move-object/from16 v11, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v21

    invoke-direct/range {v0 .. v16}, Lorg/telegram/ui/Components/MediaActivity$6;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v2, 0x1

    .line 821
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    .line 822
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 823
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 825
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_d

    .line 826
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x77

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x40

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v4, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_d
    move-object/from16 v4, v21

    .line 828
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 830
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, p1

    .line 831
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 832
    iget-object v3, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v3, v2, :cond_e

    const/4 v3, 0x0

    .line 834
    invoke-direct {v0, v3, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 835
    invoke-direct {v0, v2, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    const/4 v5, 0x2

    .line 836
    invoke-direct {v0, v5, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 839
    :goto_c
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_14

    .line 840
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x3c

    const/16 v9, 0x15

    if-lt v7, v9, :cond_f

    move/from16 v10, v17

    goto :goto_d

    :cond_f
    move v10, v8

    :goto_d
    if-lt v7, v9, :cond_10

    move/from16 v11, v17

    goto :goto_e

    :cond_10
    move v11, v8

    :goto_e
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_11

    move/from16 v9, v18

    goto :goto_f

    :cond_11
    const/4 v9, 0x5

    :goto_f
    or-int/lit8 v12, v9, 0x50

    if-eqz v7, :cond_12

    move/from16 v13, v19

    goto :goto_10

    :cond_12
    move v13, v3

    :goto_10
    const/4 v14, 0x0

    if-eqz v7, :cond_13

    move v15, v3

    goto :goto_11

    :cond_13
    move/from16 v15, v19

    :goto_11
    const/16 v16, 0x4e

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    const/16 v7, 0x57

    if-eqz v6, :cond_15

    const/4 v8, -0x2

    const/4 v9, -0x1

    .line 843
    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_15
    const/4 v9, -0x1

    .line 845
    :goto_12
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_16

    const/16 v8, 0x40

    .line 846
    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    const/4 v6, 0x0

    .line 850
    iget v7, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v7, v2, :cond_17

    .line 851
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v3

    const-string v8, "ProfileMyStories"

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 852
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v2

    const-string v8, "ProfileStoriesArchive"

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 854
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v7, v5

    sget v7, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v8, "Settings"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 855
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v5

    if-nez v5, :cond_18

    .line 856
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScroll(Z)V

    goto :goto_13

    .line 859
    :cond_17
    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 860
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 862
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 864
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v3

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    move-object/from16 v7, v30

    .line 865
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_14

    :cond_18
    :goto_13
    move-object/from16 v7, v30

    goto :goto_15

    :cond_19
    move-object/from16 v7, v30

    .line 869
    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 870
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 872
    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v8, :cond_1a

    .line 873
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    sget v8, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v9, "SavedMessages"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 874
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const v5, 0x3f4ccccd    # 0.8f

    .line 875
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_15

    .line 877
    :cond_1a
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v3

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 878
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_14

    .line 883
    :cond_1b
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 885
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v3

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 886
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_14
    move-object v6, v5

    .line 891
    :cond_1c
    :goto_15
    invoke-static {v6, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 892
    iget-object v8, v0, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const-string v9, "50_50"

    invoke-virtual {v8, v5, v9, v7, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 894
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 895
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    sget v6, Lorg/telegram/messenger/R$string;->SharedContentTitle:I

    const-string v7, "SharedContentTitle"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 898
    :cond_1d
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchItemVisible()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget v5, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v5, v2, :cond_1e

    .line 899
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 901
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCalendarItemVisible()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget v5, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v5, v2, :cond_1f

    .line 902
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 904
    :cond_1f
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    :goto_16
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 908
    invoke-static {v1, v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 909
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    .line 910
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    .line 912
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_20

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_20

    .line 913
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 916
    :cond_20
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_21

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_21

    .line 917
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    :cond_21
    return-object v4
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 214
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 215
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 216
    iget-wide v1, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    .line 217
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 218
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz p2, :cond_2

    .line 219
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    goto :goto_0

    .line 222
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    if-ne p1, p2, :cond_2

    .line 223
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 224
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 1078
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    return-wide v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 1219
    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda18;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    .line 1220
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v9
.end method

.method public getTopicId()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:I

    return v0
.end method

.method public isAllowPinnedPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 1230
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1231
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1234
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 937
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 941
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-wide v1, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 945
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCurrentTabFirst()Z

    move-result p1

    return p1
.end method

.method public mediaCountUpdated()V
    .locals 2

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v1, :cond_0

    .line 1192
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setNewMediaCounts([I)V

    .line 1194
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 925
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeStoryViewer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 928
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    return v1

    .line 932
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "custom_screen_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->customScreenType:I

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:I

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    const-string v3, "start_from"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 183
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-nez v0, :cond_4

    .line 192
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->isMusicType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->SHARED_MEDIA_LAYOUT_MUSIC:I

    invoke-direct {v0, p0, v3, v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 194
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v0

    .line 195
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 196
    aput v2, v0, v1

    goto :goto_1

    .line 198
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 199
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V

    .line 201
    :cond_4
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 206
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 207
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onGetDebugItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    .line 1239
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->isLearning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Disable"

    goto :goto_0

    :cond_0
    const-string v3, "Enable"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shape detector learning debug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1239
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method
