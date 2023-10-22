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

.field private undoView:Lorg/telegram/ui/Components/UndoView;

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

    .line 173
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/widget/FrameLayout;

    .line 146
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-array v0, p1, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 147
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v0, p1, [Lorg/telegram/ui/Components/AnimatedTextView;

    .line 148
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    const/16 v0, -0xc

    .line 157
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    new-array v0, p1, [Z

    .line 1170
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    new-array v0, p1, [F

    .line 1171
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    new-array v0, p1, [Z

    .line 1172
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    new-array p1, p1, [Landroid/animation/ValueAnimator;

    .line 1173
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    .line 174
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

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move p1, v1

    .line 1133
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 1136
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1138
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 1141
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1142
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 1143
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

    .line 1144
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1149
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MediaActivity$7;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1158
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1159
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1160
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1161
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    .line 1163
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    const/16 p2, 0x64

    .line 1164
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    mul-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation:F

    .line 1165
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateFloatingButtonOffset()V

    .line 1166
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

    .line 128
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

    .line 354
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$10([Z)V
    .locals 1

    const/4 v0, 0x0

    .line 557
    aget-boolean p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 558
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 560
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 12

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 506
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 507
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    .line 509
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 510
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

    .line 512
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    if-eqz v3, :cond_3

    move v3, v2

    move v4, v3

    .line 514
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 515
    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 516
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v5, :cond_2

    .line 517
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    .line 522
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    .line 523
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScroll(Z)V

    if-eqz p1, :cond_5

    .line 525
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    .line 527
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 530
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    move v5, v2

    .line 531
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 532
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 533
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    aput-boolean v7, v3, v5

    .line 534
    iput-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 536
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v5, v6, v7, v0}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    .line 538
    new-instance v5, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0, v0, p1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/MediaActivity;Ljava/util/ArrayList;Z)V

    iput-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    .line 541
    new-instance v11, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda16;

    invoke-direct {v11, p0, v1, v0, v3}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/MediaActivity;[ZLjava/util/ArrayList;[Z)V

    const-string v0, "Undo"

    if-eqz p1, :cond_8

    .line 552
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

    .line 554
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

    .line 556
    :goto_3
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/MediaActivity;[Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setOnHideListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 1

    .line 577
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 578
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromFloatingButton(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 4

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomIn()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 373
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

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 375
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

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomOut()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 387
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

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 389
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

    .line 398
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-nez v0, :cond_0

    .line 399
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 2

    .line 409
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-nez v0, :cond_0

    .line 410
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 420
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

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    return-void
.end method

.method private synthetic lambda$createView$8(Ljava/util/ArrayList;Z)V
    .locals 7

    .line 539
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesPinned(JLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$createView$9([ZLjava/util/ArrayList;[Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 542
    aput-boolean v1, p1, v0

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 544
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 545
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 546
    aget-boolean v1, p3, v0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->pinned:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
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

    .line 1145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    const/16 p1, 0x64

    .line 1146
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation:F

    .line 1147
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateFloatingButtonOffset()V

    return-void
.end method

.method private synthetic lambda$onGetDebugItems$17()V
    .locals 2

    .line 1291
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

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 1193
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    const v1, 0x3f8e353f    # 1.111f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1194
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1195
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

    .line 1196
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

    .line 1040
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateMediaCount$14(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1052
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showSubtitle(IZZ)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1175
    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v2, v0, :cond_0

    return-void

    .line 1178
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    aget-boolean v3, v2, p1

    if-ne v3, p2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    return-void

    .line 1181
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    aget-boolean v4, v3, p1

    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-eqz p3, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v5

    .line 1182
    :goto_0
    aput-boolean v5, v3, p1

    .line 1183
    aput-boolean p2, v2, p1

    .line 1184
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v3, v2, p1

    if-eqz v3, :cond_3

    .line 1185
    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1186
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v3, v2, p1

    :cond_3
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_5

    .line 1189
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    iget-object v4, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v4, v4, p1

    aput v4, v0, v5

    if-eqz p2, :cond_4

    move v2, v3

    :cond_4
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    aput-object v0, p3, p1

    .line 1191
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MediaActivity;I)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1198
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity$8;-><init>(Lorg/telegram/ui/Components/MediaActivity;IZ)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1212
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    const-wide/16 v0, 0x140

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1213
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1214
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 1216
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    if-eqz p2, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    aput v0, p3, p1

    .line 1217
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    const v0, 0x3f8e353f    # 1.111f

    if-eqz p2, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1218
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_8

    move v0, v3

    :cond_8
    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1219
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    const/16 v0, 0x8

    if-eqz p2, :cond_9

    move v1, v2

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :goto_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1220
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1221
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p1, p3, p1

    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    move v5, v0

    :goto_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private updateColors()V
    .locals 4

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v3

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1241
    aget-object v0, v0, v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1244
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_1

    .line 1245
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateColors()V

    .line 1247
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x2

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 1248
    aget-object v0, v0, v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateFloatingButtonOffset()V
    .locals 3

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 1120
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

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    .line 992
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    .line 993
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 995
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

    .line 1076
    aget v6, v1, v0

    if-gez v6, :cond_4

    goto/16 :goto_2

    :cond_4
    if-nez v0, :cond_7

    .line 1080
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1082
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

    .line 1083
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 1084
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

    .line 1086
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

    .line 1089
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1090
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

    .line 1092
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1093
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

    .line 1095
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1096
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

    .line 1098
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1099
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

    .line 1101
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1102
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

    .line 1005
    :cond_d
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f

    .line 1006
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomOut()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1007
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

    .line 1009
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_11

    .line 1010
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomIn()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1011
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

    .line 1014
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_12

    if-eq v0, v7, :cond_12

    .line 1016
    invoke-direct {p0, v8, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1017
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v10, v10, v8

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "ProfileMyStoriesCount"

    invoke-static {v12, v1, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_6

    .line 1019
    :cond_12
    invoke-direct {p0, v8, v8, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1022
    :goto_6
    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v3, :cond_16

    .line 1023
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_13

    if-eq v0, v7, :cond_13

    .line 1025
    invoke-direct {p0, v3, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1026
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v10, v10, v3

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "ProfileStoriesArchiveCount"

    invoke-static {v12, v1, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 1028
    :cond_13
    invoke-direct {p0, v3, v8, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    :goto_7
    if-ne v0, v9, :cond_15

    .line 1030
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

    .line 1033
    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-wide/16 v9, 0xdc

    const/4 v11, 0x0

    if-eqz v1, :cond_1b

    if-eq v0, v7, :cond_18

    .line 1034
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

    .line 1036
    iget-object v12, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1038
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

    .line 1042
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1045
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

    .line 1048
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1050
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

    .line 1054
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1058
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v1, :cond_23

    if-eqz v2, :cond_20

    .line 1059
    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    if-ne v2, v0, :cond_20

    move v2, v3

    goto :goto_f

    :cond_20
    move v2, v8

    :goto_f
    if-ne v0, v6, :cond_22

    .line 1061
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

    invoke-virtual {v1, v6, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_11

    .line 1063
    :cond_22
    sget v6, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    const-string v9, "SaveToProfile"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1065
    :goto_11
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    .line 1068
    :cond_23
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_26

    if-eq v0, v7, :cond_24

    .line 1069
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v0

    if-lez v0, :cond_24

    goto :goto_12

    :cond_24
    move v3, v8

    .line 1070
    :goto_12
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1071
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

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 986
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v11, p1

    .line 247
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    .line 249
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 250
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 251
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/MediaActivity$1;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/MediaActivity$1;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 293
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setColorFilterMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 294
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 295
    new-instance v14, Lorg/telegram/ui/Components/MediaActivity$2;

    invoke-direct {v14, v15, v11, v1}, Lorg/telegram/ui/Components/MediaActivity$2;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    const/4 v13, 0x1

    .line 342
    iput-boolean v13, v14, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    .line 343
    iput-object v14, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 345
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 346
    iget v3, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/16 v12, 0x9

    const/16 v10, 0xa

    const/4 v9, 0x2

    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v7, 0x38

    if-eq v3, v13, :cond_0

    if-ne v3, v9, :cond_1

    .line 347
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 348
    iget-object v5, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v6, 0x55

    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-direct {v5, v11, v0, v7, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 351
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 352
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 354
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 357
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-direct {v5, v11, v0, v7, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 358
    sget v7, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 359
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 361
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 362
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 363
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_zoomin:I

    sget v13, Lorg/telegram/messenger/R$string;->MediaZoomIn:I

    const-string v8, "MediaZoomIn"

    invoke-static {v8, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 364
    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_zoomout:I

    sget v8, Lorg/telegram/messenger/R$string;->MediaZoomOut:I

    const-string v13, "MediaZoomOut"

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v12, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 378
    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    sget v8, Lorg/telegram/messenger/R$string;->Calendar:I

    const-string v13, "Calendar"

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 392
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 393
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 394
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 395
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v7, 0x6

    sget v8, Lorg/telegram/messenger/R$string;->MediaShowPhotos:I

    const-string v13, "MediaShowPhotos"

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v2, v8, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 396
    iget-boolean v7, v15, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 397
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v7, 0x7

    sget v8, Lorg/telegram/messenger/R$string;->MediaShowVideos:I

    const-string v13, "MediaShowVideos"

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v2, v8, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 407
    iget-boolean v7, v15, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 408
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-direct {v5, v11, v0, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 419
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 420
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 425
    :cond_1
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 427
    :goto_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    const/16 v5, 0x77

    .line 428
    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v2

    .line 429
    :goto_1
    iget v6, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v9, 0x3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move v6, v9

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :goto_2
    const-string v7, "fonts/rmedium.ttf"

    const/16 v20, 0xe

    const/16 v8, 0x48

    if-ge v3, v6, :cond_7

    .line 430
    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v2, v6, v3

    .line 431
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v3

    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 434
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    .line 435
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotY(F)V

    .line 437
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 438
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 439
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 440
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const v4, 0x3fa66666    # 1.3f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 441
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    .line 442
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 443
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v3

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    const/16 v23, -0x2

    const/16 v24, -0x2

    const/16 v25, 0x33

    const/16 v7, 0x76

    if-eqz v0, :cond_4

    move/from16 v26, v7

    goto :goto_3

    :cond_4
    move/from16 v26, v8

    :goto_3
    const/16 v27, 0x0

    const/16 v28, 0x38

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v4, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, 0x1

    invoke-direct {v4, v11, v9, v9, v9}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    aput-object v4, v2, v3

    .line 446
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v23, v2, v3

    const v24, 0x3ecccccd    # 0.4f

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x140

    sget-object v29, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 447
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v2, v2, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 448
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v2, v2, v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 449
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v3

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v4, v4, v3

    const/16 v23, -0x2

    const/16 v24, -0x2

    const/16 v25, 0x33

    if-eqz v0, :cond_5

    move/from16 v26, v7

    goto :goto_4

    :cond_5
    move/from16 v26, v8

    :goto_4
    const/16 v27, 0x0

    const/16 v28, 0x38

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_6

    .line 452
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x2

    .line 456
    new-instance v2, Lorg/telegram/ui/Components/MediaActivity$3;

    invoke-direct {v2, v15, v11}, Lorg/telegram/ui/Components/MediaActivity$3;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;)V

    iput-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 471
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 472
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/16 v5, 0x15

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setRoundRadius(I)V

    .line 473
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    .line 474
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotY(F)V

    .line 475
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 476
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    .line 477
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
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

    .line 482
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x1

    invoke-direct {v3, v11, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v24, 0x3ecccccd    # 0.4f

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x140

    .line 483
    sget-object v29, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 484
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 485
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 486
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 487
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 488
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v23, -0x2

    const/16 v24, -0x1

    const/16 v25, 0x17

    if-eqz v0, :cond_9

    const/16 v0, 0x30

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    add-int/lit8 v26, v0, 0x48

    const/16 v27, -0x2

    const/16 v28, 0x48

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_d

    .line 491
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v15, v11, v3}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    .line 492
    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BottomPagerTabs;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 496
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    .line 497
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v7, v8, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 498
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v15, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 499
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v11, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 500
    sget v3, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    const-string v4, "SaveToProfile"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 501
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 502
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 503
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 504
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 564
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 565
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 567
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$4;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/MediaActivity$4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-static {v15, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 574
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    .line 575
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 576
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    .line 582
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 583
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 584
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrCaptureStory:I

    const-string v4, "AccDescrCaptureStory"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x38

    .line 599
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v3, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 600
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v6, -0x1000000

    if-ge v4, v5, :cond_a

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 602
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 603
    new-instance v9, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v3, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v3, 0x38

    .line 604
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    goto :goto_7

    :cond_a
    const/16 v3, 0x38

    .line 607
    :goto_7
    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v9, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    const/16 v10, 0x11

    invoke-static {v3, v3, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_c

    .line 609
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v8, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ge v4, v5, :cond_b

    .line 611
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 612
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 613
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v10, 0x0

    invoke-direct {v4, v3, v0, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v7, 0x38

    .line 614
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v0, v4

    goto :goto_8

    :cond_b
    const/16 v7, 0x38

    const/4 v10, 0x0

    .line 617
    :goto_8
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_c
    move v7, v3

    const/4 v10, 0x0

    :goto_9
    const/4 v9, 0x1

    .line 620
    invoke-direct {v15, v9, v10}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    goto :goto_a

    :cond_d
    move v9, v3

    const/16 v7, 0x38

    const/4 v10, 0x0

    .line 623
    :goto_a
    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$6;

    move-object v0, v8

    iget-wide v3, v15, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-object v5, v6

    const/4 v6, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v18, v7

    move-object/from16 v7, v17

    iget-object v9, v15, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v30, v8

    move-object v8, v9

    iget-object v9, v15, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v19, 0x0

    move/from16 v21, v10

    move/from16 v10, v19

    new-instance v13, Lorg/telegram/ui/Components/MediaActivity$5;

    move-object v12, v13

    invoke-direct {v13, v15}, Lorg/telegram/ui/Components/MediaActivity$5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    const/4 v13, 0x0

    .line 659
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v16

    move-object/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v31, v2

    move-object/from16 v2, p1

    move-object/from16 v11, p0

    move-object/from16 v15, v22

    move-object/from16 v16, v19

    invoke-direct/range {v0 .. v16}, Lorg/telegram/ui/Components/MediaActivity$6;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v2, 0x1

    .line 848
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    .line 849
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 850
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 852
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_e

    move-object/from16 v5, v19

    goto :goto_b

    .line 856
    :cond_e
    new-instance v1, Lorg/telegram/ui/Components/UndoView;

    move-object/from16 v5, p1

    const/4 v6, 0x0

    invoke-direct {v1, v5, v3, v6, v3}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    .line 857
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x53

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    move-object/from16 v5, v19

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_f
    move-object/from16 v5, v19

    const/4 v4, 0x2

    :goto_b
    const/4 v6, 0x0

    .line 853
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x77

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x40

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v22

    .line 862
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 863
    iget-object v7, v5, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget v7, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v7, v2, :cond_10

    .line 865
    invoke-direct {v0, v6, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 866
    invoke-direct {v0, v2, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 867
    invoke-direct {v0, v4, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 870
    :cond_10
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_16

    .line 871
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x3c

    const/16 v10, 0x15

    if-lt v8, v10, :cond_11

    move/from16 v21, v18

    goto :goto_d

    :cond_11
    move/from16 v21, v9

    :goto_d
    if-lt v8, v10, :cond_12

    move/from16 v22, v18

    goto :goto_e

    :cond_12
    move/from16 v22, v9

    :goto_e
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_13

    move/from16 v9, v17

    goto :goto_f

    :cond_13
    const/4 v9, 0x5

    :goto_f
    or-int/lit8 v23, v9, 0x50

    if-eqz v8, :cond_14

    move/from16 v24, v20

    goto :goto_10

    :cond_14
    move/from16 v24, v6

    :goto_10
    const/16 v25, 0x0

    if-eqz v8, :cond_15

    move/from16 v26, v6

    goto :goto_11

    :cond_15
    move/from16 v26, v20

    :goto_11
    const/16 v27, 0x4e

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    :cond_16
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    const/16 v8, 0x57

    if-eqz v7, :cond_17

    const/4 v9, -0x2

    const/4 v10, -0x1

    .line 874
    invoke-static {v10, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_17
    const/4 v10, -0x1

    .line 876
    :goto_12
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_18

    const/16 v9, 0x40

    .line 877
    invoke-static {v10, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    :cond_18
    iget v7, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const-string v8, "ProfileStoriesArchive"

    if-ne v7, v4, :cond_19

    .line 882
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v6

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_13

    :cond_19
    if-ne v7, v2, :cond_1a

    .line 884
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v6

    const-string v9, "ProfileMyStories"

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 885
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v2

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 887
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v7, v4

    sget v7, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v8, "Settings"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 888
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 889
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScroll(Z)V

    goto :goto_13

    .line 892
    :cond_1a
    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 893
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 895
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 897
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    move-object/from16 v7, v31

    .line 898
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_14

    :cond_1b
    :goto_13
    move-object/from16 v7, v31

    goto :goto_15

    :cond_1c
    move-object/from16 v7, v31

    .line 902
    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 903
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 905
    iget-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v8, :cond_1d

    .line 906
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v6

    sget v8, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v9, "SavedMessages"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 907
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const v4, 0x3f4ccccd    # 0.8f

    .line 908
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_15

    .line 910
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 911
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_14

    .line 916
    :cond_1e
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 918
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 919
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_14
    move-object v3, v4

    .line 924
    :cond_1f
    :goto_15
    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 925
    iget-object v8, v0, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const-string v9, "50_50"

    invoke-virtual {v8, v4, v9, v7, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 927
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 928
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    sget v4, Lorg/telegram/messenger/R$string;->SharedContentTitle:I

    const-string v7, "SharedContentTitle"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 931
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchItemVisible()Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v3, v2, :cond_21

    .line 932
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 934
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCalendarItemVisible()Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v3, v2, :cond_22

    .line 935
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 937
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 940
    :goto_16
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 941
    invoke-static {v1, v2, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 942
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    .line 943
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    .line 945
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_23

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_23

    .line 946
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 949
    :cond_23
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_24

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_24

    .line 950
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    :cond_24
    return-object v5
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 230
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 231
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 232
    iget-wide v1, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    .line 233
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 234
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz p2, :cond_2

    .line 235
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    goto :goto_0

    .line 238
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    if-ne p1, p2, :cond_2

    .line 239
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 240
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 1111
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    return-wide v0
.end method

.method public getNavigationBarColor()I
    .locals 2

    .line 1318
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 1319
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->getNavigationBarColor(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1255
    new-instance v9, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda18;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    .line 1256
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/UndoView;

    const/4 v4, 0x0

    aput-object v3, v15, v4

    const-string v3, "undoImageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v1

    move/from16 v20, v25

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v5, v4

    const-string v6, "undoTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v20, v5

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/UndoView;

    aput-object v6, v5, v4

    const-string v6, "infoTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v30

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v1

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    move/from16 v34, v6

    invoke-direct/range {v26 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v14, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/UndoView;

    aput-object v3, v14, v4

    const-string v3, "textPaint"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v1

    move/from16 v19, v6

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v14, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/UndoView;

    aput-object v3, v14, v4

    const-string v3, "progressPaint"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v14, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Components/UndoView;

    aput-object v2, v14, v4

    const-string v2, "leftImageView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v15

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v10
.end method

.method public getTopicId()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:I

    return v0
.end method

.method public getUndoView()Lorg/telegram/ui/Components/UndoView;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object v0
.end method

.method public isAllowPinnedPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLightStatusBar()Z
    .locals 6

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1278
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1279
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1280
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1282
    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 970
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 974
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

    .line 978
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCurrentTabFirst()Z

    move-result p1

    return p1
.end method

.method public mediaCountUpdated()V
    .locals 2

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v1, :cond_0

    .line 1228
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setNewMediaCounts([I)V

    .line 1230
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 958
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeStoryViewer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 961
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    return v1

    .line 965
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "custom_screen_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->customScreenType:I

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:I

    .line 183
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    .line 186
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v2

    .line 195
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "start_from"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 199
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 206
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-nez v0, :cond_5

    .line 208
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->isMusicType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->SHARED_MEDIA_LAYOUT_MUSIC:I

    invoke-direct {v0, p0, v3, v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 210
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v0

    .line 211
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 212
    aput v2, v0, v1

    goto :goto_1

    .line 214
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 215
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V

    .line 217
    :cond_5
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 222
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 223
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 224
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 225
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

    .line 1287
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
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

    .line 1287
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method
