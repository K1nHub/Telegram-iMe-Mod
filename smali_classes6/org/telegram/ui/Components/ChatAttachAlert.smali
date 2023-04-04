.class public Lorg/telegram/ui/Components/ChatAttachAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    }
.end annotation


# instance fields
.field public final ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ATTACH_ALERT_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/ChatAttachAlert;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private actionBarShadow:Landroid/view/View;

.field protected allowOrder:Z

.field protected allowPassConfirmationAlert:Z

.field private appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final attachButtonPaint:Landroid/graphics/Paint;

.field private attachItemSize:I

.field private audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

.field protected avatarPicker:I

.field protected avatarSearch:Z

.field protected baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private baseSelectedTextViewTranslationY:F

.field private botAttachLayouts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;",
            ">;"
        }
    .end annotation
.end field

.field private botButtonProgressWasVisible:Z

.field private botButtonWasVisible:Z

.field private botMainButtonOffsetY:F

.field private botMainButtonTextView:Landroid/widget/TextView;

.field private botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private bottomPannelTranslation:F

.field private buttonPressed:Z

.field private buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

.field private buttonsAnimation:Landroid/animation/AnimatorSet;

.field private buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field public canOpenPreview:Z

.field private captionEditTextTopOffset:F

.field protected captionLimitBulletinShown:Z

.field private final captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

.field private chatActivityEnterViewAnimateFromTop:F

.field private codepointCount:I

.field protected commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private commentTextViewLocation:[I

.field private commentsAnimator:Landroid/animation/AnimatorSet;

.field private confirmationAlertShown:Z

.field private contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

.field protected cornerRadius:F

.field protected currentAccount:I

.field private currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private currentLimit:I

.field currentPanTranslationY:F

.field protected delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

.field private documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

.field private documentsEnabled:Z

.field public doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected editingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private enterCommentEventSent:Z

.field private exclusionRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private exclustionRect:Landroid/graphics/Rect;

.field public forUser:Z

.field private final forceDarkTheme:Z

.field private frameLayout2:Landroid/widget/FrameLayout;

.field private fromScrollY:F

.field protected headerView:Landroid/widget/FrameLayout;

.field protected inBubbleMode:Z

.field private isSoundPicker:Z

.field private itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

.field protected maxSelectedPhotos:I

.field protected mediaPreviewTextView:Landroid/widget/TextView;

.field protected mediaPreviewView:Landroid/widget/LinearLayout;

.field private menuAnimator:Landroid/animation/AnimatorSet;

.field private menuShowed:Z

.field private musicEnabled:Z

.field private nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

.field private openTransitionFinished:Z

.field protected openWithFrontFaceCamera:Z

.field private paint:Landroid/graphics/Paint;

.field public parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field public parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field protected paused:Z

.field private photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field private photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

.field private photosEnabled:Z

.field private plainTextEnabled:Z

.field private pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

.field private pollsEnabled:Z

.field private previousScrollOffsetY:I

.field private rect:Landroid/graphics/RectF;

.field private restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

.field public scrollOffsetY:[I

.field protected searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected selectedArrowImageView:Landroid/widget/ImageView;

.field private selectedCountView:Landroid/view/View;

.field private selectedId:J

.field protected selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected selectedTextView:Landroid/widget/TextView;

.field protected selectedView:Landroid/widget/LinearLayout;

.field private sendButtonColorAnimator:Landroid/animation/ValueAnimator;

.field sendButtonEnabled:Z

.field private sendButtonEnabledProgress:F

.field private sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

.field private shadow:Landroid/view/View;

.field public sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

.field private templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

.field private textPaint:Landroid/text/TextPaint;

.field private toScrollY:F

.field private topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private translationDialog:Lcom/iMe/fork/ui/dialog/TranslateAlert;

.field public translationProgress:F

.field protected typeButtonsAvailable:Z

.field private videosEnabled:Z

.field private viewChangeAnimator:Ljava/lang/Object;

.field private final walletFlowCoordinator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonContainer:Landroid/widget/FrameLayout;

.field private writeButtonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$0Lg6JGOuu3hPXNOhPYh8ZP5McBg(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2mpiyyM4am_I0YOFPRbdgUiuy2Y(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openBinanceScreen$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$2rJddQD4nx0HqHO9RFSQFQ5L580(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$30(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3rcwwUwZE5ALjHTbp10lPK2epV8(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$7(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6mfh3dcxN3lpDIxW8cRED1qm5Dg(Lorg/telegram/ui/Components/ChatAttachAlert;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$20(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8yFIV5wV0pExrY-_QG3uzqGY4Ho(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$11(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Au2A5hn4MvJH-X3G1eccRI_ERZs(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->removeFromRoot()V

    return-void
.end method

.method public static synthetic $r8$lambda$CA4lIScwbJOfTUJDUxKw6QJNXsg(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$24(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKPgJMqvR1r2LS0Jl5Mfdsnj8HQ(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showCaptionLimitBulletin$23(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EigmKSua9YJYEwXO69SUkx3Ye84(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1PQp4gFdyULkx9Vn6IpO-IQonI(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$10(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HwoQiF_ISsz_vFWIp4G8azIil1U(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$41(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I7TYq5W8AbhvxbBbo6Yy2wKdl2g(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IIpqNMDlT4WTpK0PvMVzKA_x9Bk(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JCQN6dG3LvFuGcPmqqueHoQWsRI(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openWalletLayout$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JG9MUWmvKDprFb-4Ufo86J3u4As(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$35(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$JtGd63JRcU_5pU0QYZsl0v0oBw0(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openContactsLayout$31(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSdAfsOqrGu7NPfOG8z8Y8e4mtg(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$makeFocusable$37(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7lWxmb5pcT6eqSeuXMIYxLrkro(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$9(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NuVdYa3R5l52_TaxzUwzFZyEm5I(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$39(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PKWgdpCdx7gis9W1W9gn1kpaVdE(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$42(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHLjPk8xM9ZxCBBXHKyJZ7T_K0Q(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$22(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SUvCURkarvxaBwY89A354C38l7Y(Lorg/telegram/ui/Components/ChatAttachAlert;FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$28(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$TE6ZWP8oBUeDXFeTnEGP3Ig-33A(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VrVFiI3nYWQ5WAdIBWMAnuVJ7Ek(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$makeFocusable$38(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WkK0LQh6C-0xmv2fkecGGuoBqYM(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0LGtYZ17KdHuqwjMscb_yhSGps(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$15(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_YCywUvPKb0YLA8siR6Jpb1TaRg(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$33(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_gxNrj2JpsWWzbbeIRWAFA4cg6E(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openBinanceScreen$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$_pLQjQdYKecoxdR4oGyO8YI_Qz8(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$25(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$etxsys0pLtzqmQGZB6DhhzrULJQ(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$17(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fzlyP6pAtLZ2gZpusP6WeuaoAGo(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$dismiss$40(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$geoVcEdoXogZgXGmJMCTmNJ0oMk(Lorg/telegram/ui/Components/ChatAttachAlert;ILorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$21(ILorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gpalCrXT6cFosi-7ZbmUMEwhAZ8(Lorg/telegram/ui/Components/ChatAttachAlert;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$16(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i_NUADtEoUDn5PMGBiQ_cLzJdRw(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$18(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jXVnNSlFWRxs4T11iajcoE4BP9c(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openWalletLayout$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$jthJyFMvhPE8FucjJ36YXpK8KzY(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kC7CRY-bW8mECtfuM2416jBEnvs(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onLongClickBotButton$26(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGFUOI-vh-COzaYy2uXdVy81VLA(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$34(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m4PPjczIwLEjjMsEEwS0_i7l19Q(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openAudioLayout$32(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZILjava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nohsfRtytGRW1b5Cppv5DQTQmXs(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$qyypudxlS8KxEXu5WwEXKajARPw(Lorg/telegram/ui/Components/ChatAttachAlert;ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$showLayout$29(ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$rne7-UGOaP9Hpt93h8B5mR6dpbc(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$onCustomOpenAnimation$36(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufwcBmFJlUuDBVLwlvtnmkEP7qo(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$13(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1356
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 36

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    const/4 v13, 0x0

    .line 1361
    invoke-direct {v8, v9, v13, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 149
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->walletFlowCoordinator:Lkotlin/Lazy;

    const/16 v14, 0x8

    new-array v7, v14, [Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 157
    iput-object v7, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 328
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    .line 329
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    const/4 v15, 0x0

    .line 633
    iput v15, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    .line 634
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    const-string v1, "translation"

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    .line 890
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 896
    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    .line 901
    new-instance v0, Landroid/text/TextPaint;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    .line 902
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    .line 903
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    .line 910
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabled:Z

    const/high16 v4, 0x3f800000    # 1.0f

    .line 911
    iput v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    .line 916
    iput v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    .line 947
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    .line 950
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 958
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    .line 960
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    .line 961
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    .line 962
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    .line 963
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    .line 964
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    .line 965
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    const/4 v3, -0x1

    .line 967
    iput v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 968
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    const/16 v0, 0x55

    .line 974
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    .line 976
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-array v0, v6, [I

    .line 981
    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    .line 988
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtonPaint:Landroid/graphics/Paint;

    .line 993
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    .line 1351
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    .line 3500
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;

    const-string v1, "openProgress"

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    .line 4666
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    .line 4667
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 1362
    iput-boolean v11, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    .line 1364
    iput-boolean v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    .line 1365
    instance-of v0, v10, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    iput-boolean v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    .line 1366
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    .line 1367
    iput-object v10, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1368
    iput-boolean v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    .line 1369
    invoke-virtual {v8, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 1370
    iget v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1371
    iget v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1372
    iget v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1373
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {v0, v8, v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 1962
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 1970
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 1971
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 1972
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1973
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1974
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v1, v13, v1, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1976
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {v0, v8, v9, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "dialogBackground"

    .line 2002
    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2003
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 2004
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "dialogTextBlack"

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2005
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "dialogButtonSelector"

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2006
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 2007
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2008
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2009
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 2023
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x0

    move-object v0, v4

    move-object v14, v1

    move-object/from16 v1, p1

    move-object/from16 v22, v2

    move-object/from16 v2, v18

    move-object/from16 v23, v3

    move/from16 v3, v19

    move-object v15, v4

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2024
    invoke-virtual {v15, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2025
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2026
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2027
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2028
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2029
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 2030
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 2031
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x48

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2032
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2033
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v4, v23

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2034
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2036
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    const/16 v17, 0x0

    const-string v0, "windowBackgroundWhiteBlueHeader"

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move-object v0, v3

    move-object/from16 v1, p1

    move-object v15, v3

    move/from16 v3, v17

    move-object/from16 v28, v4

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2037
    invoke-virtual {v15, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2038
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Create:I

    const-string v2, "Create"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 2039
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2041
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2042
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v15, v28

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2043
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2045
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v13, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x0

    .line 2046
    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2047
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2048
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2049
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2050
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2051
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x2a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2052
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2053
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;

    move/from16 v2, p4

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2124
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    .line 2148
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2151
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2152
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2154
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 2155
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2156
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2158
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    .line 2159
    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2160
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2161
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const-string v15, "fonts/rmedium.ttf"

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2162
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2163
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2164
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2165
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2167
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    .line 2168
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2169
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2170
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2171
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2172
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    const/16 v29, -0x2

    const/16 v30, -0x2

    const/16 v31, 0x10

    const/16 v32, 0x4

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2173
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2174
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2176
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 2177
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2178
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2180
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->attach_arrow_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2182
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2183
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2185
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/16 v32, 0x0

    const/16 v34, 0x4

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2187
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    .line 2188
    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2189
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v13, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2190
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2191
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2192
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AttachMediaPreview:I

    const-string v4, "AttachMediaPreview"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2193
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2195
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2197
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2199
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {v0, v8, v9, v11, v12}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v2, 0x0

    aput-object v0, v7, v2

    const/4 v2, 0x0

    .line 2200
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2201
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const-wide/16 v4, 0x1

    .line 2202
    iput-wide v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 2204
    iget-object v2, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2206
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/16 v29, -0x1

    const/16 v31, 0x33

    const/16 v32, 0x17

    const/16 v33, 0x0

    const/16 v34, 0x30

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2207
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x30

    const/16 v5, 0x35

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2209
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2210
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2212
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const/4 v2, 0x0

    .line 2213
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2214
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const-string v2, "dialogShadowLine"

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2215
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const/4 v5, -0x1

    invoke-static {v5, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2217
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    .line 2218
    sget v2, Lorg/telegram/messenger/R$drawable;->attach_shadow:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2219
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2220
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    const/16 v30, 0x2

    const/16 v31, 0x53

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x54

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2222
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2229
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-direct {v2, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2230
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x0

    invoke-direct {v2, v9, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2231
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 2232
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 2233
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2234
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 2235
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 2236
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v2, v22

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2237
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 2238
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x54

    const/16 v6, 0x53

    const/4 v7, -0x1

    invoke-static {v7, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2239
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;

    invoke-direct {v2, v8, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2328
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2355
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 2356
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2357
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2358
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 2359
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2360
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2361
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 2362
    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2363
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v13, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2364
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2372
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2374
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x12

    .line 2375
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 2376
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2377
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2378
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2379
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2380
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v29, 0x1c

    const/16 v30, 0x1c

    const/16 v31, 0x55

    const/16 v34, 0xa

    const/16 v35, 0xa

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2382
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {v0, v8, v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 2432
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2433
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2434
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2435
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    invoke-static {v7, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2436
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;->INSTANCE:Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2438
    new-instance v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x8

    .line 2439
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xf

    .line 2440
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    const-string v1, "windowBackgroundWhiteGrayText"

    .line 2441
    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 2442
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2443
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/NumberTextView;->setCenterAlign(Z)V

    .line 2444
    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/16 v22, 0x38

    const/16 v23, 0x14

    const/16 v24, 0x55

    const/16 v25, 0x3

    const/16 v26, 0x0

    const/16 v27, 0xe

    const/16 v28, 0x4e

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2446
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    .line 2448
    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v18, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v7, v6

    move/from16 v6, v18

    move-object v14, v7

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 2534
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v1, Lorg/telegram/messenger/R$string;->Caption:I

    const-string v2, "Caption"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2537
    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v1, Lorg/telegram/messenger/R$string;->AddCaption:I

    const-string v2, "AddCaption"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 2538
    :goto_1
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 2539
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2619
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x53

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x54

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2620
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 2621
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 2623
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$13;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 2639
    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2640
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 2641
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2642
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2643
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2644
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2645
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/16 v22, 0x3c

    const/16 v23, 0x3c

    const/16 v24, 0x55

    const/16 v27, 0x6

    const/16 v28, 0xa

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2647
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    const/16 v0, 0x38

    .line 2648
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const-string v3, "dialogFloatingButton"

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    const-string v6, "dialogFloatingButtonPressed"

    goto :goto_2

    :cond_2
    const-string v6, "dialogFloatingButton"

    :goto_2
    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ge v4, v5, :cond_3

    .line 2650
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2651
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2652
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object v6, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-direct {v3, v2, v6, v7, v7}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 2653
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v2, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 2654
    iput-object v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 2656
    :goto_3
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    iget-object v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2658
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2659
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 2661
    :cond_4
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2662
    :goto_4
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "dialogFloatingIcon"

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2663
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 2664
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-lt v4, v5, :cond_5

    .line 2666
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$14;

    invoke-direct {v6, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2674
    :cond_5
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v6, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    if-lt v4, v5, :cond_6

    move/from16 v22, v0

    goto :goto_5

    :cond_6
    const/16 v13, 0x3c

    move/from16 v22, v13

    :goto_5
    if-lt v4, v5, :cond_7

    goto :goto_6

    :cond_7
    const/16 v0, 0x3c

    :goto_6
    move/from16 v23, v0

    const/16 v24, 0x33

    if-lt v4, v5, :cond_8

    move/from16 v25, v3

    goto :goto_7

    :cond_8
    move/from16 v25, v7

    :goto_7
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2675
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;

    invoke-direct {v2, v8, v10, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2707
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;

    invoke-direct {v2, v8, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2870
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2871
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2873
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$16;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/4 v2, 0x0

    .line 2894
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2895
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2896
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2898
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2899
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2902
    :cond_9
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/16 v12, 0x2a

    const/16 v13, 0x18

    const/16 v14, 0x55

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x8

    const/16 v18, 0x9

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v11, :cond_a

    .line 2905
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkColors()V

    const/4 v0, 0x0

    .line 2906
    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    .line 2909
    :cond_a
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 2910
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return p1
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return p0
.end method

.method static synthetic access$11102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return p1
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$11202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return p0
.end method

.method static synthetic access$11302(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    return p0
.end method

.method static synthetic access$11402(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    return p1
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    return p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$11901(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 144
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return p0
.end method

.method static synthetic access$12002(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return p1
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    return p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$12502(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    return p0
.end method

.method static synthetic access$12602(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    return p1
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/ImageView;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    return-object p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/text/TextPaint;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/RectF;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$13700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    return-void
.end method

.method static synthetic access$13900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$13902(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    return-object p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    return p0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    return-object p0
.end method

.method static synthetic access$15002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15102(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p1
.end method

.method static synthetic access$15600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$15602(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    return p0
.end method

.method static synthetic access$15802(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15900(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    return-object p0
.end method

.method static synthetic access$16000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    return p0
.end method

.method static synthetic access$16100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    return p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    return p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)J
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtonPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 144
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Rect;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    .line 144
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 144
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 144
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method private applyAttachButtonColors(Landroid/view/View;)V
    .locals 3

    .line 3707
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    const-string v1, "dialogTextGray2"

    if-eqz v0, :cond_0

    .line 3708
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 3709
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$14100(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$15200(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$15300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)F

    move-result p1

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3710
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v0, :cond_1

    .line 3711
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 3712
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$14300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$15400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$15500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)F

    move-result p1

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getScrollOffsetY(I)I
    .locals 2

    .line 3850
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v0, :cond_1

    .line 3851
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    return p1

    .line 3853
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget p1, v0, p1

    return p1
.end method

.method private isLightStatusBar()Z
    .locals 4

    .line 2969
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "voipgroup_listViewBackground"

    goto :goto_0

    :cond_0
    const-string v0, "dialogBackground"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 2970
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private synthetic lambda$dismiss$39(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 4700
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 4701
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$40(Landroid/content/DialogInterface;)V
    .locals 3

    .line 4705
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    .line 4706
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 4708
    :cond_0
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4709
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4710
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v0, 0x44bb8000    # 1500.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4711
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private synthetic lambda$dismiss$41(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 4714
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    return-void
.end method

.method private synthetic lambda$dismiss$42(I)V
    .locals 1

    const/4 v0, 0x0

    .line 4730
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    .line 4731
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 4732
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$makeFocusable$37(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 3700
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$makeFocusable$38(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3697
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 3698
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p2, :cond_0

    .line 3700
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZILjava/lang/String;)V
    .locals 7

    .line 2299
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ChatActivity;->sendPoll(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;I)V
    .locals 9

    .line 2240
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 2243
    :cond_0
    instance-of p3, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    const/4 v0, 0x0

    if-eqz p3, :cond_14

    .line 2244
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2246
    sget v1, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    if-ne p3, v1, :cond_1

    .line 2247
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openWalletLayout()V

    goto/16 :goto_0

    .line 2248
    :cond_1
    sget v1, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_BINANCE:I

    if-ne p3, v1, :cond_2

    .line 2249
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openBinanceScreen()V

    goto/16 :goto_0

    .line 2250
    :cond_2
    sget v1, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    if-ne p3, v1, :cond_3

    .line 2251
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openTemplatesLayout()V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    .line 2254
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez p3, :cond_4

    .line 2255
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v1, p0, v2, p1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 2257
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x3

    const/16 v3, 0x17

    const/4 v4, 0x4

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    if-ne p3, v2, :cond_7

    .line 2259
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 2260
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2263
    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    goto/16 :goto_0

    :cond_7
    if-ne p3, v4, :cond_9

    .line 2265
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 2266
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2269
    :cond_8
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x5

    if-ne p3, v2, :cond_b

    .line 2271
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-eqz p1, :cond_a

    .line 2272
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p3, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, p3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_a

    .line 2273
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2277
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x6

    if-ne p3, v3, :cond_f

    .line 2279
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p3

    if-nez p3, :cond_c

    return-void

    .line 2282
    :cond_c
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez p3, :cond_d

    .line 2283
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v3, p0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 2284
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 2286
    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-nez p3, :cond_e

    .line 2287
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    aput-object v1, p3, v2

    .line 2288
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;)V

    .line 2290
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    :cond_f
    const/16 v2, 0x9

    if-ne p3, v2, :cond_12

    .line 2293
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    if-nez p3, :cond_10

    .line 2294
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v2, p0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 2295
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 2297
    :cond_10
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-nez p3, :cond_11

    .line 2298
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    aput-object v2, p3, v1

    .line 2299
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V

    .line 2301
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 2304
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    .line 2306
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 2307
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    const/16 v1, 0xa

    .line 2308
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    if-gez p1, :cond_13

    .line 2310
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_13
    add-int/2addr p3, v1

    .line 2311
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-le p3, p1, :cond_16

    .line 2312
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 2314
    :cond_14
    instance-of p1, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz p1, :cond_16

    .line 2315
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 2316
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 2317
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p1

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(J)V

    goto :goto_1

    .line 2319
    :cond_15
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2320
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 2324
    :cond_16
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_17

    .line 2325
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$new$12(Landroid/view/View;)V
    .locals 2

    .line 2333
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 2334
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 2335
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$16600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)I

    move-result p1

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    if-ne p1, v1, :cond_0

    .line 2336
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->showChooseTemplatesModeDialog()V

    goto :goto_0

    .line 2338
    :cond_0
    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lcom/iMe/fork/enums/DialogType;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;I)Z
    .locals 4

    .line 2330
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v0, :cond_0

    .line 2331
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 2332
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 2344
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2345
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz p2, :cond_2

    .line 2346
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2349
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 4

    .line 2365
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 2366
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-eqz p1, :cond_0

    .line 2368
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->getWebViewContainer()Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onMainButtonPressed()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$16(ZILjava/lang/String;)V
    .locals 6

    .line 2689
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 2692
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    const/4 p1, 0x1

    .line 2693
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 2694
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2690
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZILjava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$17(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 12

    .line 2676
    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr p3, v0

    if-gez p3, :cond_1

    .line 2677
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 2679
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 p3, 0x3

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2682
    :catch_0
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    if-le p2, p3, :cond_0

    .line 2683
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void

    .line 2687
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_2

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p3, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p3, p3}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2688
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda38;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_1

    .line 2698
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v6, p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v6, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 2701
    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2702
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 2703
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 2699
    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZI)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$18(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2738
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2739
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$19(Ljava/lang/String;)V
    .locals 1

    .line 2821
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 2823
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$20(ZILjava/lang/String;)V
    .locals 6

    .line 2830
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    .line 2833
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2834
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    .line 2831
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZI)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$21(ILorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    .line 2808
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2809
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 2812
    :cond_0
    sget v2, Lcom/iMe/common/IdFabric$Menu;->REACTIONS:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 2813
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v5, v1, :cond_1

    const/4 v1, 0x0

    .line 2814
    invoke-direct {p0, v4, v4, v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZILjava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 2816
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2817
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    .line 2819
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v1, v2, :cond_3

    .line 2820
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ChatActivity;->createTranslateOutgoingDialog(Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/TranslateAlert;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationDialog:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    .line 2826
    invoke-virtual {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->show()V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p2

    if-nez v1, :cond_4

    .line 2829
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda37;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    const/4 v7, 0x0

    move-object v2, v1

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_7

    .line 2838
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v8, v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne v8, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 2841
    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2842
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    .line 2839
    :cond_6
    :goto_0
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZI)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$22(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 2708
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v9, 0x0

    if-eqz v1, :cond_16

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_16

    iget v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v2, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    goto/16 :goto_b

    .line 2711
    :cond_0
    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/ChatActivity;

    .line 2712
    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2713
    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 2714
    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v9}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    .line 2718
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2719
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2720
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$15;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2737
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2742
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    const/4 v13, 0x2

    new-array v0, v13, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2744
    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v14, 0x4

    new-array v15, v14, [I

    .line 2746
    sget v0, Lcom/iMe/common/IdFabric$Menu;->REACTIONS:I

    aput v0, v15, v9

    sget v0, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    aput v0, v15, v12

    aput v9, v15, v13

    const/4 v5, 0x3

    aput v12, v15, v5

    new-array v0, v14, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2747
    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2748
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move v4, v9

    :goto_0
    if-ge v4, v14, :cond_14

    .line 2754
    aget v2, v15, v4

    .line 2757
    sget v0, Lcom/iMe/common/IdFabric$Menu;->REACTIONS:I

    if-ne v2, v0, :cond_4

    .line 2758
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v1, v3, :cond_2

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eq v1, v3, :cond_2

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-ne v1, v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v1

    if-eq v1, v12, :cond_5

    :cond_3
    :goto_1
    move v1, v12

    goto :goto_2

    .line 2761
    :cond_4
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v2, v1, :cond_5

    .line 2762
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v9

    :goto_2
    if-nez v2, :cond_7

    .line 2768
    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->canScheduleMessages()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    :goto_3
    move v1, v12

    goto :goto_4

    :cond_7
    if-ne v2, v12, :cond_8

    .line 2772
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    move v14, v4

    goto/16 :goto_9

    .line 2783
    :cond_9
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    if-nez v4, :cond_a

    move v13, v12

    goto :goto_5

    :cond_a
    move v13, v9

    :goto_5
    if-ne v4, v12, :cond_b

    move v9, v12

    :cond_b
    invoke-direct {v3, v14, v13, v9, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v1, v4

    .line 2784
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v1, v1, v4

    if-nez v4, :cond_c

    move v3, v12

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    if-ne v4, v5, :cond_d

    move v9, v12

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v1, v3, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    if-ne v2, v0, :cond_e

    .line 2787
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->sending_settings_send_add_reactions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_reactions:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 2788
    :cond_e
    sget v0, Lcom/iMe/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v2, v0, :cond_f

    .line 2789
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->chat_long_action_translate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_8

    :cond_f
    if-nez v2, :cond_11

    .line 2792
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2793
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->SetReminder:I

    const-string v3, "SetReminder"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_8

    .line 2795
    :cond_10
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->ScheduleMessage:I

    const-string v3, "ScheduleMessage"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_8

    :cond_11
    if-ne v2, v12, :cond_13

    .line 2799
    iget v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ToolsController;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabledForDialog(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2800
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_8

    .line 2802
    :cond_12
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    const-string v3, "SendWithoutSound"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2804
    :cond_13
    :goto_8
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    const/16 v1, 0xc4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 2806
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v1, v1, v4

    const/4 v3, -0x1

    const/16 v9, 0x30

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2807
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v9, v0, v4

    new-instance v13, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda10;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v10

    move v14, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ILorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v9, v13}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    add-int/lit8 v4, v14, 0x1

    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x4

    goto/16 :goto_0

    .line 2848
    :cond_14
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const-string v1, "dialogButtonSelector"

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    .line 2850
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    .line 2851
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 2852
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2853
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2854
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2855
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2856
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2857
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2859
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x3e8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2860
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2862
    invoke-virtual {v8, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2863
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v2, 0x33

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v4, v3

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v4, v3

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v4, v3

    aget v1, v1, v12

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v0, v8, v2, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2864
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    const/4 v0, 0x3

    .line 2865
    invoke-virtual {v8, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_a
    move v0, v9

    return v0

    :cond_16
    :goto_b
    move v0, v9

    return v0
.end method

.method private synthetic lambda$new$4(I)V
    .locals 1

    .line 2030
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 2034
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 2043
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onMenuItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$7(ZLandroid/view/View;)V
    .locals 8

    .line 2054
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p2, :cond_0

    .line 2055
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->openAvatarsSearch()V

    .line 2056
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    .line 2059
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2060
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2061
    new-instance v7, Lorg/telegram/ui/PhotoPickerSearchActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v5, v0

    check-cast v5, Lorg/telegram/ui/ChatActivity;

    move-object v0, v7

    move-object v1, p2

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoPickerSearchActivity;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;)V

    .line 2062
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    invoke-direct {v0, p0, p2, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 2115
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v7, p2, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setMaxSelectedPhotos(IZ)V

    if-eqz p1, :cond_1

    .line 2117
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    .line 2119
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2121
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    .line 2149
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotoPreview(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V
    .locals 7

    .line 2288
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ChatActivity;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$33(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3588
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 3589
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 3590
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$34(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 4

    const/4 v0, 0x0

    .line 3615
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 3616
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    .line 3617
    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-eqz p1, :cond_0

    .line 3619
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->onOpenAnimationEnd()V

    .line 3621
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz p1, :cond_1

    .line 3622
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3625
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    if-eqz p1, :cond_2

    .line 3626
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 3627
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3628
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3630
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$35(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 3633
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3634
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$36(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3667
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setNavBarAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$24(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 4

    .line 2984
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    .line 2985
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 2986
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$25(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2983
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$26(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2980
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    .line 2981
    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p2, 0x0

    .line 2982
    iput-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    .line 2983
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    const/16 p1, 0x42

    invoke-virtual {p2, p3, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 2990
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->removeInline(J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$openAudioLayout$32(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZILjava/lang/String;ZZ)V
    .locals 10

    move-object v0, p0

    .line 3321
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/ChatActivity;->sendAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZILjava/lang/String;ZZ)V

    return-void
.end method

.method private synthetic lambda$openBinanceScreen$2()V
    .locals 4

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Ljava/lang/Long;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_0
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-direct {v0, v1, v1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Ljava/lang/Long;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    .line 292
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletFlowCoordinator:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 293
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const/4 v3, 0x0

    .line 292
    invoke-virtual {v1, v2, v0, v3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Z)V

    .line 297
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openBinanceScreen$3()V
    .locals 3

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->runWithCheckIsBinancePayActivated(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private synthetic lambda$openContactsLayout$31(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V
    .locals 1

    .line 3307
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity;->sendContact(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$openWalletLayout$0()V
    .locals 4

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x6

    new-instance v2, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3}, Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    aput-object v2, v0, v1

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private synthetic lambda$openWalletLayout$1()V
    .locals 4

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/iMe/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private synthetic lambda$showCaptionLimitBulletin$23(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x1

    .line 2953
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    if-eqz p1, :cond_0

    .line 2955
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "caption_limit"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showLayout$27()V
    .locals 5

    .line 3152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_0

    .line 3153
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3155
    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    .line 3156
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq v3, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    .line 3157
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3159
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3160
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 3161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    .line 3162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3163
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3164
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    aput v2, v0, v1

    return-void
.end method

.method private synthetic lambda$showLayout$28(FFZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p4, 0x43fa0000    # 500.0f

    div-float/2addr p5, p4

    .line 3240
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p4, p6, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3241
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3242
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 3243
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 3244
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sub-float p5, p2, p5

    .line 3245
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3246
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    sub-float/2addr p2, p5

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3247
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/16 p3, 0x10

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    neg-int p4, p4

    int-to-float p4, p4

    mul-float/2addr p5, p4

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 3248
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$showLayout$29(ZLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 3251
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 3252
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 3253
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 3254
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 3255
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->invalidate()V

    .line 3256
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3257
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$showLayout$30(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V
    .locals 6

    .line 3234
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    .line 3235
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result p1

    if-gt v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3237
    :goto_1
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v5, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 3238
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;FFZ)V

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3250
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLjava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3259
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x43fa0000    # 500.0f

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v4, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3260
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3261
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x447a0000    # 1000.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3262
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 3264
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-void
.end method

.method private openAudioLayout(Z)V
    .locals 5

    .line 3313
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3315
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 3316
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3319
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-nez v0, :cond_1

    .line 3320
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    aput-object v2, v0, v1

    .line 3321
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;)V

    .line 3323
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    .line 3324
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 3325
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3326
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setMaxSelectedFiles(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 3329
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_6
    return-void
.end method

.method private openBinanceScreen()V
    .locals 4

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_description:I

    .line 283
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 281
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private openContactsLayout()V
    .locals 5

    .line 3301
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v0, :cond_0

    .line 3302
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 3303
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3305
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-nez v0, :cond_1

    .line 3306
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    aput-object v2, v0, v1

    .line 3307
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V

    .line 3309
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openDocumentsLayout(Z)V
    .locals 6

    .line 3334
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3336
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 3337
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3340
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-nez v0, :cond_2

    .line 3341
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3342
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, p0, v4, v0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    aput-object v3, v2, v1

    .line 3343
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    .line 3377
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 3378
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 3379
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3380
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setMaxSelectedFiles(I)V

    goto :goto_2

    .line 3382
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setMaxSelectedFiles(I)V

    .line 3383
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setCanSelectOnlyImageFiles(Z)V

    .line 3385
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz p1, :cond_7

    .line 3387
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_7
    return-void
.end method

.method private openPhotoPreviewLayout()V
    .locals 3

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    .line 312
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openTemplatesLayout()V
    .locals 6

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x7

    new-instance v2, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    aput-object v2, v0, v1

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openWalletLayout()V
    .locals 4

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_description:I

    .line 269
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 267
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private removeFromRoot()V
    .locals 4

    .line 4599
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 4600
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4602
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4603
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_1
    const/4 v0, 0x0

    .line 4606
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 4607
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    .line 4609
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    .line 4610
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    .line 4611
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    .line 4612
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 4613
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    const/4 v1, 0x1

    .line 4614
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 4615
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    goto :goto_1

    .line 4618
    :cond_2
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    .line 4619
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4620
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 4622
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    .line 4623
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method private sendPressed(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZILjava/lang/String;Z)V

    return-void
.end method

.method private sendPressed(ZILjava/lang/String;Z)V
    .locals 9

    .line 3046
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 3049
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_3

    .line 3050
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 3051
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 3052
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3053
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3054
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silent_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3057
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCaption(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 3060
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    const/4 v0, 0x1

    .line 3061
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    .line 3062
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    move-object v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIZLjava/lang/String;Z)V

    return-void
.end method

.method private setNavBarAlpha(F)V
    .locals 6

    const-string v0, "windowBackgroundGray"

    .line 3678
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 3679
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 3680
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 3681
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 2948
    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2952
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2957
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private showCommentTextView(ZZ)Z
    .locals 12

    .line 3392
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne p1, v0, :cond_1

    return v2

    .line 3395
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 3396
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3398
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3399
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3400
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3402
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_6

    .line 3404
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v0, :cond_5

    .line 3405
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3407
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3408
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v0, :cond_7

    .line 3409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 3411
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v0, :cond_7

    .line 3412
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :cond_7
    :goto_2
    const/16 v0, 0x54

    const/16 v3, 0x30

    const/16 v4, 0x24

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_18

    .line 3415
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    .line 3416
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3417
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz p1, :cond_8

    move v11, v7

    goto :goto_3

    :cond_8
    move v11, v6

    :goto_3
    aput v11, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3418
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz p1, :cond_9

    move v11, v7

    goto :goto_4

    :cond_9
    move v11, v5

    :goto_4
    aput v11, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3419
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz p1, :cond_a

    move v11, v7

    goto :goto_5

    :cond_a
    move v11, v5

    :goto_5
    aput v11, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3420
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz p1, :cond_b

    move v11, v7

    goto :goto_6

    :cond_b
    move v11, v6

    :goto_6
    aput v11, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3421
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz p1, :cond_c

    move v11, v7

    goto :goto_7

    :cond_c
    move v11, v5

    :goto_7
    aput v11, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3422
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz p1, :cond_d

    move v5, v7

    :cond_d
    aput v5, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3423
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v1, [F

    if-eqz p1, :cond_e

    move v10, v7

    goto :goto_8

    :cond_e
    move v10, v6

    :goto_8
    aput v10, v9, v2

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3424
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 3425
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v1, [F

    if-eqz p1, :cond_f

    move v3, v6

    goto :goto_9

    :cond_f
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    :goto_9
    aput v3, v9, v2

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3426
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v1, [F

    if-eqz p1, :cond_10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_a

    :cond_10
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_a
    int-to-float v0, v0

    aput v0, v8, v2

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    if-eqz p1, :cond_11

    move v6, v7

    :cond_11
    aput v6, v4, v2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3428
    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v0, :cond_15

    .line 3429
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    if-eqz p1, :cond_13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    goto :goto_b

    :cond_13
    move v7, v6

    :goto_b
    aput v7, v5, v2

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3430
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    if-eqz p1, :cond_14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v6, v4

    :cond_14
    aput v6, v5, v2

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3431
    :cond_15
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v0, :cond_17

    .line 3432
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3433
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    if-eqz p1, :cond_16

    move v6, v7

    :cond_16
    aput v6, v4, v2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3436
    :cond_17
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3437
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3438
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3439
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3467
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_16

    .line 3469
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_19

    move v8, v7

    goto :goto_d

    :cond_19
    move v8, v6

    :goto_d
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3470
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1a

    move v8, v7

    goto :goto_e

    :cond_1a
    move v8, v5

    :goto_e
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3471
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1b

    move v8, v7

    goto :goto_f

    :cond_1b
    move v8, v5

    :goto_f
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3472
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1c

    move v8, v7

    goto :goto_10

    :cond_1c
    move v8, v6

    :goto_10
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3473
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_1d

    move v8, v7

    goto :goto_11

    :cond_1d
    move v8, v5

    :goto_11
    invoke-virtual {p2, v8}, Landroid/view/View;->setScaleX(F)V

    .line 3474
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_1e

    move v5, v7

    :cond_1e
    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 3475
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_1f

    move v5, v7

    goto :goto_12

    :cond_1f
    move v5, v6

    :goto_12
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3476
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 3477
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_20

    move v2, v6

    goto :goto_13

    :cond_20
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    :goto_13
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3478
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz p1, :cond_21

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_14

    :cond_21
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_14
    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3479
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz p1, :cond_22

    move v6, v7

    :cond_22
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_15

    .line 3480
    :cond_23
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz p2, :cond_28

    .line 3481
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 3482
    :cond_24
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_25

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v6, v0

    :cond_25
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3484
    :cond_26
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz p1, :cond_27

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :cond_27
    int-to-float v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_15

    .line 3486
    :cond_28
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3487
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz p1, :cond_29

    move v6, v7

    :cond_29
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_15
    if-nez p1, :cond_2a

    .line 3490
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3491
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3492
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-nez p1, :cond_2a

    .line 3493
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    :goto_16
    return v1
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 3066
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 3068
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    if-ne p1, v2, :cond_0

    .line 3069
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    :goto_0
    int-to-long v0, v0

    goto :goto_1

    .line 3070
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-ne p1, v2, :cond_1

    .line 3071
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    goto :goto_0

    .line 3073
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne p1, v2, :cond_2

    .line 3074
    iget v0, v2, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->id:I

    goto :goto_0

    .line 3075
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p1, v2, :cond_3

    const-wide/16 v0, 0x1

    goto :goto_1

    .line 3077
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-ne p1, v2, :cond_4

    const-wide/16 v0, 0x3

    goto :goto_1

    .line 3079
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne p1, v2, :cond_5

    const-wide/16 v0, 0x4

    goto :goto_1

    .line 3081
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-ne p1, v2, :cond_6

    const-wide/16 v0, 0x5

    goto :goto_1

    .line 3083
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-ne p1, v2, :cond_7

    const-wide/16 v0, 0x6

    goto :goto_1

    .line 3085
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne p1, v2, :cond_8

    const-wide/16 v0, 0x9

    .line 3088
    :cond_8
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V

    return-void
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V
    .locals 9

    .line 3092
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 3095
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v0, p1, :cond_1

    .line 3096
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->scrollToTop()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3100
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 3101
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    const/4 v1, 0x0

    .line 3102
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    .line 3103
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3104
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 3105
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 3106
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 3107
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3108
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3109
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    move v2, v0

    .line 3110
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3111
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3114
    :cond_2
    iput-wide p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 3115
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v0

    :goto_1
    const/4 v2, 0x1

    if-ge p3, p2, :cond_5

    .line 3117
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3118
    instance-of v5, v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v5, :cond_3

    .line 3119
    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 3120
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->updateCheckedState(Z)V

    goto :goto_2

    .line 3121
    :cond_3
    instance-of v5, v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v5, :cond_4

    .line 3122
    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 3123
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->updateCheckedState(Z)V

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 3126
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getFirstOffset()I

    move-result p2

    const/16 p3, 0xb

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget p3, p3, v0

    sub-int/2addr p2, p3

    .line 3127
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3128
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    const/4 v5, 0x2

    if-lt p3, v4, :cond_6

    .line 3129
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v4, 0x0

    invoke-virtual {p3, v5, v4}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3131
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_7

    move v4, v0

    goto :goto_3

    :cond_7
    move v4, v6

    :goto_3
    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3132
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3133
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 3134
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 3136
    :cond_8
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 3137
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p3, v4, :cond_9

    .line 3138
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    .line 3140
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3141
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3143
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 3144
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3146
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    .line 3147
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eq v4, v7, :cond_c

    .line 3148
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-ne v4, v8, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 p3, p3, 0x1

    :goto_4
    const/4 v8, -0x1

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v4, p3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3151
    :cond_c
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 3167
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3168
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3173
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v4, :cond_e

    .line 3174
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3175
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3176
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v4, 0x4e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    .line 3177
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v2, [F

    .line 3178
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, p2

    int-to-float p2, v4

    aput p2, v8, v0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v3, v0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    .line 3179
    invoke-static {p2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v3, v2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    .line 3180
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    aput v1, v6, v2

    invoke-static {p2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v3, v5

    .line 3177
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xb4

    .line 3182
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x14

    .line 3183
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3184
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3185
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$17;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3206
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    .line 3207
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    .line 3209
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3210
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v4, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v4, :cond_f

    int-to-float p2, p2

    .line 3211
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3212
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v2, :cond_10

    .line 3213
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 3214
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_10

    .line 3215
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3216
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3217
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 3221
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3222
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p2, v2, :cond_10

    .line 3223
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 3224
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_10

    .line 3225
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3226
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3230
    :cond_10
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3231
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3232
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3233
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_11
    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateActionBarVisibility(ZZ)V
    .locals 10

    if-eqz p1, :cond_0

    .line 3933
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3934
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3935
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 3936
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3937
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 3940
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarSearch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->allowSendGifs()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->allowSendPhotos()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    .line 3941
    :goto_2
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v3, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne v3, v4, :cond_7

    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v3, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v3, v2

    .line 3942
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne v4, v5, :cond_9

    move v0, v1

    move v3, v0

    :cond_9
    if-eqz p1, :cond_b

    if-eqz v0, :cond_a

    .line 3948
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    if-eqz v3, :cond_c

    .line 3951
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 3953
    :cond_b
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    .line 3954
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3957
    :cond_c
    :goto_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v4, :cond_e

    if-eqz p1, :cond_d

    .line 3959
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isLightStatusBar()Z

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_6

    .line 3961
    :cond_d
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_e
    :goto_6
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_16

    .line 3965
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/high16 v6, 0x43340000    # 180.0f

    if-eqz p1, :cond_f

    move v7, v4

    goto :goto_7

    :cond_f
    move v7, v5

    .line 3966
    :goto_7
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v6

    float-to-long v6, v7

    invoke-virtual {p2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3967
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3968
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz p1, :cond_10

    move v9, v4

    goto :goto_8

    :cond_10
    move v9, v5

    :goto_8
    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3969
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    if-eqz p1, :cond_11

    move v9, v4

    goto :goto_9

    :cond_11
    move v9, v5

    :goto_9
    aput v9, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_13

    .line 3971
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_12

    move v8, v4

    goto :goto_a

    :cond_12
    move v8, v5

    :goto_a
    aput v8, v7, v1

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v3, :cond_15

    .line 3974
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    if-eqz p1, :cond_14

    goto :goto_b

    :cond_14
    move v4, v5

    :goto_b
    aput v4, v2, v1

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3976
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3977
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$22;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3999
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_10

    :cond_16
    const/4 p2, 0x4

    if-eqz p1, :cond_18

    .line 4002
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4003
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4006
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_19

    move v2, v4

    goto :goto_c

    :cond_19
    move v2, v5

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4007
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    if-eqz p1, :cond_1a

    move v2, v4

    goto :goto_d

    :cond_1a
    move v2, v5

    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v0, :cond_1c

    .line 4009
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_1b

    move v1, v4

    goto :goto_e

    :cond_1b
    move v1, v5

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1c
    if-eqz v3, :cond_1e

    .line 4012
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_1d

    goto :goto_f

    :cond_1d
    move v4, v5

    :goto_f
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1e
    if-nez p1, :cond_20

    .line 4015
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4016
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez p1, :cond_20

    .line 4017
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_20
    :goto_10
    return-void
.end method

.method private updateSelectedPosition(I)V
    .locals 9

    if-nez p1, :cond_0

    .line 3859
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3860
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p1

    .line 3861
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int v1, p1, v1

    .line 3863
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x27

    .line 3867
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x2b

    .line 3868
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v2, 0xd

    .line 3864
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xb

    .line 3865
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :goto_2
    int-to-float v2, v2

    .line 3870
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v3, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_3

    .line 3871
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int/2addr v3, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v5, v1

    .line 3872
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    goto :goto_3

    .line 3875
    :cond_3
    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    move v1, v6

    .line 3879
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x10

    goto :goto_4

    .line 3881
    :cond_4
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_5

    const/4 v2, 0x6

    goto :goto_4

    :cond_5
    const/16 v2, 0xc

    .line 3887
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_5

    :cond_6
    const/high16 v3, 0x41d00000    # 26.0f

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    .line 3888
    :goto_5
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_8

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v4, :cond_8

    .line 3890
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eqz v4, :cond_7

    if-ne v0, v4, :cond_7

    add-int/lit8 v2, v2, -0x4

    .line 3894
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v7, 0x42140000    # 37.0f

    int-to-float v8, v2

    mul-float/2addr v8, v1

    add-float/2addr v8, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, p1, v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    iget v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3896
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_a

    .line 3897
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_6

    .line 3902
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eqz v4, :cond_9

    if-ne v0, v4, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 3906
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x25

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3908
    :cond_a
    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v7, v5

    add-int/lit8 v5, v2, 0x25

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v7, v5

    int-to-float v5, v7

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3909
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/high16 v5, 0x41c80000    # 25.0f

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3910
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eqz v2, :cond_b

    if-eq v0, v2, :cond_d

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    if-eqz v2, :cond_c

    if-eq v0, v2, :cond_d

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-eqz v2, :cond_12

    if-ne v0, v2, :cond_12

    .line 3911
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x3f

    goto :goto_7

    .line 3913
    :cond_e
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_f

    const/16 v2, 0x35

    goto :goto_7

    :cond_f
    const/16 v2, 0x3b

    .line 3920
    :goto_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    if-eqz v3, :cond_10

    if-ne v0, v3, :cond_10

    goto :goto_8

    .line 3922
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-eqz v3, :cond_11

    if-ne v0, v3, :cond_11

    goto :goto_8

    .line 3925
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    .line 3928
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    int-to-float p1, p1

    add-float/2addr v3, p1

    const/high16 p1, 0x40e00000    # 7.0f

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v3, p1

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_12
    return-void
.end method


# virtual methods
.method protected applyCaption()V
    .locals 2

    .line 3039
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3042
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->applyCaption(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public avatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-void
.end method

.method public canDismiss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    .line 4656
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->canDismissWithTouchOutside()Z

    move-result v0

    return v0
.end method

.method protected cancelSheetAnimation()V
    .locals 1

    .line 3551
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 3552
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3553
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 3554
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 3556
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3557
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 3559
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 3560
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    :cond_2
    return-void
.end method

.method public checkCaption(Ljava/lang/CharSequence;)Z
    .locals 7

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 589
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    .line 590
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkPremiumAnimatedEmoji(IJLorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkColors()V
    .locals 12

    .line 3732
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 3735
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3737
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3739
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    const-string v3, "voipgroup_actionBarItems"

    const-string v4, "dialogTextBlack"

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3740
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3742
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "windowBackgroundWhiteBlueHeader"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3744
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 3745
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    const-string v5, "voipgroup_actionBarItemsSelector"

    const-string v6, "dialogButtonSelector"

    if-eqz v2, :cond_5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_4
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 3746
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3747
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3748
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v7, "actionBarDefaultSubmenuBackground"

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 3750
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    :goto_5
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 3751
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v9, :cond_7

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    :goto_6
    invoke-static {v0, v9}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 3753
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->updateColors()V

    .line 3755
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_b

    move v0, v1

    .line 3756
    :goto_7
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v10, v9

    if-ge v0, v10, :cond_a

    .line 3757
    aget-object v10, v9, v0

    if-eqz v10, :cond_9

    .line 3758
    aget-object v9, v9, v0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    const-string v11, "actionBarDefaultSubmenuItemIcon"

    invoke-virtual {p0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 3759
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v9, v9, v0

    iget-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v10, :cond_8

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_8
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    :goto_8
    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3762
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 3763
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3764
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3768
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    const-string v2, "dialogFloatingButton"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 3769
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v7, v9, :cond_c

    const-string v2, "dialogFloatingButtonPressed"

    :cond_c
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 3770
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v7, "dialogFloatingIcon"

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3772
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const-string v2, "dialogShadowLine"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3774
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 3775
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    const-string v7, "voipgroup_listViewBackground"

    const-string v8, "dialogBackground"

    if-eqz v2, :cond_d

    move-object v2, v7

    goto :goto_9

    :cond_d
    move-object v2, v8

    :goto_9
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3777
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_e

    move-object v2, v7

    goto :goto_a

    :cond_e
    move-object v2, v8

    :goto_a
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3779
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3781
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_f

    const-string v2, "voipgroup_actionBar"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_b

    :cond_f
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_b
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 3782
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_10

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_c

    :cond_10
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_c
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 3783
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_11

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_d

    :cond_11
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_d
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 3784
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_12

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_e

    :cond_12
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    :goto_e
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 3786
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v2, :cond_13

    goto :goto_f

    :cond_13
    move-object v7, v8

    :goto_f
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 3788
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3790
    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 3791
    aget-object v2, v0, v1

    if-eqz v2, :cond_14

    .line 3792
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->checkColors()V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_15
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 3840
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 3844
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    .line 3845
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    goto :goto_1

    .line 3841
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    if-eqz p1, :cond_2

    .line 3842
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 6

    .line 4678
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4682
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationDialog:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4683
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationDialog:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    .line 4686
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 4687
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4689
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 4690
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 4691
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    if-eqz v0, :cond_3

    return-void

    .line 4694
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    .line 4695
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4696
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertTitle:I

    const-string v2, "DiscardSelectionAlertTitle"

    .line 4697
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertMessage:I

    const-string v2, "DiscardSelectionAlertMessage"

    .line 4698
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    .line 4699
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    .line 4703
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 4704
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 4713
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4716
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 4717
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 4718
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v1, "dialogTextRed"

    .line 4720
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    move v2, v0

    .line 4724
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 4725
    aget-object v4, v3, v2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aget-object v5, v3, v2

    if-eq v4, v5, :cond_6

    .line 4726
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4729
    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "windowBackgroundGray"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda33;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {v2, v3, v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZLorg/telegram/messenger/AndroidUtilities$IntColorCallback;)V

    .line 4734
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_8

    .line 4735
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 4737
    :cond_8
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    .line 4738
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4739
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    :cond_9
    :goto_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4671
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 4673
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 4591
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_0

    .line 4592
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->doOnIdle(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4594
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->removeFromRoot()V

    :goto_0
    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 1

    .line 4650
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    .line 4651
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithButtonClick(I)V

    return-void
.end method

.method public getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-object v0
.end method

.method public getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 4756
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getClipLayoutBottom()F
    .locals 3

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x54

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method public getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 1

    .line 4760
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object v0
.end method

.method public getCommentTextViewTop()I
    .locals 2

    .line 2944
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 1

    .line 3270
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object v0
.end method

.method public getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 1

    .line 4764
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object v0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 3035
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 1

    .line 4351
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object v0
.end method

.method public getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 1

    .line 3274
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object v0
.end method

.method public getSelectedTextView()Landroid/widget/TextView;
    .locals 1

    .line 4328
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 3718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3719
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3720
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 3721
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3723
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3727
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dialogBackgroundGray"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public init()V
    .locals 9

    .line 4158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4162
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 4163
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    const/4 v1, 0x0

    .line 4164
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    .line 4165
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4166
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 4167
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 4168
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4169
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4170
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4171
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    move v2, v0

    .line 4172
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 4173
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4175
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4176
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4178
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_4

    .line 4179
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 4180
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 4183
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    .line 4184
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    .line 4185
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    .line 4186
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    .line 4187
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    .line 4188
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 4190
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    goto :goto_2

    .line 4193
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4195
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    invoke-virtual {v1, v2, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onInit(ZZZ)V

    .line 4196
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    .line 4197
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    .line 4198
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 4200
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    const-wide/16 v7, 0x4

    if-eqz v1, :cond_5

    .line 4201
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    .line 4202
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 4203
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_5

    .line 4204
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4205
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4206
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    .line 4207
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    const-wide/16 v7, 0x3

    .line 4208
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_3

    .line 4210
    :cond_7
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    .line 4211
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 4212
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 4214
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v2

    xor-int/2addr v2, v6

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    goto :goto_5

    .line 4216
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 4217
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v2, :cond_9

    move v2, v6

    goto :goto_4

    :cond_9
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    const-wide/16 v7, 0x1

    .line 4218
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 4221
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4222
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 4225
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v7, :cond_b

    move v7, v0

    goto :goto_6

    :cond_b
    move v7, v3

    :goto_6
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4226
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v7, :cond_c

    move v7, v0

    goto :goto_7

    :cond_c
    move v7, v5

    :goto_7
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4227
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq v2, v1, :cond_10

    .line 4228
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4229
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 4231
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4232
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 4233
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4234
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 4236
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 4237
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 4238
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_e

    .line 4239
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v7, -0x1

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4241
    :cond_e
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4242
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x0

    .line 4243
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 4244
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    .line 4245
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v1

    if-eqz v1, :cond_f

    move v5, v0

    :cond_f
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4246
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4248
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v1, v2, :cond_11

    .line 4249
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    .line 4251
    :cond_11
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    .line 4253
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    .line 4254
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 4255
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const v2, 0xf4240

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public isForwardingEditor()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 2

    .line 3690
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-nez v0, :cond_0

    return-void

    .line 3693
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    if-nez v1, :cond_2

    .line 3694
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v0

    const/4 v1, 0x1

    .line 3695
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    .line 3696
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    if-eqz v0, :cond_1

    const-wide/16 p1, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 3835
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 4628
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4629
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4630
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 4634
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4635
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 4638
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4641
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    .line 4645
    :cond_4
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3686
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 2962
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 2963
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 2964
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 6

    .line 3807
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onCustomLayout(Landroid/view/View;IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 1

    .line 3799
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onCustomMeasure(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 14

    .line 3569
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3570
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3573
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 3574
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 3576
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/Animator;

    .line 3577
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3579
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x14

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3580
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, p0, v10}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3581
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3583
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3584
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-array v0, v6, [F

    .line 3586
    iget v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    aput v10, v0, v7

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    .line 3587
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3594
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    .line 3595
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 3597
    :cond_1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v2, v10, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3598
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3599
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3600
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 3602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz v0, :cond_2

    .line 3603
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3605
    :cond_2
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 3606
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v3, [Landroid/animation/Animator;

    .line 3607
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v11, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v12, v3, [I

    .line 3608
    iget-boolean v13, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v13, :cond_3

    iget v13, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    goto :goto_0

    :cond_3
    move v13, v7

    :goto_0
    aput v13, v12, v7

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v2, v7

    .line 3607
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3610
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3611
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3612
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3613
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    .line 3614
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 3632
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3637
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$21;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3655
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x200

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3656
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-array v0, v6, [F

    .line 3664
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3665
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setNavBarAlpha(F)V

    .line 3666
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x19

    .line 3669
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0xc8

    .line 3670
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3671
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3672
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x43c80000    # 400.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 4259
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4260
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 4261
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4264
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4265
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4266
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 4267
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4268
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 4269
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_2
    return-void
.end method

.method protected onDismissWithTouchOutside()V
    .locals 1

    .line 4661
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4662
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4744
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSheetKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4747
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 2974
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 2975
    :goto_0
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->BotRemoveFromMenuTitle:I

    .line 2976
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 2977
    sget v4, Lorg/telegram/messenger/R$string;->BotRemoveFromMenu:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "BotRemoveFromMenu"

    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->BotRemoveInlineFromMenu:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "BotRemoveInlineFromMenu"

    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    .line 2978
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    .line 2993
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 2994
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 3

    .line 4276
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 4277
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_0

    .line 4279
    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4281
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4282
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 4284
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onOpenAnimationEnd()V

    .line 4285
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrAttachButton:I

    const-string v1, "AccDescrAttachButton"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4286
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 3814
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3815
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3816
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3819
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 3293
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_0

    .line 3294
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    .line 3295
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3296
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->openShareLiveLocation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 3823
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    .line 3824
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3825
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3826
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onResume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3829
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3830
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 2915
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    .line 2917
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2918
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 2919
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2921
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 2922
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 2928
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2930
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2931
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 2932
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2934
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 2935
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public openLayoutById(I)V
    .locals 4

    int-to-long v0, p1

    .line 165
    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 166
    sget p1, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 167
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openWalletLayout()V

    goto :goto_0

    .line 168
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_BINANCE:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 169
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openBinanceScreen()V

    goto :goto_0

    .line 170
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 171
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openTemplatesLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 1

    .line 4301
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowDrawContent(Z)V

    .line 4302
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    return-void
.end method

.method public setAllowNestedScroll(Z)V
    .locals 0

    .line 4752
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    return-void
.end method

.method public setAvatarPicker(IZ)V
    .locals 1

    .line 4306
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    .line 4307
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarSearch:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 4309
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 4310
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez p1, :cond_0

    .line 4311
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4312
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4314
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 4315
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    const-string v0, "ChoosePhotoOrVideo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4317
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhoto:I

    const-string v0, "ChoosePhoto"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 4320
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 4322
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_3

    .line 4323
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAvatarPicker()V

    :cond_3
    return-void
.end method

.method public setCanOpenPreview(Z)V
    .locals 2

    .line 337
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .locals 0

    .line 4154
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-void
.end method

.method public setEditingMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 3020
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p1, :cond_0

    return-void

    .line 3023
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3025
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    const/4 p1, 0x0

    .line 3026
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 3028
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 3029
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    .line 3031
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method

.method public setMaxSelectedPhotos(IZ)V
    .locals 1

    .line 4339
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    return-void

    .line 4342
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 4343
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    return-void
.end method

.method public setOpenWithFrontFaceCamera(Z)V
    .locals 0

    .line 4347
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openWithFrontFaceCamera:Z

    return-void
.end method

.method public setSoundPicker()V
    .locals 3

    const/4 v0, 0x1

    .line 4332
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    .line 4333
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4334
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4335
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    const-string v2, "ChoosePhotoOrVideo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTemplatesDelegate(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    return-void
.end method

.method protected shouldOverlayCameraViewOverNavBar()Z
    .locals 2

    .line 2999
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v0, v1, :cond_0

    iget-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 6

    .line 3004
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x0

    .line 3005
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    .line 3006
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    .line 3007
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    .line 3008
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    .line 3010
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    .line 3011
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 3012
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    const-string v1, "windowBackgroundGray"

    .line 3013
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 3014
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 3015
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    :cond_2
    return-void
.end method

.method public showBotLayout(J)V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JLjava/lang/String;)V

    return-void
.end method

.method public showBotLayout(JLjava/lang/String;)V
    .locals 11

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->getStartCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->needReload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    .line 353
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    invoke-direct {v2, p0, v0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getReplyingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    move-wide v6, p1

    move-object v10, p3

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->requestWebView(IJJZILjava/lang/String;)V

    .line 581
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 582
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->disallowSwipeOffsetAnimation()V

    .line 583
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    neg-long p1, p1

    invoke-direct {p0, p3, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V

    :cond_3
    return-void
.end method

.method public startEditingGroupedMessages(Lorg/telegram/messenger/MessageObject$GroupedMessages;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 184
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 185
    new-instance v9, Ljava/io/File;

    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    move-object v6, v9

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 191
    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v6

    .line 193
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    return v7

    .line 196
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 199
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 200
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    invoke-static {v6, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 201
    new-instance v9, Ljava/io/File;

    const/4 v10, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 204
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 206
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v8, v7

    :catch_1
    :goto_2
    move/from16 v19, v7

    move/from16 v18, v8

    .line 209
    new-instance v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-wide/16 v20, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v21}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 210
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v7

    iput v7, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 211
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    goto :goto_5

    .line 214
    :cond_4
    :try_start_2
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v6, v15}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v9, "Orientation"

    .line 215
    invoke-virtual {v6, v9, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v9, 0x3

    if-eq v6, v9, :cond_7

    const/4 v9, 0x6

    if-eq v6, v9, :cond_6

    const/16 v9, 0x8

    if-eq v6, v9, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    const/16 v6, 0x10e

    goto :goto_3

    :cond_6
    const/16 v6, 0x5a

    goto :goto_3

    :cond_7
    const/16 v6, 0xb4

    .line 227
    :goto_3
    :try_start_3
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 228
    iput-boolean v8, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 230
    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    :try_start_4
    iget v7, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_2
    move v8, v7

    goto :goto_4

    :catch_3
    move v6, v7

    move v8, v6

    :catch_4
    :goto_4
    move/from16 v16, v6

    move/from16 v19, v7

    move/from16 v18, v8

    .line 233
    new-instance v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v21}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 235
    :goto_5
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 238
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v4, v2, v3, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateSelected(Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    .line 240
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    .line 241
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_b

    .line 242
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_9

    .line 243
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 244
    :cond_9
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    move-object v6, v2

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 247
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openPhotoPreviewLayout()V

    .line 249
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return v8
.end method

.method public updateCommentTextViewPosition()V
    .locals 2

    .line 2940
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    return-void
.end method

.method public updateCountButton(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4061
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-eqz v2, :cond_0

    return-void

    .line 4064
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v2

    const-wide/16 v3, 0xb4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_2

    .line 4067
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotX(F)V

    .line 4068
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotY(F)V

    if-eqz v1, :cond_1

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v8

    .line 4069
    :goto_0
    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    goto/16 :goto_4

    .line 4071
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    if-eqz v1, :cond_3

    move v9, v7

    goto :goto_1

    :cond_3
    move v9, v8

    .line 4072
    :goto_1
    invoke-direct {v0, v7, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v1, :cond_6

    .line 4073
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/16 v10, 0x15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotX(F)V

    .line 4074
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/16 v10, 0xc

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotY(F)V

    .line 4075
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v11, v10, [Landroid/animation/Animator;

    .line 4076
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v10, [F

    const v15, 0x3f8ccccd    # 1.1f

    const v16, 0x3f666666    # 0.9f

    if-ne v1, v7, :cond_4

    move/from16 v17, v15

    goto :goto_2

    :cond_4
    move/from16 v17, v16

    :goto_2
    aput v17, v14, v8

    aput v5, v14, v7

    .line 4077
    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v11, v8

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v10, [F

    if-ne v1, v7, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v15, v16

    :goto_3
    aput v15, v10, v8

    aput v5, v10, v7

    .line 4078
    invoke-static {v12, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v7

    .line 4076
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4079
    new-instance v10, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v10}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4080
    invoke-virtual {v9, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4081
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 4083
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotX(F)V

    .line 4084
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotY(F)V

    .line 4087
    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSelectedItemsCountChanged(I)V

    .line 4089
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v9, v10, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne v9, v10, :cond_1f

    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v9, v9, Lorg/telegram/ui/ChatActivity;

    if-nez v9, :cond_8

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v9, :cond_1f

    :cond_8
    if-nez v2, :cond_9

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v9, :cond_b

    :cond_9
    if-nez v2, :cond_a

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v9, :cond_1f

    :cond_a
    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez v9, :cond_1f

    :cond_b
    if-nez v2, :cond_d

    .line 4090
    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    move v2, v8

    goto :goto_6

    :cond_d
    :goto_5
    move v2, v7

    :goto_6
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    .line 4091
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_e

    .line 4092
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 4093
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    .line 4095
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v9, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_f

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->allowSendGifs()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v7

    goto :goto_7

    :cond_f
    move v2, v8

    .line 4097
    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne v9, v10, :cond_10

    move v2, v8

    .line 4101
    :cond_10
    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v9, :cond_12

    .line 4102
    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v9, :cond_11

    .line 4103
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4105
    :cond_11
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_8

    .line 4107
    :cond_12
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 4108
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_13
    :goto_8
    if-nez v1, :cond_19

    .line 4112
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v1, :cond_15

    .line 4113
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v3, :cond_14

    move v3, v5

    goto :goto_9

    :cond_14
    move v3, v6

    :goto_9
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4115
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v3, :cond_16

    move v3, v5

    goto :goto_a

    :cond_16
    move v3, v6

    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v2, :cond_18

    .line 4117
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v2, :cond_17

    move v5, v6

    :cond_17
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4119
    :cond_18
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_1f

    .line 4120
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 4123
    :cond_19
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    .line 4124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4125
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1b

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v9, :cond_1b

    .line 4126
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v12, :cond_1a

    move v12, v5

    goto :goto_b

    :cond_1a
    move v12, v6

    :goto_b
    aput v12, v11, v8

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4128
    :cond_1b
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v12, :cond_1c

    move v12, v5

    goto :goto_c

    :cond_1c
    move v12, v6

    :goto_c
    aput v12, v11, v8

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1e

    .line 4130
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v7, [F

    iget-boolean v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v10, :cond_1d

    move v5, v6

    :cond_1d
    aput v5, v7, v8

    invoke-static {v2, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4132
    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4133
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$23;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4147
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4148
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1f
    :goto_d
    return-void
.end method

.method public updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 4030
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    return-void

    .line 4034
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result v1

    if-gt v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 4035
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq v4, v5, :cond_3

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    instance-of v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-nez v5, :cond_3

    move p2, v3

    :cond_3
    if-ne p1, v4, :cond_4

    .line 4039
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    .line 4041
    :cond_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p2, :cond_5

    move p2, v3

    goto :goto_1

    .line 4042
    :cond_5
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    const/16 v1, 0xb

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p2

    .line 4043
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p2, p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v2

    .line 4044
    :goto_2
    instance-of p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz p2, :cond_8

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    instance-of v1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_8

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    .line 4045
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v1, p2, p1

    if-ne v1, v0, :cond_a

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    if-eqz p3, :cond_b

    .line 4051
    aget p1, p2, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    goto :goto_5

    .line 4046
    :cond_a
    :goto_4
    aget p3, p2, p1

    iput p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    .line 4047
    aput v0, p2, p1

    .line 4048
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    .line 4049
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_b
    :goto_5
    return-void
.end method

.method public updatePhotoPreview(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 3279
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    if-nez p1, :cond_0

    return-void

    .line 3282
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez p1, :cond_1

    .line 3283
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    .line 3284
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3286
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 3288
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :goto_0
    return-void
.end method
