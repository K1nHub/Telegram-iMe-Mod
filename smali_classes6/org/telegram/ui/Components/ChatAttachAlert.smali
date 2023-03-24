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

.field private templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

.field private textPaint:Landroid/text/TextPaint;

.field private toScrollY:F

.field private topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private translationDialog:Lorg/fork/ui/dialog/TranslateAlert;

.field public translationProgress:F

.field protected typeButtonsAvailable:Z

.field private videosEnabled:Z

.field private viewChangeAnimator:Ljava/lang/Object;

.field private final walletFlowCoordinator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonContainer:Landroid/widget/FrameLayout;

.field private writeButtonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$0Lg6JGOuu3hPXNOhPYh8ZP5McBg(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$5(Landroid/view/View;)V

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

.method public static synthetic $r8$lambda$6W4jQA3yjgy2RGSILA8lkQsc99g(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openBinanceScreen$3()V

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

.method public static synthetic $r8$lambda$9YPcZjKvJSoFBOZ4ju-fBrBg9-o(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openWalletLayout$1()V

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

.method public static synthetic $r8$lambda$DEwQHUzK6fGYOeBxoSEMbyrya2s(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openBinanceScreen$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$DWM4nAtDYfAZpaRwBCjVdoMzyxk(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$openWalletLayout$0()V

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

.method public static synthetic $r8$lambda$UQLFHqc2NqRxHa-FjiCUtAEvCFw(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->lambda$new$19(Ljava/lang/String;)V

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

    .line 1357
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

    .line 1362
    invoke-direct {v8, v9, v13, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 150
    const-class v0, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->walletFlowCoordinator:Lkotlin/Lazy;

    const/16 v14, 0x8

    new-array v7, v14, [Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 158
    iput-object v7, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 329
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    .line 330
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    const/4 v15, 0x0

    .line 634
    iput v15, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->translationProgress:F

    .line 635
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    const-string v1, "translation"

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    .line 891
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 897
    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    .line 902
    new-instance v0, Landroid/text/TextPaint;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    .line 903
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    .line 904
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    .line 911
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabled:Z

    const/high16 v4, 0x3f800000    # 1.0f

    .line 912
    iput v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    .line 917
    iput v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    .line 948
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    .line 951
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 959
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    .line 961
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    .line 962
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    .line 963
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    .line 964
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    .line 965
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    .line 966
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    const/4 v3, -0x1

    .line 968
    iput v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 969
    iput-boolean v5, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    const/16 v0, 0x55

    .line 975
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    .line 977
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-array v0, v6, [I

    .line 982
    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    .line 989
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtonPaint:Landroid/graphics/Paint;

    .line 994
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    .line 1352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    .line 3501
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$20;

    const-string v1, "openProgress"

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    .line 4667
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    .line 4668
    iput-boolean v13, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 1363
    iput-boolean v11, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    .line 1365
    iput-boolean v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    .line 1366
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

    .line 1367
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    .line 1368
    iput-object v10, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1369
    iput-boolean v5, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    .line 1370
    invoke-virtual {v8, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 1371
    iget v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1372
    iget v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1373
    iget v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, v8, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1374
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {v0, v8, v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 1963
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 1971
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 1972
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 1973
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1974
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1975
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v1, v13, v1, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1977
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {v0, v8, v9, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "dialogBackground"

    .line 2003
    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2004
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 2005
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "dialogTextBlack"

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2006
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "dialogButtonSelector"

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2007
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 2008
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2009
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2010
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 2024
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

    .line 2025
    invoke-virtual {v15, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2026
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2027
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2028
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2029
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2030
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 2031
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 2032
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x48

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2033
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2034
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v4, v23

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2035
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2037
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

    .line 2038
    invoke-virtual {v15, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2039
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Create:I

    const-string v2, "Create"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 2040
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2042
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2043
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v15, v28

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2044
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2046
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

    .line 2047
    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 2048
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2049
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    const-string v2, "Search"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2050
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2051
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2052
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x2a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 2053
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2054
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;

    move/from16 v2, p4

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2125
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    .line 2149
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2152
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2153
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2155
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 2156
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2157
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2159
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    .line 2160
    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2161
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2162
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const-string v15, "fonts/rmedium.ttf"

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2163
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2164
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2165
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2166
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2168
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    .line 2169
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2170
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2171
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2172
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedArrowImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2173
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

    .line 2174
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2175
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2177
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 2178
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2179
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2181
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2182
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->attach_arrow_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2183
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2184
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2186
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/16 v32, 0x0

    const/16 v34, 0x4

    invoke-static/range {v29 .. v35}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2188
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    .line 2189
    invoke-virtual {v8, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2190
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v13, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2191
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2192
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2193
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AttachMediaPreview:I

    const-string v4, "AttachMediaPreview"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2194
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2196
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewTextView:Landroid/widget/TextView;

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2198
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2200
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {v0, v8, v9, v11, v12}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v2, 0x0

    aput-object v0, v7, v2

    const/4 v2, 0x0

    .line 2201
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2202
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const-wide/16 v4, 0x1

    .line 2203
    iput-wide v4, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 2205
    iget-object v2, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2207
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

    .line 2208
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2209
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x30

    const/16 v5, 0x35

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2210
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2211
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2213
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const/4 v2, 0x0

    .line 2214
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2215
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const-string v2, "dialogShadowLine"

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2216
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const/4 v5, -0x1

    invoke-static {v5, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2218
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    .line 2219
    sget v2, Lorg/telegram/messenger/R$drawable;->attach_shadow:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2220
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2221
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

    .line 2223
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2230
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-direct {v2, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2231
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x0

    invoke-direct {v2, v9, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2232
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 2233
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 2234
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2235
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 2236
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 2237
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v2, v22

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2238
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 2239
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x54

    const/16 v6, 0x53

    const/4 v7, -0x1

    invoke-static {v7, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2240
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;

    invoke-direct {v2, v8, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2329
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2356
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 2357
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2358
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2359
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 2360
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2361
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2362
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 2363
    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2364
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v13, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2365
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2373
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2375
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x12

    .line 2376
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 2377
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2378
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2379
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2380
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2381
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

    .line 2383
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {v0, v8, v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 2433
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2434
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2435
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2436
    iget-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    invoke-static {v7, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2437
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;->INSTANCE:Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda14;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2439
    new-instance v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x8

    .line 2440
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xf

    .line 2441
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    const-string v1, "windowBackgroundWhiteGrayText"

    .line 2442
    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 2443
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2444
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/NumberTextView;->setCenterAlign(Z)V

    .line 2445
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

    .line 2447
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    .line 2449
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

    .line 2535
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2536
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v1, Lorg/telegram/messenger/R$string;->Caption:I

    const-string v2, "Caption"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2538
    :cond_1
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v1, Lorg/telegram/messenger/R$string;->AddCaption:I

    const-string v2, "AddCaption"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 2539
    :goto_1
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 2540
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2620
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

    .line 2621
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 2622
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 2624
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$13;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 2640
    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2641
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 2642
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2643
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2644
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2645
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2646
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

    .line 2648
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    const/16 v0, 0x38

    .line 2649
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

    .line 2651
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2652
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2653
    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object v6, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-direct {v3, v2, v6, v7, v7}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 2654
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v2, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 2655
    iput-object v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 2657
    :goto_3
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    iget-object v3, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2659
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2660
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 2662
    :cond_4
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2663
    :goto_4
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "dialogFloatingIcon"

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2664
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 2665
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-lt v4, v5, :cond_5

    .line 2667
    iget-object v2, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$14;

    invoke-direct {v6, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2675
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

    .line 2676
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;

    invoke-direct {v2, v8, v10, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2708
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;

    invoke-direct {v2, v8, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2871
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2872
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2874
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$16;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/4 v2, 0x0

    .line 2895
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2896
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2897
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2899
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2900
    iget-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2903
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

    .line 2906
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkColors()V

    const/4 v0, 0x0

    .line 2907
    iput-object v0, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    .line 2910
    :cond_a
    new-instance v0, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 2911
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    return p1
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    return p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return p0
.end method

.method static synthetic access$11102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->chatActivityEnterViewAnimateFromTop:F

    return p1
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$11202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return p0
.end method

.method static synthetic access$11302(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionEditTextTopOffset:F

    return p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    return p0
.end method

.method static synthetic access$11402(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->bottomPannelTranslation:F

    return p1
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    return p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$11901(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 145
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return p0
.end method

.method static synthetic access$12002(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    return p1
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    return p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    return-object p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$12502(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    return p0
.end method

.method static synthetic access$12602(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendButtonEnabledProgress:F

    return p1
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/ImageView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    return-object p0
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/text/TextPaint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/RectF;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$13700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    return-void
.end method

.method static synthetic access$13900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$13902(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    return-object p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    return p0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    return-object p0
.end method

.method static synthetic access$15002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15102(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p1
.end method

.method static synthetic access$15600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$15602(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    return p0
.end method

.method static synthetic access$15802(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$15900(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/fork/ui/view/ChatAttachAlertWalletLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    return-object p0
.end method

.method static synthetic access$16000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    return p0
.end method

.method static synthetic access$16100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    return p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    return p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)J
    .locals 2

    .line 145
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachItemSize:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachButtonPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->fromScrollY:F

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/ChatAttachAlert;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->toScrollY:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Rect;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclustionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->exclusionRects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseSelectedTextViewTranslationY:F

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method private applyAttachButtonColors(Landroid/view/View;)V
    .locals 3

    .line 3708
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    const-string v1, "dialogTextGray2"

    if-eqz v0, :cond_0

    .line 3709
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 3710
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

    .line 3711
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v0, :cond_1

    .line 3712
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 3713
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

    .line 3851
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v0, :cond_1

    .line 3852
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

    .line 3854
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget p1, v0, p1

    return p1
.end method

.method private isLightStatusBar()Z
    .locals 4

    .line 2970
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->forceDarkTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "voipgroup_listViewBackground"

    goto :goto_0

    :cond_0
    const-string v0, "dialogBackground"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 2971
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

    .line 4701
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 4702
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$40(Landroid/content/DialogInterface;)V
    .locals 3

    .line 4706
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_0

    .line 4707
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 4709
    :cond_0
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4710
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4711
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v0, 0x44bb8000    # 1500.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4712
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private synthetic lambda$dismiss$41(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 4715
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    return-void
.end method

.method private synthetic lambda$dismiss$42(I)V
    .locals 1

    const/4 v0, 0x0

    .line 4731
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    .line 4732
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 4733
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$makeFocusable$37(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 3701
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$makeFocusable$38(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3698
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 3699
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p2, :cond_0

    .line 3701
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZILjava/lang/String;)V
    .locals 7

    .line 2300
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

    .line 2241
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 2244
    :cond_0
    instance-of p3, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    const/4 v0, 0x0

    if-eqz p3, :cond_14

    .line 2245
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2247
    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    if-ne p3, v1, :cond_1

    .line 2248
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openWalletLayout()V

    goto/16 :goto_0

    .line 2249
    :cond_1
    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_BINANCE:I

    if-ne p3, v1, :cond_2

    .line 2250
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openBinanceScreen()V

    goto/16 :goto_0

    .line 2251
    :cond_2
    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    if-ne p3, v1, :cond_3

    .line 2252
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openTemplatesLayout()V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    .line 2255
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    if-nez p3, :cond_4

    .line 2256
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v1, p0, v2, p1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 2258
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

    .line 2260
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 2261
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2264
    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    goto/16 :goto_0

    :cond_7
    if-ne p3, v4, :cond_9

    .line 2266
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 2267
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2270
    :cond_8
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x5

    if-ne p3, v2, :cond_b

    .line 2272
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-eqz p1, :cond_a

    .line 2273
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p3, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, p3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_a

    .line 2274
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2278
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x6

    if-ne p3, v3, :cond_f

    .line 2280
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p3

    if-nez p3, :cond_c

    return-void

    .line 2283
    :cond_c
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez p3, :cond_d

    .line 2284
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v3, p0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 2285
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 2287
    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-nez p3, :cond_e

    .line 2288
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    aput-object v1, p3, v2

    .line 2289
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$LocationActivityDelegate;)V

    .line 2291
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    :cond_f
    const/16 v2, 0x9

    if-ne p3, v2, :cond_12

    .line 2294
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    if-nez p3, :cond_10

    .line 2295
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v2, p0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 2296
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 2298
    :cond_10
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-nez p3, :cond_11

    .line 2299
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    aput-object v2, p3, v1

    .line 2300
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$PollCreateActivityDelegate;)V

    .line 2302
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 2305
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

    .line 2307
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 2308
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    const/16 v1, 0xa

    .line 2309
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    if-gez p1, :cond_13

    .line 2311
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_13
    add-int/2addr p3, v1

    .line 2312
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-le p3, p1, :cond_16

    .line 2313
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 2315
    :cond_14
    instance-of p1, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz p1, :cond_16

    .line 2316
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 2317
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p3

    if-eqz p3, :cond_15

    .line 2318
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16500(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    move-result-object p1

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(J)V

    goto :goto_1

    .line 2320
    :cond_15
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didSelectBot(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2321
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 2325
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

    .line 2326
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

    .line 2334
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 2335
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 2336
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$16600(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)I

    move-result p1

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    if-ne p1, v1, :cond_0

    .line 2337
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->showChooseTemplatesModeDialog()V

    goto :goto_0

    .line 2339
    :cond_0
    new-instance p1, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogType()Lorg/fork/enums/DialogType;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;-><init>(Lorg/fork/enums/DialogType;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;I)Z
    .locals 4

    .line 2331
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v0, :cond_0

    .line 2332
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 2333
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 2345
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2346
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz p2, :cond_2

    .line 2347
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2350
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

    .line 2366
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 2367
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-eqz p1, :cond_0

    .line 2369
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

    .line 2690
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

    .line 2693
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    const/4 p1, 0x1

    .line 2694
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 2695
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2691
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZILjava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$17(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 12

    .line 2677
    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->codepointCount:I

    sub-int/2addr p3, v0

    if-gez p3, :cond_1

    .line 2678
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 2680
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 p3, 0x3

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2683
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

    .line 2684
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void

    .line 2688
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

    .line 2689
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

    .line 2699
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

    .line 2702
    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2703
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 2704
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 2700
    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZI)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$18(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2739
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

    .line 2740
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$19(Ljava/lang/String;)V
    .locals 1

    .line 2822
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2823
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 2824
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$20(ZILjava/lang/String;)V
    .locals 6

    .line 2831
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

    .line 2834
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2835
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    .line 2832
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

    .line 2809
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2810
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 2813
    :cond_0
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->REACTIONS:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 2814
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne v5, v1, :cond_1

    const/4 v1, 0x0

    .line 2815
    invoke-direct {p0, v4, v4, v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZILjava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 2817
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2818
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    .line 2820
    :cond_2
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v1, v2, :cond_3

    .line 2821
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ChatActivity;->createTranslateOutgoingDialog(Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)Lorg/fork/ui/dialog/TranslateAlert;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationDialog:Lorg/fork/ui/dialog/TranslateAlert;

    .line 2827
    invoke-virtual {v1}, Lorg/fork/ui/dialog/TranslateAlert;->show()V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p2

    if-nez v1, :cond_4

    .line 2830
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

    .line 2839
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

    .line 2842
    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    .line 2843
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    .line 2840
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

    .line 2709
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

    .line 2712
    :cond_0
    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/ChatActivity;

    .line 2713
    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2714
    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 2715
    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v9}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    .line 2719
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2720
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2721
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$15;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2738
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2743
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    const/4 v13, 0x2

    new-array v0, v13, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2745
    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v14, 0x4

    new-array v15, v14, [I

    .line 2747
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->REACTIONS:I

    aput v0, v15, v9

    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TRANSLATE:I

    aput v0, v15, v12

    aput v9, v15, v13

    const/4 v5, 0x3

    aput v12, v15, v5

    new-array v0, v14, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2748
    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2749
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

    .line 2755
    aget v2, v15, v4

    .line 2758
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->REACTIONS:I

    if-ne v2, v0, :cond_4

    .line 2759
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

    .line 2762
    :cond_4
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v2, v1, :cond_5

    .line 2763
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

    .line 2769
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

    .line 2773
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    move v14, v4

    goto/16 :goto_9

    .line 2784
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

    .line 2785
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

    .line 2788
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->sending_settings_send_add_reactions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_reactions:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 2789
    :cond_e
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->TRANSLATE:I

    if-ne v2, v0, :cond_f

    .line 2790
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

    .line 2793
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2794
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->SetReminder:I

    const-string v3, "SetReminder"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_8

    .line 2796
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

    .line 2800
    iget v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/fork/controller/ToolsController;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lorg/fork/controller/ToolsController;->isSilentSendingEnabledForDialog(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2801
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_8

    .line 2803
    :cond_12
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    sget v1, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    const-string v3, "SendWithoutSound"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2805
    :cond_13
    :goto_8
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v0, v0, v4

    const/16 v1, 0xc4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 2807
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v1, v1, v4

    const/4 v3, -0x1

    const/16 v9, 0x30

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2808
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

    .line 2849
    :cond_14
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const-string v1, "dialogButtonSelector"

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    .line 2851
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    .line 2852
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 2853
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2854
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2855
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2856
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2857
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2858
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2860
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

    .line 2861
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2863
    invoke-virtual {v8, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2864
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

    .line 2865
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    const/4 v0, 0x3

    .line 2866
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

    .line 2031
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 2035
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 2044
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onMenuItemClick(I)V

    return-void
.end method

.method private synthetic lambda$new$7(ZLandroid/view/View;)V
    .locals 8

    .line 2055
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p2, :cond_0

    .line 2056
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->openAvatarsSearch()V

    .line 2057
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    .line 2060
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2061
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2062
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

    .line 2063
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    invoke-direct {v0, p0, p2, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 2116
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v7, p2, v0}, Lorg/telegram/ui/PhotoPickerSearchActivity;->setMaxSelectedPhotos(IZ)V

    if-eqz p1, :cond_1

    .line 2118
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    goto :goto_0

    .line 2120
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2122
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    .line 2150
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

    .line 2289
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

    .line 3589
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 3590
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 3591
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$34(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 4

    const/4 v0, 0x0

    .line 3616
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 3617
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    .line 3618
    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    if-eqz p1, :cond_0

    .line 3620
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->onOpenAnimationEnd()V

    .line 3622
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz p1, :cond_1

    .line 3623
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3626
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    if-eqz p1, :cond_2

    .line 3627
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 3628
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3629
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3631
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

    .line 3634
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3635
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$36(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3668
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

    .line 2985
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    .line 2986
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 2987
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$25(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2984
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onLongClickBotButton$26(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2981
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    .line 2982
    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p2, 0x0

    .line 2983
    iput-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    .line 2984
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    const/16 p1, 0x42

    invoke-virtual {p2, p3, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 2991
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

    .line 3322
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

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-direct {v0, v1, v1}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    .line 293
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletFlowCoordinator:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 294
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const/4 v3, 0x0

    .line 293
    invoke-virtual {v1, v2, v0, v3}, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/ui/base/WalletAuthFragment;Z)V

    .line 298
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openBinanceScreen$3()V
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {v0, v1, v2}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->runWithCheckIsBinancePayActivated(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private synthetic lambda$openContactsLayout$31(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V
    .locals 1

    .line 3308
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity;->sendContact(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$openWalletLayout$0()V
    .locals 4

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x6

    new-instance v2, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    aput-object v2, v0, v1

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private synthetic lambda$openWalletLayout$1()V
    .locals 4

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private synthetic lambda$showCaptionLimitBulletin$23(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x1

    .line 2954
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    if-eqz p1, :cond_0

    .line 2956
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "caption_limit"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showLayout$27()V
    .locals 5

    .line 3153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_0

    .line 3154
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3156
    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    .line 3157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eq v3, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    .line 3158
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3160
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 3162
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    .line 3163
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3164
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3165
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

    .line 3241
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object p6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p4, p6, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3242
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3243
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 3244
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 3245
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sub-float p5, p2, p5

    .line 3246
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3247
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    sub-float/2addr p2, p5

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3248
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/16 p3, 0x10

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    neg-int p4, p4

    int-to-float p4, p4

    mul-float/2addr p5, p4

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 3249
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

    .line 3252
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 3253
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHideShowProgress(F)V

    .line 3254
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 3255
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 3256
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->invalidate()V

    .line 3257
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

    .line 3258
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$showLayout$30(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V
    .locals 6

    .line 3235
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    .line 3236
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

    .line 3238
    :goto_1
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v5, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 3239
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;FFZ)V

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3251
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLjava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3260
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x43fa0000    # 500.0f

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v4, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3261
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3262
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x447a0000    # 1000.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3263
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 3265
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    return-void
.end method

.method private openAudioLayout(Z)V
    .locals 5

    .line 3314
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3316
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 3317
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3320
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-nez v0, :cond_1

    .line 3321
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    aput-object v2, v0, v1

    .line 3322
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;)V

    .line 3324
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    .line 3325
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 3326
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3327
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

    .line 3330
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_6
    return-void
.end method

.method private openBinanceScreen()V
    .locals 4

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_description:I

    .line 284
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 282
    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private openContactsLayout()V
    .locals 5

    .line 3302
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    if-nez v0, :cond_0

    .line 3303
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 3304
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3306
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-nez v0, :cond_1

    .line 3307
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    aput-object v2, v0, v1

    .line 3308
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;)V

    .line 3310
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openDocumentsLayout(Z)V
    .locals 6

    .line 3335
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3337
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;-><init>(ILorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    .line 3338
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3341
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-nez v0, :cond_2

    .line 3342
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3343
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, p0, v4, v0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    aput-object v3, v2, v1

    .line 3344
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    .line 3378
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 3379
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 3380
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 3381
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

    .line 3383
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setMaxSelectedFiles(I)V

    .line 3384
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->setCanSelectOnlyImageFiles(Z)V

    .line 3386
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz p1, :cond_7

    .line 3388
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :cond_7
    return-void
.end method

.method private openPhotoPreviewLayout()V
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    .line 313
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openTemplatesLayout()V
    .locals 6

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x7

    new-instance v2, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    aput-object v2, v0, v1

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method private openWalletLayout()V
    .locals 4

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_description:I

    .line 270
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 268
    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private removeFromRoot()V
    .locals 4

    .line 4600
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 4601
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4603
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4604
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_1
    const/4 v0, 0x0

    .line 4607
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    .line 4608
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    .line 4610
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    .line 4611
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    .line 4612
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    .line 4613
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 4614
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    const/4 v1, 0x1

    .line 4615
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 4616
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    goto :goto_1

    .line 4619
    :cond_2
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    .line 4620
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4621
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 4623
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    .line 4624
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method private sendPressed(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 264
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPressed(ZILjava/lang/String;Z)V

    return-void
.end method

.method private sendPressed(ZILjava/lang/String;Z)V
    .locals 9

    .line 3047
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    if-eqz v0, :cond_0

    return-void

    .line 3050
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_3

    .line 3051
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 3052
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 3053
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3054
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3055
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

    .line 3058
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCaption(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 3061
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    const/4 v0, 0x1

    .line 3062
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    .line 3063
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

    .line 3679
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

    .line 3680
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 3681
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

    .line 3682
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private showCaptionLimitBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 2949
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

    .line 2953
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2958
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private showCommentTextView(ZZ)Z
    .locals 12

    .line 3393
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

    .line 3396
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 3397
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3399
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

    .line 3400
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3401
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3403
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_6

    .line 3405
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v0, :cond_5

    .line 3406
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3408
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3409
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v0, :cond_7

    .line 3410
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 3412
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v0, :cond_7

    .line 3413
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

    .line 3416
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    .line 3417
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3418
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

    .line 3419
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

    .line 3420
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

    .line 3421
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

    .line 3422
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

    .line 3423
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

    .line 3424
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

    .line 3425
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 3426
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

    .line 3427
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

    .line 3428
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

    .line 3429
    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v0, :cond_15

    .line 3430
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

    .line 3431
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

    .line 3432
    :cond_15
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    if-nez v0, :cond_17

    .line 3433
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3434
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

    .line 3437
    :cond_17
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3438
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3439
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3440
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3468
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_16

    .line 3470
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_19

    move v8, v7

    goto :goto_d

    :cond_19
    move v8, v6

    :goto_d
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3471
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1a

    move v8, v7

    goto :goto_e

    :cond_1a
    move v8, v5

    :goto_e
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 3472
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1b

    move v8, v7

    goto :goto_f

    :cond_1b
    move v8, v5

    :goto_f
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 3473
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1c

    move v8, v7

    goto :goto_10

    :cond_1c
    move v8, v6

    :goto_10
    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3474
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_1d

    move v8, v7

    goto :goto_11

    :cond_1d
    move v8, v5

    :goto_11
    invoke-virtual {p2, v8}, Landroid/view/View;->setScaleX(F)V

    .line 3475
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_1e

    move v5, v7

    :cond_1e
    invoke-virtual {p2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 3476
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    if-eqz p1, :cond_1f

    move v5, v7

    goto :goto_12

    :cond_1f
    move v5, v6

    :goto_12
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3477
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 3478
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

    .line 3479
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

    .line 3480
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz p1, :cond_22

    move v6, v7

    :cond_22
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_15

    .line 3481
    :cond_23
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz p2, :cond_28

    .line 3482
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 3483
    :cond_24
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_25

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v6, v0

    :cond_25
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3485
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

    .line 3487
    :cond_28
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    add-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3488
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    if-eqz p1, :cond_29

    move v6, v7

    :cond_29
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_15
    if-nez p1, :cond_2a

    .line 3491
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3492
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3493
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-nez p1, :cond_2a

    .line 3494
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    :goto_16
    return v1
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 3067
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 3069
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    if-ne p1, v2, :cond_0

    .line 3070
    sget v0, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    :goto_0
    int-to-long v0, v0

    goto :goto_1

    .line 3071
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-ne p1, v2, :cond_1

    .line 3072
    sget v0, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    goto :goto_0

    .line 3074
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne p1, v2, :cond_2

    .line 3075
    iget v0, v2, Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;->id:I

    goto :goto_0

    .line 3076
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p1, v2, :cond_3

    const-wide/16 v0, 0x1

    goto :goto_1

    .line 3078
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    if-ne p1, v2, :cond_4

    const-wide/16 v0, 0x3

    goto :goto_1

    .line 3080
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne p1, v2, :cond_5

    const-wide/16 v0, 0x4

    goto :goto_1

    .line 3082
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->contactsLayout:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    if-ne p1, v2, :cond_6

    const-wide/16 v0, 0x5

    goto :goto_1

    .line 3084
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-ne p1, v2, :cond_7

    const-wide/16 v0, 0x6

    goto :goto_1

    .line 3086
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-ne p1, v2, :cond_8

    const-wide/16 v0, 0x9

    .line 3089
    :cond_8
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V

    return-void
.end method

.method private showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;J)V
    .locals 9

    .line 3093
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 3096
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne v0, p1, :cond_1

    .line 3097
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->scrollToTop()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3101
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 3102
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    const/4 v1, 0x0

    .line 3103
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    .line 3104
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3105
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 3106
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 3107
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 3108
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3109
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3110
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    move v2, v0

    .line 3111
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3112
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3115
    :cond_2
    iput-wide p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 3116
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v0

    :goto_1
    const/4 v2, 0x1

    if-ge p3, p2, :cond_5

    .line 3118
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3119
    instance-of v5, v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v5, :cond_3

    .line 3120
    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 3121
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->updateCheckedState(Z)V

    goto :goto_2

    .line 3122
    :cond_3
    instance-of v5, v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v5, :cond_4

    .line 3123
    check-cast v4, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 3124
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->updateCheckedState(Z)V

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 3127
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

    .line 3128
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3129
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    const/4 v5, 0x2

    if-lt p3, v4, :cond_6

    .line 3130
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v4, 0x0

    invoke-virtual {p3, v5, v4}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3132
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

    .line 3133
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3134
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 3135
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 3137
    :cond_8
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 3138
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p3, v4, :cond_9

    .line 3139
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    .line 3141
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3142
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3144
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 3145
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3147
    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    .line 3148
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eq v4, v7, :cond_c

    .line 3149
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

    .line 3152
    :cond_c
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 3168
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3169
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3174
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v4, :cond_e

    .line 3175
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3176
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3177
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/16 v4, 0x4e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    .line 3178
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v2, [F

    .line 3179
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

    .line 3180
    invoke-static {p2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v3, v2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    .line 3181
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v7

    aput v7, v6, v0

    aput v1, v6, v2

    invoke-static {p2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v3, v5

    .line 3178
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xb4

    .line 3183
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x14

    .line 3184
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3185
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3186
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$17;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3207
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    .line 3208
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    .line 3210
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3211
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v4, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v4, :cond_f

    int-to-float p2, p2

    .line 3212
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3213
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    instance-of v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz v2, :cond_10

    .line 3214
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 3215
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_10

    .line 3216
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3217
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3218
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 3222
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3223
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-ne p2, v2, :cond_10

    .line 3224
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 3225
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_10

    .line 3226
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3227
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3231
    :cond_10
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3232
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3233
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3234
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;Ljava/lang/Runnable;)V

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

    .line 3934
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

    .line 3935
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

    .line 3936
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 3937
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3938
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 3941
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

    .line 3942
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

    .line 3943
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->restrictedLayout:Lorg/telegram/ui/Components/ChatAttachRestrictedLayout;

    if-ne v4, v5, :cond_9

    move v0, v1

    move v3, v0

    :cond_9
    if-eqz p1, :cond_b

    if-eqz v0, :cond_a

    .line 3949
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    if-eqz v3, :cond_c

    .line 3952
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 3954
    :cond_b
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    .line 3955
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3958
    :cond_c
    :goto_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v4, :cond_e

    if-eqz p1, :cond_d

    .line 3960
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isLightStatusBar()Z

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_6

    .line 3962
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

    .line 3966
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const/high16 v6, 0x43340000    # 180.0f

    if-eqz p1, :cond_f

    move v7, v4

    goto :goto_7

    :cond_f
    move v7, v5

    .line 3967
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

    .line 3968
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3969
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

    .line 3970
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

    .line 3972
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

    .line 3975
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

    .line 3977
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3978
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$22;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4000
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_10

    :cond_16
    const/4 p2, 0x4

    if-eqz p1, :cond_18

    .line 4003
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4004
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4007
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_19

    move v2, v4

    goto :goto_c

    :cond_19
    move v2, v5

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4008
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    if-eqz p1, :cond_1a

    move v2, v4

    goto :goto_d

    :cond_1a
    move v2, v5

    :goto_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v0, :cond_1c

    .line 4010
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

    .line 4013
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_1d

    goto :goto_f

    :cond_1d
    move v4, v5

    :goto_f
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1e
    if-nez p1, :cond_20

    .line 4016
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4017
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-nez p1, :cond_20

    .line 4018
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

    .line 3860
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->nextAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 3861
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getScrollOffsetY(I)I

    move-result p1

    .line 3862
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int v1, p1, v1

    .line 3864
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x27

    .line 3868
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x2b

    .line 3869
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v2, 0xd

    .line 3865
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xb

    .line 3866
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :goto_2
    int-to-float v2, v2

    .line 3871
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v3, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_3

    .line 3872
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

    .line 3873
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    goto :goto_3

    .line 3876
    :cond_3
    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    move v1, v6

    .line 3880
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x10

    goto :goto_4

    .line 3882
    :cond_4
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_5

    const/4 v2, 0x6

    goto :goto_4

    :cond_5
    const/16 v2, 0xc

    .line 3888
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

    .line 3889
    :goto_5
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_8

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v4, :cond_8

    .line 3891
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eqz v4, :cond_7

    if-ne v0, v4, :cond_7

    add-int/lit8 v2, v2, -0x4

    .line 3895
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

    .line 3897
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_a

    .line 3898
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_6

    .line 3903
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-eqz v4, :cond_9

    if-ne v0, v4, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 3907
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

    .line 3909
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

    .line 3910
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

    .line 3911
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    if-eqz v2, :cond_b

    if-eq v0, v2, :cond_d

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    if-eqz v2, :cond_c

    if-eq v0, v2, :cond_d

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-eqz v2, :cond_12

    if-ne v0, v2, :cond_12

    .line 3912
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x3f

    goto :goto_7

    .line 3914
    :cond_e
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_f

    const/16 v2, 0x35

    goto :goto_7

    :cond_f
    const/16 v2, 0x3b

    .line 3921
    :goto_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->walletLayout:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    if-eqz v3, :cond_10

    if-ne v0, v3, :cond_10

    goto :goto_8

    .line 3923
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesLayout:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    if-eqz v3, :cond_11

    if-ne v0, v3, :cond_11

    goto :goto_8

    .line 3926
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollLayout:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    .line 3929
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

    .line 3040
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3043
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

    .line 598
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

    .line 4657
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->canDismissWithTouchOutside()Z

    move-result v0

    return v0
.end method

.method protected cancelSheetAnimation()V
    .locals 1

    .line 3552
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 3553
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3554
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 3555
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 3557
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 3558
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 3560
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 3561
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    :cond_2
    return-void
.end method

.method public checkCaption(Ljava/lang/CharSequence;)Z
    .locals 7

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 590
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    .line 591
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

    .line 3733
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 3736
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3738
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyAttachButtonColors(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3740
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

    .line 3741
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

    .line 3743
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "windowBackgroundWhiteBlueHeader"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3745
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

    .line 3746
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

    .line 3747
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "actionBarDefaultSubmenuItem"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3748
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3749
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v7, "actionBarDefaultSubmenuBackground"

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 3751
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

    .line 3752
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

    .line 3754
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->updateColors()V

    .line 3756
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_b

    move v0, v1

    .line 3757
    :goto_7
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->itemCells:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v10, v9

    if-ge v0, v10, :cond_a

    .line 3758
    aget-object v10, v9, v0

    if-eqz v10, :cond_9

    .line 3759
    aget-object v9, v9, v0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    const-string v11, "actionBarDefaultSubmenuItemIcon"

    invoke-virtual {p0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 3760
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

    .line 3763
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 3764
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3765
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPopupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3769
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    const-string v2, "dialogFloatingButton"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v7, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 3770
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v7, v9, :cond_c

    const-string v2, "dialogFloatingButtonPressed"

    :cond_c
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 3771
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->writeButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v7, "dialogFloatingIcon"

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3773
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    const-string v2, "dialogShadowLine"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3775
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v2, "dialogScrollGlow"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 3776
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

    .line 3778
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

    .line 3780
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3782
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

    .line 3783
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

    .line 3784
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

    .line 3785
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

    .line 3787
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

    .line 3789
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3791
    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 3792
    aget-object v2, v0, v1

    if-eqz v2, :cond_14

    .line 3793
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

    .line 3841
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 3845
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    .line 3846
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getCaptionMaxLengthLimit()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentLimit:I

    goto :goto_1

    .line 3842
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    if-eqz p1, :cond_2

    .line 3843
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 6

    .line 4679
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4683
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationDialog:Lorg/fork/ui/dialog/TranslateAlert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4684
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->translationDialog:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-virtual {v0}, Lorg/fork/ui/dialog/TranslateAlert;->dismiss()V

    .line 4687
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 4688
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4690
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 4691
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getSelectedItemsCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 4692
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    if-eqz v0, :cond_3

    return-void

    .line 4695
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->confirmationAlertShown:Z

    .line 4696
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4697
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertTitle:I

    const-string v2, "DiscardSelectionAlertTitle"

    .line 4698
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->DiscardSelectionAlertMessage:I

    const-string v2, "DiscardSelectionAlertMessage"

    .line 4699
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    .line 4700
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    .line 4704
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 4705
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 4714
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4717
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 4718
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 4719
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v1, "dialogTextRed"

    .line 4721
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    move v2, v0

    .line 4725
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 4726
    aget-object v4, v3, v2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    aget-object v5, v3, v2

    if-eq v4, v5, :cond_6

    .line 4727
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4730
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

    .line 4735
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_8

    .line 4736
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 4738
    :cond_8
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionLimitBulletinShown:Z

    .line 4739
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 4740
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    :cond_9
    :goto_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4672
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowPassConfirmationAlert:Z

    .line 4674
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 4592
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_0

    .line 4593
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->doOnIdle(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4595
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->removeFromRoot()V

    :goto_0
    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 1

    .line 4651
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    .line 4652
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithButtonClick(I)V

    return-void
.end method

.method public getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;
    .locals 1

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->setAvatarFor:Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    return-object v0
.end method

.method public getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 4757
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getClipLayoutBottom()F
    .locals 3

    .line 343
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

    .line 344
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method public getCommentTextView()Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 1

    .line 4761
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object v0
.end method

.method public getCommentTextViewTop()I
    .locals 2

    .line 2945
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
    .locals 1

    .line 3271
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    return-object v0
.end method

.method public getDocumentLayout()Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
    .locals 1

    .line 4765
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    return-object v0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 3036
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
    .locals 1

    .line 4352
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    return-object v0
.end method

.method public getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
    .locals 1

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    return-object v0
.end method

.method public getSelectedTextView()Landroid/widget/TextView;
    .locals 1

    .line 4329
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

    .line 3719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3720
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3721
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 3722
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3724
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3728
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

    .line 4159
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4163
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonWasVisible:Z

    .line 4164
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botButtonProgressWasVisible:Z

    const/4 v1, 0x0

    .line 4165
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonOffsetY:F

    .line 4166
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botMainButtonTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4167
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 4168
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 4169
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4170
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4171
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4172
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    move v2, v0

    .line 4173
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 4174
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4176
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4177
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4179
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_4

    .line 4180
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 4181
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 4184
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendPhoto(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    .line 4185
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    .line 4186
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendMusic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->musicEnabled:Z

    .line 4187
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendPolls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    .line 4188
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->plainTextEnabled:Z

    .line 4189
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendDocument(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 4191
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pollsEnabled:Z

    goto :goto_2

    .line 4194
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4196
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videosEnabled:Z

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photosEnabled:Z

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentsEnabled:Z

    invoke-virtual {v1, v2, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onInit(ZZZ)V

    .line 4197
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    .line 4198
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    .line 4199
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 4201
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    const-wide/16 v7, 0x4

    if-eqz v1, :cond_5

    .line 4202
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    .line 4203
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 4204
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_5

    .line 4205
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

    .line 4206
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4207
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openAudioLayout(Z)V

    .line 4208
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->audioLayout:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    const-wide/16 v7, 0x3

    .line 4209
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    goto :goto_3

    .line 4211
    :cond_7
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V

    .line 4212
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 4213
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 4215
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v2

    xor-int/2addr v2, v6

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    goto :goto_5

    .line 4217
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    .line 4218
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v2, :cond_9

    move v2, v6

    goto :goto_4

    :cond_9
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    const-wide/16 v7, 0x1

    .line 4219
    iput-wide v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 4222
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isForwardingEditor()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4223
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 4226
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

    .line 4227
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v7, :cond_c

    move v7, v0

    goto :goto_7

    :cond_c
    move v7, v5

    :goto_7
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4228
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eq v2, v1, :cond_10

    .line 4229
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4230
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 4232
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4233
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 4234
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4235
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 4237
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 4238
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 4239
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_e

    .line 4240
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v7, -0x1

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v3, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4242
    :cond_e
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4243
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x0

    .line 4244
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 4245
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onShown()V

    .line 4246
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v1

    if-eqz v1, :cond_f

    move v5, v0

    :cond_f
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4247
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBarShadow:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4249
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eq v1, v2, :cond_11

    .line 4250
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCheckCameraWhenShown(Z)V

    .line 4252
    :cond_11
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    .line 4254
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    .line 4255
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 4256
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const v2, 0xf4240

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public isForwardingEditor()Z
    .locals 2

    .line 255
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

    .line 3691
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-nez v0, :cond_0

    return-void

    .line 3694
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    if-nez v1, :cond_2

    .line 3695
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v0

    const/4 v1, 0x1

    .line 3696
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->enterCommentEventSent:Z

    .line 3697
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

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

    .line 3836
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 4629
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4630
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4631
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 4635
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4636
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 4639
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4642
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4643
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    .line 4646
    :cond_4
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3687
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 2963
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 2964
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 2965
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

    .line 3808
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

    .line 3800
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

    .line 3570
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaPreviewView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedView:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3574
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 3575
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 3577
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/Animator;

    .line 3578
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3579
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3580
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x14

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3581
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_PROGRESS:Landroid/util/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, p0, v10}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3582
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3585
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-array v0, v6, [F

    .line 3587
    iget v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    aput v10, v0, v7

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    .line 3588
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3595
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    .line 3596
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 3598
    :cond_1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v2, v10, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3599
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3600
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3601
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 3603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz v0, :cond_2

    .line 3604
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3606
    :cond_2
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 3607
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v3, [Landroid/animation/Animator;

    .line 3608
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v11, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v12, v3, [I

    .line 3609
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

    .line 3608
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3611
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3612
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 3613
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3614
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    .line 3615
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 3633
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->appearSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3638
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$21;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3656
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x200

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3657
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-array v0, v6, [F

    .line 3665
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3666
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setNavBarAlpha(F)V

    .line 3667
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x19

    .line 3670
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0xc8

    .line 3671
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3672
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3673
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

    .line 4260
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4261
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 4262
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDestroy()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4265
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4266
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4267
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 4268
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4269
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_2

    .line 4270
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_2
    return-void
.end method

.method protected onDismissWithTouchOutside()V
    .locals 1

    .line 4662
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismissWithTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4663
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 4745
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSheetKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4748
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 2975
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 2976
    :goto_0
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->BotRemoveFromMenuTitle:I

    .line 2977
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 2978
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

    .line 2979
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    .line 2994
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 2995
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 3

    .line 4277
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 4278
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_0

    .line 4280
    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4282
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4283
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 4285
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onOpenAnimationEnd()V

    .line 4286
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrAttachButton:I

    const-string v1, "AccDescrAttachButton"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 4287
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 3815
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3816
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3817
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3820
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 3294
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_0

    .line 3295
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    .line 3296
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3297
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->locationLayout:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->openShareLiveLocation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    .line 3824
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    .line 3825
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layouts:[Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3826
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3827
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onResume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3830
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3831
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 2916
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onStart()V

    .line 2918
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2919
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 2920
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2922
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 2923
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 2929
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2931
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2932
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    .line 2933
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2935
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    .line 2936
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public openLayoutById(I)V
    .locals 4

    int-to-long v0, p1

    .line 166
    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedId:J

    .line 167
    sget p1, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openWalletLayout()V

    goto :goto_0

    .line 169
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_BINANCE:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 170
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openBinanceScreen()V

    goto :goto_0

    .line 171
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 172
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openTemplatesLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 1

    .line 4302
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowDrawContent(Z)V

    .line 4303
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    return-void
.end method

.method public setAllowNestedScroll(Z)V
    .locals 0

    .line 4753
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    return-void
.end method

.method public setAvatarPicker(IZ)V
    .locals 1

    .line 4307
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    .line 4308
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarSearch:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 4310
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 4311
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-nez p1, :cond_0

    .line 4312
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4313
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4315
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 4316
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    const-string v0, "ChoosePhotoOrVideo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4318
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

    .line 4321
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    .line 4323
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    if-eqz p1, :cond_3

    .line 4324
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAvatarPicker()V

    :cond_3
    return-void
.end method

.method public setCanOpenPreview(Z)V
    .locals 2

    .line 338
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    .line 339
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

    .line 4155
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-void
.end method

.method public setEditingMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 3021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p1, :cond_0

    return-void

    .line 3024
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3026
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    const/4 p1, 0x0

    .line 3027
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 3029
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 3030
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    .line 3032
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setImageUpdater(Lorg/telegram/ui/Components/ImageUpdater;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method

.method public setMaxSelectedPhotos(IZ)V
    .locals 1

    .line 4340
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    return-void

    .line 4343
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    .line 4344
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    return-void
.end method

.method public setOpenWithFrontFaceCamera(Z)V
    .locals 0

    .line 4348
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openWithFrontFaceCamera:Z

    return-void
.end method

.method public setSoundPicker()V
    .locals 3

    const/4 v0, 0x1

    .line 4333
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->isSoundPicker:Z

    .line 4334
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 4335
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4336
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

    .line 177
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    return-void
.end method

.method protected shouldOverlayCameraViewOverNavBar()Z
    .locals 2

    .line 3000
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

    .line 3005
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x0

    .line 3006
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonPressed:Z

    .line 3007
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    .line 3008
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    .line 3009
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    .line 3011
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->openTransitionFinished:Z

    .line 3012
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 3013
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    const-string v1, "windowBackgroundGray"

    .line 3014
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 3015
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 3016
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

    .line 348
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JLjava/lang/String;)V

    return-void
.end method

.method public showBotLayout(JLjava/lang/String;)V
    .locals 11

    .line 352
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

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_2

    .line 354
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getReplyingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 579
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

    .line 582
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 583
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->botAttachLayouts:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->disallowSwipeOffsetAnimation()V

    .line 584
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

    .line 181
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
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

    .line 185
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 186
    new-instance v9, Ljava/io/File;

    iget-object v10, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    move-object v6, v9

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 192
    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v6

    .line 194
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    return v7

    .line 197
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 200
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v9

    invoke-static {v6, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 202
    new-instance v9, Ljava/io/File;

    const/4 v10, 0x4

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 205
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 206
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 207
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
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

    .line 210
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

    .line 211
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v7

    iput v7, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 212
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    goto :goto_5

    .line 215
    :cond_4
    :try_start_2
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v6, v15}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v9, "Orientation"

    .line 216
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

    .line 228
    :goto_3
    :try_start_3
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    iput-boolean v8, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 230
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 231
    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 232
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

    .line 234
    new-instance v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v21}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    .line 236
    :goto_5
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 239
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v4, v2, v3, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateSelected(Ljava/util/HashMap;Ljava/util/ArrayList;Z)V

    .line 241
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    .line 242
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_b

    .line 243
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_9

    .line 244
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 245
    :cond_9
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    move-object v6, v2

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 248
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openPhotoPreviewLayout()V

    .line 250
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return v8
.end method

.method public updateCommentTextViewPosition()V
    .locals 2

    .line 2941
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    return-void
.end method

.method public updateCountButton(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4062
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewChangeAnimator:Ljava/lang/Object;

    if-eqz v2, :cond_0

    return-void

    .line 4065
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

    .line 4068
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotX(F)V

    .line 4069
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotY(F)V

    if-eqz v1, :cond_1

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v8

    .line 4070
    :goto_0
    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    goto/16 :goto_4

    .line 4072
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    if-eqz v1, :cond_3

    move v9, v7

    goto :goto_1

    :cond_3
    move v9, v8

    .line 4073
    :goto_1
    invoke-direct {v0, v7, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v1, :cond_6

    .line 4074
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/16 v10, 0x15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotX(F)V

    .line 4075
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    const/16 v10, 0xc

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotY(F)V

    .line 4076
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v11, v10, [Landroid/animation/Animator;

    .line 4077
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

    .line 4078
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

    .line 4079
    invoke-static {v12, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v7

    .line 4077
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4080
    new-instance v10, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v10}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4081
    invoke-virtual {v9, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4082
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 4084
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotX(F)V

    .line 4085
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setPivotY(F)V

    .line 4088
    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onSelectedItemsCountChanged(I)V

    .line 4090
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

    .line 4091
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

    .line 4092
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_e

    .line 4093
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 4094
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    .line 4096
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

    .line 4098
    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->documentLayout:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    if-ne v9, v10, :cond_10

    move v2, v8

    .line 4102
    :cond_10
    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v9, :cond_12

    .line 4103
    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v9, :cond_11

    .line 4104
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4106
    :cond_11
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_8

    .line 4108
    :cond_12
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 4109
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_13
    :goto_8
    if-nez v1, :cond_19

    .line 4113
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v1, :cond_15

    .line 4114
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v3, :cond_14

    move v3, v5

    goto :goto_9

    :cond_14
    move v3, v6

    :goto_9
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4116
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

    .line 4118
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v2, :cond_17

    move v5, v6

    :cond_17
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4120
    :cond_18
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuShowed:Z

    if-eqz v1, :cond_1f

    .line 4121
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_d

    .line 4124
    :cond_19
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    .line 4125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4126
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1b

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v9, :cond_1b

    .line 4127
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

    .line 4129
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

    .line 4131
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

    .line 4133
    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4134
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$23;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4148
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->menuAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4149
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

    .line 4031
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    return-void

    .line 4035
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

    .line 4036
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

    .line 4040
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V

    .line 4042
    :cond_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p2, :cond_5

    move p2, v3

    goto :goto_1

    .line 4043
    :cond_5
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    const/16 v1, 0xb

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p2

    .line 4044
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-ne p2, p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v2

    .line 4045
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

    .line 4046
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v1, p2, p1

    if-ne v1, v0, :cond_a

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    if-eqz p3, :cond_b

    .line 4052
    aget p1, p2, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    goto :goto_5

    .line 4047
    :cond_a
    :goto_4
    aget p3, p2, p1

    iput p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->previousScrollOffsetY:I

    .line 4048
    aput v0, p2, p1

    .line 4049
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateSelectedPosition(I)V

    .line 4050
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_b
    :goto_5
    return-void
.end method

.method public updatePhotoPreview(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 3280
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->canOpenPreview:Z

    if-nez p1, :cond_0

    return-void

    .line 3283
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez p1, :cond_1

    .line 3284
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->parentThemeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    .line 3285
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 3287
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAttachLayout:Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoPreviewLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    goto :goto_0

    .line 3289
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoLayout:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :goto_0
    return-void
.end method
