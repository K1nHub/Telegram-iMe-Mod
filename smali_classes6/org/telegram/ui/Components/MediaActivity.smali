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

.field private topicId:J

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

    .line 156
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/widget/FrameLayout;

    .line 129
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-array v0, p1, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 130
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v0, p1, [Lorg/telegram/ui/Components/AnimatedTextView;

    .line 131
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    const/16 v0, -0xc

    .line 140
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    new-array v0, p1, [Z

    .line 1175
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    new-array v0, p1, [F

    .line 1176
    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    new-array v0, p1, [Z

    .line 1177
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    new-array p1, p1, [Landroid/animation/ValueAnimator;

    .line 1178
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    .line 157
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

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/MediaActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/MediaActivity;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/BackDrawable;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/MediaActivity;)[Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/MediaActivity;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/MediaActivity;)[F
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    .line 77
    iget p0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    .line 77
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    .line 77
    iget p0, p0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    return p0
.end method

.method private hideFloatingButton(ZZ)V
    .locals 5

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move p1, v1

    .line 1138
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 1141
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingHidden:Z

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 1143
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 1146
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1147
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 1148
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

    .line 1149
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1154
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MediaActivity$7;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1163
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1164
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1165
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1166
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    .line 1168
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    const/16 p2, 0x64

    .line 1169
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    mul-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation:F

    .line 1170
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateFloatingButtonOffset()V

    .line 1171
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

    .line 111
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

    .line 337
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$10([Z)V
    .locals 1

    const/4 v0, 0x0

    .line 540
    aget-boolean p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 541
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 543
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 12

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 489
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 490
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    .line 492
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    .line 493
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

    .line 495
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    if-eqz v3, :cond_3

    move v3, v2

    move v4, v3

    .line 497
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 498
    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 499
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_2

    .line 500
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    .line 505
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    .line 506
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScroll(Z)V

    if-eqz p1, :cond_5

    .line 508
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    .line 510
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 513
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    move v5, v2

    .line 514
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 515
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 516
    iget-boolean v7, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    aput-boolean v7, v3, v5

    .line 517
    iput-boolean p1, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 519
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v5, v6, v7, v0}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    .line 521
    new-instance v5, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0, v0, p1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/MediaActivity;Ljava/util/ArrayList;Z)V

    iput-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    .line 524
    new-instance v11, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda16;

    invoke-direct {v11, p0, v1, v0, v3}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/MediaActivity;[ZLjava/util/ArrayList;[Z)V

    const-string v0, "Undo"

    if-eqz p1, :cond_8

    .line 535
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

    .line 537
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

    .line 539
    :goto_3
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/MediaActivity;[Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setOnHideListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 1

    .line 560
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    .line 561
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromFloatingButton(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 4

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomIn()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 356
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

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 358
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

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomOut()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 370
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

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 372
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

    .line 381
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-nez v0, :cond_0

    .line 382
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 2

    .line 392
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-nez v0, :cond_0

    .line 393
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 403
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

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    return-void
.end method

.method private synthetic lambda$createView$8(Ljava/util/ArrayList;Z)V
    .locals 7

    .line 522
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

    .line 525
    aput-boolean v1, p1, v0

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 527
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 528
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 529
    aget-boolean v1, p3, v0

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
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

    .line 1150
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    const/16 p1, 0x64

    .line 1151
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonHideProgress:F

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonTranslation:F

    .line 1152
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateFloatingButtonOffset()V

    return-void
.end method

.method private synthetic lambda$onGetDebugItems$17()V
    .locals 2

    .line 1296
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

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 1198
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    const v1, 0x3f8e353f    # 1.111f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1199
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1200
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

    .line 1201
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

    .line 1035
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateMediaCount$14(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1047
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

    .line 1180
    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v2, v0, :cond_0

    return-void

    .line 1183
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    aget-boolean v3, v2, p1

    if-ne v3, p2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    return-void

    .line 1186
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

    .line 1187
    :goto_0
    aput-boolean v5, v3, p1

    .line 1188
    aput-boolean p2, v2, p1

    .line 1189
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v3, v2, p1

    if-eqz v3, :cond_3

    .line 1190
    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1191
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v3, v2, p1

    :cond_3
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_5

    .line 1194
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1195
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

    .line 1196
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MediaActivity;I)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1203
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity$8;-><init>(Lorg/telegram/ui/Components/MediaActivity;IZ)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1217
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    const-wide/16 v0, 0x140

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1218
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1219
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 1221
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    if-eqz p2, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    aput v0, p3, p1

    .line 1222
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

    .line 1223
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_8

    move v0, v3

    :cond_8
    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1224
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

    .line 1225
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1226
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

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v3

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1246
    aget-object v0, v0, v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1249
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateColors()V

    .line 1252
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x2

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 1253
    aget-object v0, v0, v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateFloatingButtonOffset()V
    .locals 3

    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 1125
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

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-nez v0, :cond_0

    return-void

    .line 986
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    .line 987
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    .line 988
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 990
    iget v4, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eq v4, v3, :cond_1

    :goto_0
    move v4, v8

    goto :goto_1

    :cond_1
    if-ne v0, v7, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_1
    const/16 v9, 0x9

    if-eq v0, v6, :cond_11

    if-eq v0, v9, :cond_11

    if-ne v0, v7, :cond_4

    goto/16 :goto_4

    :cond_4
    const/16 v6, 0xb

    if-ne v0, v6, :cond_5

    .line 1072
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1073
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->getAllCount()I

    move-result v0

    .line 1074
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v1, v1, v4

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "SavedDialogsTabCount"

    invoke-static {v4, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_5
    if-ltz v0, :cond_10

    .line 1077
    array-length v6, v1

    if-ge v0, v6, :cond_6

    aget v6, v1, v0

    if-gez v6, :cond_6

    goto/16 :goto_3

    :cond_6
    if-nez v0, :cond_9

    .line 1081
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    const/4 v3, 0x6

    aget v1, v1, v3

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Photos"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 1084
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    const/4 v3, 0x7

    aget v1, v1, v3

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Videos"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 1087
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v8

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Media"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3

    :cond_9
    if-ne v0, v3, :cond_a

    .line 1090
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v3

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Files"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3

    :cond_a
    if-ne v0, v5, :cond_b

    .line 1093
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Voice"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3

    :cond_b
    const/4 v5, 0x3

    if-ne v0, v5, :cond_c

    .line 1096
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Links"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_c
    const/4 v5, 0x4

    if-ne v0, v5, :cond_d

    .line 1099
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "MusicFiles"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_d
    const/4 v5, 0x5

    if-ne v0, v5, :cond_e

    .line 1102
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v4

    aget v1, v1, v5

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "GIFs"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_e
    const/16 v1, 0xd

    if-ne v0, v1, :cond_10

    .line 1105
    invoke-direct {p0, v4, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1106
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    neg-long v5, v5

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MessagesController;->getChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    move-result-object v0

    .line 1107
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v1, v1, v4

    if-nez v0, :cond_f

    move v3, v8

    goto :goto_2

    :cond_f
    iget v3, v0, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->more:I

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    :goto_2
    new-array v0, v8, [Ljava/lang/Object;

    const-string v4, "Channels"

    invoke-static {v4, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_10
    :goto_3
    return-void

    .line 1000
    :cond_11
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_13

    .line 1001
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomOut()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1002
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    move v10, v5

    goto :goto_5

    :cond_12
    move v10, v4

    :goto_5
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1004
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_15

    .line 1005
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomIn()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1006
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_14

    move v10, v5

    goto :goto_6

    :cond_14
    move v10, v4

    :goto_6
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1009
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_16

    if-eq v0, v7, :cond_16

    .line 1011
    invoke-direct {p0, v8, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1012
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v10, v10, v8

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "ProfileMyStoriesCount"

    invoke-static {v12, v1, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 1014
    :cond_16
    invoke-direct {p0, v8, v8, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1017
    :goto_7
    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v3, :cond_1a

    .line 1018
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_17

    if-eq v0, v7, :cond_17

    .line 1020
    invoke-direct {p0, v3, v3, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 1021
    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v10, v10, v3

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "ProfileStoriesArchiveCount"

    invoke-static {v12, v1, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_8

    .line 1023
    :cond_17
    invoke-direct {p0, v3, v8, v3}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    :goto_8
    if-ne v0, v9, :cond_19

    .line 1025
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_18

    goto :goto_9

    :cond_18
    move v1, v8

    goto :goto_a

    :cond_19
    :goto_9
    move v1, v3

    :goto_a
    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    .line 1028
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-wide/16 v9, 0xdc

    const/4 v11, 0x0

    if-eqz v1, :cond_1f

    if-eq v0, v7, :cond_1c

    .line 1029
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v12

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-gtz v1, :cond_1b

    goto :goto_b

    :cond_1b
    move v1, v8

    goto :goto_c

    :cond_1c
    :goto_b
    move v1, v3

    :goto_c
    if-nez v1, :cond_1d

    .line 1031
    iget-object v12, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1033
    :cond_1d
    iget-object v12, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    if-eqz v1, :cond_1e

    move v13, v11

    goto :goto_d

    :cond_1e
    move v13, v5

    :goto_d
    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda14;

    invoke-direct {v13, p0, v1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/MediaActivity;Z)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1037
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1040
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_23

    if-ne v0, v7, :cond_20

    move v12, v3

    goto :goto_e

    :cond_20
    move v12, v8

    :goto_e
    if-eqz v12, :cond_21

    .line 1043
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1045
    :cond_21
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v12, :cond_22

    goto :goto_f

    :cond_22
    move v11, v5

    :goto_f
    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v11, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda13;

    invoke-direct {v11, p0, v12}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/MediaActivity;Z)V

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1049
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1053
    :cond_23
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v1, :cond_27

    if-eqz v2, :cond_24

    .line 1054
    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    if-ne v2, v0, :cond_24

    move v2, v3

    goto :goto_10

    :cond_24
    move v2, v8

    :goto_10
    if-ne v0, v6, :cond_26

    .line 1056
    iget-object v6, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    if-nez v6, :cond_25

    move v6, v8

    goto :goto_11

    :cond_25
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    :goto_11
    new-array v9, v8, [Ljava/lang/Object;

    const-string v10, "ArchiveStories"

    invoke-static {v10, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_12

    .line 1058
    :cond_26
    sget v6, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    const-string v9, "SaveToProfile"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1060
    :goto_12
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    .line 1063
    :cond_27
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_2a

    if-eq v0, v7, :cond_28

    .line 1064
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v0

    if-lez v0, :cond_28

    goto :goto_13

    :cond_28
    move v3, v8

    .line 1065
    :goto_13
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_29

    move v4, v5

    :cond_29
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 978
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v11, p1

    .line 230
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    .line 232
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 233
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 234
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/MediaActivity$1;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/MediaActivity$1;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 276
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setColorFilterMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 277
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 278
    new-instance v14, Lorg/telegram/ui/Components/MediaActivity$2;

    invoke-direct {v14, v15, v11, v1}, Lorg/telegram/ui/Components/MediaActivity$2;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    const/4 v13, 0x1

    .line 325
    iput-boolean v13, v14, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    .line 326
    iput-object v14, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 328
    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 329
    iget v3, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/16 v12, 0x9

    const/16 v10, 0xa

    const/4 v9, 0x2

    const/16 v4, 0x8

    const/4 v8, 0x0

    const/16 v7, 0x38

    if-eq v3, v13, :cond_0

    if-ne v3, v9, :cond_1

    .line 330
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 331
    iget-object v5, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v6, 0x55

    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-direct {v5, v11, v0, v7, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 334
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 335
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 336
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 337
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 340
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-direct {v5, v11, v0, v7, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 341
    sget v7, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 342
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 344
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 345
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 346
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_zoomin:I

    sget v13, Lorg/telegram/messenger/R$string;->MediaZoomIn:I

    const-string v8, "MediaZoomIn"

    invoke-static {v8, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 347
    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_zoomout:I

    sget v8, Lorg/telegram/messenger/R$string;->MediaZoomOut:I

    const-string v13, "MediaZoomOut"

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v12, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 361
    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    sget v8, Lorg/telegram/messenger/R$string;->Calendar:I

    const-string v13, "Calendar"

    invoke-static {v13, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v10, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 375
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 376
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 377
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 378
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

    .line 379
    iget-boolean v7, v15, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 380
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
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

    .line 390
    iget-boolean v7, v15, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 391
    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-direct {v5, v11, v0, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 402
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 403
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->storiesNotificationsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 408
    :cond_1
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 410
    :goto_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    const/16 v5, 0x77

    .line 411
    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v2

    .line 412
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

    .line 413
    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v2, v6, v3

    .line 414
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    iget-object v6, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v3

    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 417
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    .line 418
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotY(F)V

    .line 420
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 421
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 422
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const v4, 0x3fa66666    # 1.3f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 424
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    .line 425
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v2, v3

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 426
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

    .line 428
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v4, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, 0x1

    invoke-direct {v4, v11, v9, v9, v9}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    aput-object v4, v2, v3

    .line 429
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v23, v2, v3

    const v24, 0x3ecccccd    # 0.4f

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x140

    sget-object v29, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 430
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v2, v2, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 431
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v2, v2, v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 432
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

    .line 435
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

    .line 439
    new-instance v2, Lorg/telegram/ui/Components/MediaActivity$3;

    invoke-direct {v2, v15, v11}, Lorg/telegram/ui/Components/MediaActivity$3;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;)V

    iput-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    .line 454
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 455
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/16 v5, 0x15

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setRoundRadius(I)V

    .line 456
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    .line 457
    iget-object v2, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotY(F)V

    .line 458
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 459
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    .line 460
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
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

    .line 465
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x1

    invoke-direct {v3, v11, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v24, 0x3ecccccd    # 0.4f

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x140

    .line 466
    sget-object v29, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 467
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 468
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 469
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 470
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 471
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

    .line 473
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_d

    .line 474
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v15, v11, v3}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    .line 475
    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BottomPagerTabs;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 479
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    .line 480
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

    .line 481
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v15, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 482
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v11, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 483
    sget v3, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    const-string v4, "SaveToProfile"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 484
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 485
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 486
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    .line 487
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 547
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 548
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 550
    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$4;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/MediaActivity$4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-static {v15, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 557
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    .line 558
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 559
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    .line 565
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 566
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 567
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrCaptureStory:I

    const-string v4, "AccDescrCaptureStory"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x38

    .line 582
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

    .line 583
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v6, -0x1000000

    if-ge v4, v5, :cond_a

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 585
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 586
    new-instance v9, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v3, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v3, 0x38

    .line 587
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    goto :goto_7

    :cond_a
    const/16 v3, 0x38

    .line 590
    :goto_7
    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    iget-object v9, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButton:Landroid/widget/ImageView;

    const/16 v10, 0x11

    invoke-static {v3, v3, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_c

    .line 592
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v8, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ge v4, v5, :cond_b

    .line 594
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 595
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 596
    new-instance v4, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v10, 0x0

    invoke-direct {v4, v3, v0, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/16 v7, 0x38

    .line 597
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

    .line 600
    :goto_8
    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_c
    move v7, v3

    const/4 v10, 0x0

    :goto_9
    const/4 v9, 0x1

    .line 603
    invoke-direct {v15, v9, v10}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    goto :goto_a

    :cond_d
    move v9, v3

    const/16 v7, 0x38

    const/4 v10, 0x0

    .line 606
    :goto_a
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-nez v0, :cond_e

    iget-wide v3, v15, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v24

    cmp-long v0, v3, v24

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->getAllCount()I

    move-result v0

    if-lez v0, :cond_e

    const/16 v0, 0xb

    .line 607
    iput v0, v15, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    .line 609
    :cond_e
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

    iget v10, v15, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v19, 0x0

    new-instance v13, Lorg/telegram/ui/Components/MediaActivity$5;

    move-object v12, v13

    invoke-direct {v13, v15}, Lorg/telegram/ui/Components/MediaActivity$5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    const/4 v13, 0x0

    .line 645
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v16

    move-object/from16 v21, v14

    move-object/from16 v14, v16

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v31, v2

    move-object/from16 v2, p1

    move-object/from16 v11, p0

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    invoke-direct/range {v0 .. v16}, Lorg/telegram/ui/Components/MediaActivity$6;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v2, 0x1

    .line 840
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    .line 841
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 842
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 844
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    const/4 v4, 0x2

    if-ne v1, v4, :cond_f

    move-object/from16 v5, v21

    goto :goto_b

    .line 848
    :cond_f
    new-instance v1, Lorg/telegram/ui/Components/UndoView;

    move-object/from16 v5, p1

    const/4 v6, 0x0

    invoke-direct {v1, v5, v3, v6, v3}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    .line 849
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

    .line 851
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    move-object/from16 v5, v21

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_10
    move-object/from16 v5, v21

    const/4 v4, 0x2

    :goto_b
    const/4 v6, 0x0

    .line 845
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

    .line 853
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v22

    .line 854
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 855
    iget-object v7, v5, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    iget v7, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v7, v2, :cond_11

    .line 857
    invoke-direct {v0, v6, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 858
    invoke-direct {v0, v2, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 859
    invoke-direct {v0, v4, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    .line 862
    :cond_11
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->floatingButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_17

    .line 863
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x3c

    const/16 v10, 0x15

    if-lt v8, v10, :cond_12

    move/from16 v21, v18

    goto :goto_d

    :cond_12
    move/from16 v21, v9

    :goto_d
    if-lt v8, v10, :cond_13

    move/from16 v22, v18

    goto :goto_e

    :cond_13
    move/from16 v22, v9

    :goto_e
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_14

    move/from16 v9, v17

    goto :goto_f

    :cond_14
    const/4 v9, 0x5

    :goto_f
    or-int/lit8 v23, v9, 0x50

    if-eqz v8, :cond_15

    move/from16 v24, v20

    goto :goto_10

    :cond_15
    move/from16 v24, v6

    :goto_10
    const/16 v25, 0x0

    if-eqz v8, :cond_16

    move/from16 v26, v6

    goto :goto_11

    :cond_16
    move/from16 v26, v20

    :goto_11
    const/16 v27, 0x4e

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    :cond_17
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    const/16 v8, 0x57

    if-eqz v7, :cond_18

    const/4 v9, -0x2

    const/4 v10, -0x1

    .line 866
    invoke-static {v10, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_18
    const/4 v10, -0x1

    .line 868
    :goto_12
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_19

    const/16 v9, 0x40

    .line 869
    invoke-static {v10, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    :cond_19
    iget v7, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const-string v8, "ProfileStoriesArchive"

    if-ne v7, v4, :cond_1a

    .line 874
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v6

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_13

    :cond_1a
    if-ne v7, v2, :cond_1b

    .line 876
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v6

    const-string v9, "ProfileMyStories"

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 877
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v2

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 879
    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v7, v4

    sget v7, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v8, "Settings"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 880
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 881
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->disableScroll(Z)V

    goto :goto_13

    .line 884
    :cond_1b
    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 885
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v7, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 887
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 889
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 890
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    move-object/from16 v7, v31

    invoke-virtual {v7, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_14

    :cond_1c
    :goto_13
    move-object/from16 v7, v31

    goto :goto_15

    :cond_1d
    move-object/from16 v7, v31

    .line 894
    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 895
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 897
    iget-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v8, :cond_1e

    .line 898
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v6

    sget v8, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v9, "SavedMessages"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 899
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const v4, 0x3f4ccccd    # 0.8f

    .line 900
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_15

    .line 902
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 903
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v7, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_14

    .line 908
    :cond_1f
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v8, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 910
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 911
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v7, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_14
    move-object v3, v4

    .line 916
    :cond_20
    :goto_15
    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 917
    iget-object v8, v0, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const-string v9, "50_50"

    invoke-virtual {v8, v4, v9, v7, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 919
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 920
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v6

    sget v4, Lorg/telegram/messenger/R$string;->SharedContentTitle:I

    const-string v7, "SharedContentTitle"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 923
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchItemVisible()Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v3, v2, :cond_22

    .line 924
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 926
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCalendarItemVisible()Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v3, v2, :cond_23

    .line 927
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 929
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    :goto_16
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 933
    invoke-static {v1, v2, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 934
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    .line 935
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    .line 937
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_24

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_24

    .line 938
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    .line 941
    :cond_24
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_25

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_25

    .line 942
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    :cond_25
    return-object v5
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 213
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 214
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 215
    iget-wide v1, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    .line 216
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 217
    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz p2, :cond_2

    .line 218
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    goto :goto_0

    .line 221
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    if-ne p1, p2, :cond_2

    .line 222
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 223
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/MediaActivity;->hideFloatingButton(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 1116
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    return-wide v0
.end method

.method public getNavigationBarColor()I
    .locals 2

    .line 1323
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 1324
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
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

    .line 1260
    new-instance v9, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda18;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    .line 1261
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1263
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

    .line 1264
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

    .line 1265
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

    .line 1266
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

    .line 1267
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

    .line 1268
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

    .line 1269
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

    .line 1271
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

    .line 1272
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v10
.end method

.method public getTopicId()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    return-wide v0
.end method

.method public getUndoView()Lorg/telegram/ui/Components/UndoView;
    .locals 1

    .line 94
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

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1283
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1284
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1285
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1287
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

    .line 962
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 966
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

    .line 970
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCurrentTabFirst()Z

    move-result p1

    return p1
.end method

.method public mediaCountUpdated()V
    .locals 2

    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v1, :cond_0

    .line 1233
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setNewMediaCounts([I)V

    .line 1235
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 950
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeStoryViewer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 953
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    return v1

    .line 957
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "custom_screen_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->customScreenType:I

    .line 164
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "topic_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    .line 166
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    .line 169
    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 173
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

    .line 178
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "start_from"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 182
    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    .line 189
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-nez v0, :cond_5

    .line 191
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->isMusicType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->SHARED_MEDIA_LAYOUT_MUSIC:I

    invoke-direct {v0, p0, v3, v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JI)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 193
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v0

    .line 194
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 195
    aput v2, v0, v1

    goto :goto_1

    .line 197
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 199
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V

    .line 200
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 205
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 206
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 207
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 208
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

    .line 1292
    new-instance v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
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

    .line 1292
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method
