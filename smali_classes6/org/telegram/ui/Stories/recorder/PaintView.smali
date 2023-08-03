.class public Lorg/telegram/ui/Stories/recorder/PaintView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "PaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/IPhotoPaintView;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;,
        Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;
    }
.end annotation


# instance fields
.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

.field private cancelTextButton:Landroid/widget/TextView;

.field private colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

.field private colorPickerRainbowPaint:Landroid/graphics/Paint;

.field private colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

.field private colorSwatchOutlinePaint:Landroid/graphics/Paint;

.field private colorSwatchPaint:Landroid/graphics/Paint;

.field private colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

.field private currentAccount:I

.field private currentCropState:Lorg/telegram/messenger/MediaController$CropState;

.field private currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

.field private destroyed:Z

.field private doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

.field private doneTextButton:Landroid/widget/TextView;

.field private drawTab:Landroid/widget/TextView;

.field private editingText:Z

.field private emojiPadding:I

.field private emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

.field public emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private emojiViewVisible:Z

.field public enteredThroughText:Z

.field public entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

.field private faces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Paint/PhotoFace;",
            ">;"
        }
    .end annotation
.end field

.field private facesBitmap:Landroid/graphics/Bitmap;

.field private forceChanges:Z

.field private h:I

.field private ignoreLayout:Z

.field private ignoreToolChangeAnimationOnce:Z

.field private inBubbleMode:Z

.field private initialEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private isAnimatePopupClosing:Z

.field private isColorListShown:Z

.field private isTypefaceMenuShown:Z

.field private keyboardAnimator:Landroid/animation/AnimatorSet;

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field public final keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lcm:Ljava/math/BigInteger;

.field private offsetTranslationY:F

.field private onCancelButtonClickedListener:Ljava/lang/Runnable;

.field private onDoneButtonClickedListener:Ljava/lang/Runnable;

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private originalBitmapRotation:I

.field private overlayLayout:Landroid/widget/FrameLayout;

.field private paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

.field private pipetteContainerLayout:Landroid/widget/FrameLayout;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pos:[I

.field private previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private renderInputView:Landroid/view/View;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedTextType:I

.field private selectionContainerView:Landroid/widget/FrameLayout;

.field private stickerTab:Landroid/widget/TextView;

.field private tabsLayout:Landroid/widget/LinearLayout;

.field private tabsNewSelectedIndex:I

.field private tabsSelectedIndex:I

.field private tabsSelectionAnimator:Landroid/animation/ValueAnimator;

.field private tabsSelectionProgress:F

.field private final temp:[F

.field private textDim:Landroid/view/View;

.field private textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

.field private textTab:Landroid/widget/TextView;

.field private toolsPaint:Landroid/graphics/Paint;

.field private toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private toolsTransformProgress:F

.field private topLayout:Landroid/widget/FrameLayout;

.field private transformX:F

.field private transformY:F

.field private translateBottomPanelAfterResize:Z

.field private typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

.field private typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

.field private typefaceMenuOutlinePaint:Landroid/graphics/Paint;

.field private typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private typefaceMenuTransformProgress:F

.field private undoAllButton:Landroid/widget/TextView;

.field private undoButton:Landroid/widget/ImageView;

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

.field private w:I

.field private waitingForKeyboardOpen:Z

.field private weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

.field private weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

.field private zoomOutButton:Landroid/widget/LinearLayout;

.field private zoomOutImage:Landroid/widget/ImageView;

.field private zoomOutText:Landroid/widget/TextView;

.field private zoomOutVisible:Z


# direct methods
.method public static synthetic $r8$lambda$1rlu8lDqoxh8Hw_QcIFKybgDNuQ(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$40(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1wo-xGT50a-p0JJhUCxE0g_0ur4(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4uPCVbSXVuEJ7c6kp6PwgekvBB0(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$33(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5zbebwJArgRexqEDORUXis6ItKo(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$32(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8m3kQCm9ERxIan8qG7qz7NOUbSE(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$appearAnimation$44(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A1LCOBjqGbPpHMKe6N7mEL-Zvdk(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$BEC8_gCsB-LbOYnnqXVrYqmQUzM(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showColorList$29(Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$CcGOJQPuR6vchGobJ3nUx5krEmo(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$22(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DIapju2u3mSPNrqW4DsVkfdVv-M(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$registerRemovalUndo$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gp3krg1BSYMlLV06ZAkNouNZuKE(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$38(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H47L6jYwKEcXCsyEOaP5ze5fmuI(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HXSR_ZIRrTyAPdvTzm_wItdHKyU(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$detectFaces$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$I5kpDeBEaFL2NK1VECFX3iVlmjE(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWD1M3yWLvgT9KnQhxVkLa7YAcw(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$20(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lbk03JTmI6IPOtvdahsKL7nmlJY(Lorg/telegram/ui/Stories/recorder/PaintView;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$21(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MgA3RxeuyVI4qTu3Hf5DhzdK7Rg(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$updateTextDim$48(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$N6W77_4BAjITMrVJ6bXucoJHyvk(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$37(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P-U3wAWOPxRifypO0t6YnUtfmrc(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P9aHKF92LOoPsY7WWYWMUVlnc8w(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$41(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PUhv7uiwn_eZrgV0sLZOeZmiB20(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$39(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QogFGp-OddVZQoCSqUd4pm3hn9M(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$42(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RuFqW7Iq87vw-2l84hyXzT06uU0(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S7N9MF_9WXoidwL4xKzGFxgo_Is(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWmjYux5Rc2nB-ovnax08q2aejU(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tp2XYwZmvYWc_yythi3EgS-DV8Y(Lorg/telegram/ui/Stories/recorder/PaintView;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$10(ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNL5YTLyy1hv1Y6q1UlQ4_suCzU(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$35(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMdbIbJUiss_Exkd0VWz5jSqBuM(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8wFMzKsqm7gwcBPd3V5SAOB738(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$buttonForPopup$31(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_GJATRmioiqe408fZrrA0wYxiVw(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$hideEmojiPopup$47(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a08Z4BB-y9rpdFXUGuGM969dMtY(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$aD84HEq7BvHd5ub3JgeS-KDPO-E(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$36(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1Talhgg4MJ52IGRfVHuOzLvxhY(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eZpvCqq1aKxpZ1hTnGFGRXTJlEw(Lorg/telegram/ui/Stories/recorder/PaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showColorList$30(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqCgnFiA5UdpSXlj54PG3k_sk5Q(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showEmojiPopup$46(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gdmvSCqBey-pDQFi2IKFnenzY_M(Lorg/telegram/ui/Stories/recorder/PaintView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showTypefaceMenu$27(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$jA9H_TQt8tMAuz4giXqYpgy-d9s(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$l886lUlbPvhkQWKKg9AiciOKipg()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$shutdown$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$lDMKzKshXaAUOubuGSyY3WMJhBo(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mEIMTxHEIoaPiasKuTNR4DcCXQI(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n74cZHbUwJV17rZM92e-FfMpNN4(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$nWppxjBUk9TYjB4axNhOtWiE8QQ(Lorg/telegram/ui/Stories/recorder/PaintView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setNewColor$14(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQBHwneZqZGCsyWOtsf4E2al654(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXKXl_5cPX_qPt0KQXl17U1uZ54(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$13(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZskw3eXEh4xdkSbrYk5hO2zoZU(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyifNyHp5DmvAjBptXSIIYN7nkg(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$switchTab$18(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wORevH2x9x7DjBGEiXgvPk_9yaA(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$11(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xiO8yvS4e8ksnlSQgPAZ4yxeYww(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$maybeShowDismissalAlert$25(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y69IFp08byMV10bMBz8KtM1mT2g(Lorg/telegram/ui/Stories/recorder/PaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showTypefaceMenu$28(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;",
            "Landroid/app/Activity;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;II",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Ljava/lang/Runnable;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v0, p7

    const/4 v11, 0x1

    move-object/from16 v1, p3

    .line 255
    invoke-direct {v6, v7, v1, v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    const/4 v12, 0x0

    .line 170
    iput v12, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v13, -0x1

    .line 171
    iput v13, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    .line 178
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    .line 215
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    .line 216
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    .line 222
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    .line 223
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    .line 224
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    .line 225
    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3c896918

    invoke-direct {v1, v13, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 231
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    .line 1138
    iput-boolean v12, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutVisible:Z

    const/4 v14, 0x2

    new-array v1, v14, [F

    .line 3232
    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->temp:[F

    new-array v1, v14, [I

    .line 3255
    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    .line 3303
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$19;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$19;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 256
    invoke-virtual {v6, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    .line 257
    iput-object v8, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-object/from16 v1, p8

    .line 258
    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    move/from16 v1, p9

    .line 259
    iput v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    move/from16 v1, p10

    .line 260
    iput v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    .line 262
    iput v9, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    .line 263
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$2;

    move-object/from16 v2, p13

    invoke-direct {v1, v6, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$2;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v1, p11

    .line 326
    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 328
    instance-of v1, v7, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->inBubbleMode:Z

    .line 330
    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    .line 331
    iget-object v2, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getColor(I)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 332
    iget-object v2, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v1

    iput v1, v2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 334
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v2, "Paint"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v1, p5

    .line 336
    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 337
    iput-object v10, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    .line 338
    iput v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->originalBitmapRotation:I

    .line 339
    new-instance v1, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 340
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda47;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    .line 350
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/16 v15, 0x8

    .line 351
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/high16 v2, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 355
    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$3;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    invoke-direct {v3, v1, v10, v0}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;I)V

    iget-object v2, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    move-object v11, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/PaintView$3;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v11, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 366
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$4;

    move-object/from16 v1, p12

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$4;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    .line 415
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    .line 416
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    .line 417
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 420
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$5;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Stories/recorder/PaintView$5;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    .line 429
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$7;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$6;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$6;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-direct {v0, v6, v7, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$7;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    .line 517
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupEntities()V

    .line 519
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 521
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$8;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Stories/recorder/PaintView$8;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    .line 530
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    .line 531
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 532
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v14, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 533
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x30

    invoke-static {v13, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    .line 536
    sget v3, Lorg/telegram/messenger/R$drawable;->photo_undo2:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v11, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 538
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda8;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 549
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 550
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v5, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/16 v11, 0x20

    const/16 v16, 0x20

    const/16 v18, 0x33

    const/16 v19, 0xc

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 p7, v11

    move/from16 p8, v16

    move/from16 p9, v18

    move/from16 p10, v19

    move/from16 p11, v20

    move/from16 p12, v21

    move/from16 p13, v22

    invoke-static/range {p7 .. p13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    .line 553
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 554
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const v5, 0x30ffffff

    const/4 v11, 0x7

    invoke-static {v5, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 555
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v12, v2, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 556
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    .line 557
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 559
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v14, 0x1

    invoke-virtual {v0, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 560
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->PhotoEditorZoomOut:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutImage:Landroid/widget/ImageView;

    .line 562
    sget v14, Lorg/telegram/messenger/R$drawable;->photo_zoomout:I

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v14, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutImage:Landroid/widget/ImageView;

    const/16 v18, 0x18

    const/16 v19, 0x18

    const/16 v20, 0x10

    const/16 v23, 0x8

    const/16 v24, 0x0

    move/from16 p7, v18

    move/from16 p8, v19

    move/from16 p9, v20

    move/from16 p10, v21

    move/from16 p11, v22

    move/from16 p12, v23

    move/from16 p13, v24

    invoke-static/range {p7 .. p13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v4, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const/16 v14, 0x10

    invoke-static {v1, v1, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 566
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    sget-object v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda22;->INSTANCE:Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda22;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v4, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v3, 0x20

    const/16 v13, 0x11

    invoke-static {v1, v3, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    .line 572
    invoke-static {v5, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v12, v3, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 574
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorClearAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 576
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 578
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 579
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda13;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 581
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/16 v20, -0x2

    const/16 v21, 0x20

    const/16 v22, 0x5

    const/16 v23, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    .line 584
    invoke-static {v5, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 585
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v12, v3, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 587
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 588
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 590
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 591
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda11;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 602
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v22, 0x33

    const/16 v23, 0x4

    const/16 v25, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    .line 606
    invoke-static {v5, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v12, v3, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 609
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 610
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 612
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 613
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda14;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 617
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x20

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x4

    const/16 v17, 0x0

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    move/from16 p10, v5

    move/from16 p11, v11

    move/from16 p12, v13

    move/from16 p13, v17

    invoke-static/range {p7 .. p13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$9;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Stories/recorder/PaintView$9;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    .line 728
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 729
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 730
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x68

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    if-eqz v10, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    .line 733
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 734
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;)V

    .line 736
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 737
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    .line 740
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 741
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 742
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;)V

    .line 743
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda35;

    invoke-direct {v0, v6, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 744
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 745
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$10;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Stories/recorder/PaintView$10;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    .line 785
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    .line 788
    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 789
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda48;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 795
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypefaceListView(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V

    .line 796
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x55

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x8

    const/16 v14, 0x8

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    move/from16 p10, v5

    move/from16 p11, v11

    move/from16 p12, v13

    move/from16 p13, v14

    invoke-static/range {p7 .. p13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 799
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const v1, 0x14ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 801
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {v6, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 803
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$11;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Stories/recorder/PaintView$11;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    .line 825
    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 826
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorPalette(Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    .line 827
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda26;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorListener(Landroidx/core/util/Consumer;)V

    .line 831
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/4 v2, -0x1

    const/16 v3, 0x54

    const/16 v4, 0x30

    const/16 v5, 0x38

    const/16 v13, 0x38

    const/4 v14, 0x6

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    move/from16 p10, v5

    move/from16 p12, v13

    move/from16 p13, v14

    invoke-static/range {p7 .. p13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupTabsLayout(Landroid/content/Context;)V

    .line 835
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    .line 836
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 837
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 838
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x53

    const/16 v5, 0xc

    const/4 v13, 0x0

    const/4 v14, 0x4

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    move/from16 p10, v5

    move/from16 p12, v13

    move/from16 p13, v14

    invoke-static/range {p7 .. p13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    .line 859
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 860
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 861
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda15;

    invoke-direct {v1, v6, v7, v10, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x55

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v13, 0x4

    move/from16 p5, v2

    move/from16 p6, v3

    move/from16 p7, v4

    move/from16 p8, v5

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v13

    invoke-static/range {p5 .. p11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    .line 934
    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setColorSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 935
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 936
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 937
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 938
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda36;

    invoke-direct {v1, v6, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setOnUpdate(Ljava/lang/Runnable;)V

    .line 942
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    .line 945
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 948
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 950
    iget-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 952
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateColors()V

    .line 955
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    new-array v0, v1, [Landroid/graphics/Rect;

    .line 956
    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    const-wide v9, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v9

    double-to-int v4, v4

    invoke-direct {v1, v12, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v12

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 959
    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$13;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda45;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    invoke-direct {v0, v6, v8, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$13;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x80000000
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/recorder/PaintView;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 134
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 134
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/view/ViewGroup;
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 134
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/PaintView;I)Landroid/view/View;
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 134
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 134
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/recorder/PaintView;)Ljava/lang/Runnable;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Stories/recorder/PaintView;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/view/View;
    .locals 0

    .line 134
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    return-object p0
.end method

.method private basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2986
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2987
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2988
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2989
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p1, p1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2991
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move p1, v0

    :goto_0
    cmpl-float v0, p1, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-lez v0, :cond_0

    .line 2994
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2995
    new-instance v1, Lorg/telegram/ui/Components/Size;

    div-float p1, v0, p1

    invoke-direct {v1, v0, p1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1

    .line 2997
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2998
    new-instance v1, Lorg/telegram/ui/Components/Size;

    mul-float/2addr p1, v0

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 4

    .line 2979
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2980
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;
    .locals 2

    .line 2485
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    .line 2486
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setIcon(I)V

    .line 2487
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setText(Ljava/lang/CharSequence;)V

    .line 2488
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setSelected(Z)V

    if-eqz p4, :cond_0

    .line 2490
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda6;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;
    .locals 6

    const/4 v0, 0x0

    .line 3027
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3028
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3029
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 3030
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3037
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v1, :cond_2

    .line 3038
    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v3, v4

    neg-float v3, v3

    .line 3039
    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 3044
    :goto_2
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    if-eqz v0, :cond_5

    .line 3045
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    .line 3048
    :cond_3
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 3050
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v2, v3, v4, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    .line 3055
    :cond_4
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 3056
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v2

    .line 3057
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result p1

    .line 3058
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    .line 3060
    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 3069
    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    .line 3070
    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    .line 3072
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    new-instance v4, Lorg/telegram/ui/Components/Point;

    invoke-direct {v4, v2, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-direct {v3, v4, v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    return-object v3

    :cond_5
    :goto_3
    return-object v1
.end method

.method private centerPositionForEntity()Lorg/telegram/ui/Components/Point;
    .locals 3

    .line 3016
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-gtz v0, :cond_0

    .line 3017
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    :cond_0
    if-gtz v1, :cond_1

    .line 3018
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 3021
    new-instance v2, Lorg/telegram/ui/Components/Point;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v2
.end method

.method private createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .locals 11

    .line 3147
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    move-result-object v0

    .line 3148
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$18;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$3900(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4000(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)F

    move-result v5

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4100(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)F

    move-result v6

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v7

    move-object v1, v10

    move-object v2, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView$18;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 3154
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3155
    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3157
    :cond_0
    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 3164
    invoke-virtual {v10, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3165
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_1

    .line 3167
    invoke-direct {p0, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3168
    invoke-direct {p0, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    return-object v10
.end method

.method private createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .locals 10

    .line 1059
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTextAdd()V

    .line 1061
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 1062
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 1063
    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v0, v2

    float-to-int v5, v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    const-string v6, ""

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V

    .line 1064
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->betterFraming:Z

    .line 1065
    iget v0, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1066
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setHasStickyX(Z)V

    .line 1068
    :cond_0
    iget v0, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1069
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setHasStickyY(Z)V

    .line 1071
    :cond_1
    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 1072
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 1073
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    .line 1074
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, -0x2

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1077
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v0

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_2
    if-eqz p1, :cond_3

    .line 1082
    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1084
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    const/4 p1, 0x0

    .line 1085
    invoke-direct {p0, v9, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 1086
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1087
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1088
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    .line 1090
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(I)V

    :cond_3
    return-object v9
.end method

.method private detectFaces()V
    .locals 4

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private duplicateEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2850
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 2852
    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v1, :cond_1

    .line 2853
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v2, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    .line 2854
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2855
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2857
    :cond_1
    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_2

    .line 2858
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v1, v2, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    .line 2859
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->betterFraming:Z

    .line 2860
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2861
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 2862
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v0, -0x2

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2868
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2869
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_2
    return-void
.end method

.method private getBarView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1403
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1405
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBarView()Landroid/view/ViewGroup;
    .locals 2

    .line 1312
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    :goto_0
    return-object v0
.end method

.method private getCenterLocationInWindow(Landroid/view/View;)[I
    .locals 5

    .line 3257
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3259
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    .line 3260
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float/2addr v1, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    mul-float/2addr v1, p1

    .line 3263
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    float-to-int v0, v3

    aput v0, p1, v2

    const/4 v0, 0x1

    .line 3264
    aget v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v1, v4

    add-float/2addr v2, v1

    float-to-int v1, v2

    aput v1, p1, v0

    return-object p1
.end method

.method private getFrameRotation()I
    .locals 2

    .line 1701
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->originalBitmapRotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private getPaintingSize()Lorg/telegram/ui/Components/Size;
    .locals 3

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    return-object v0

    .line 1627
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Size;

    const/high16 v1, 0x44870000    # 1080.0f

    const/high16 v2, 0x44f00000    # 1920.0f

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method private getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;
    .locals 11

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    .line 3077
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3081
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3082
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_0
    if-lez v3, :cond_2

    .line 3087
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move-wide v8, p2

    move-object v10, p4

    .line 3088
    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 3086
    rem-int/2addr v2, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2970
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hideEmojiPopup(Z)V
    .locals 3

    .line 3417
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3418
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    :cond_0
    if-eqz p1, :cond_2

    .line 3421
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_1

    .line 3422
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v1

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 3423
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3424
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3428
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    .line 3429
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$21;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 3437
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3438
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3439
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3441
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideEmojiView()V
    .locals 2

    .line 3452
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3453
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3455
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    const/4 v1, 0x0

    .line 3456
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-eqz v0, :cond_1

    .line 3458
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_1
    return-void
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 9

    .line 3097
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 3102
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result p1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, v2

    move v2, v1

    .line 3104
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3105
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3106
    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v4, :cond_1

    goto :goto_1

    .line 3110
    :cond_1
    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 3111
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_1

    .line 3115
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 3116
    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, p5, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v7, p5, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 3117
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, p3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_3
    cmpg-float v3, v4, p1

    if-gez v3, :cond_4

    return v0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private isSidewardOrientation()Z
    .locals 3

    .line 1710
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->originalBitmapRotation:I

    rem-int/lit16 v1, v0, 0x168

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$appearAnimation$44(Landroid/view/View;)V
    .locals 1

    .line 3008
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    .line 3009
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 3010
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$buttonForPopup$31(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2490
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$detectFaces$23()V
    .locals 9

    const/4 v0, 0x0

    .line 1717
    :try_start_0
    new-instance v1, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1718
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    .line 1719
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1720
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v0

    .line 1721
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1722
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "face detection is not operational"

    .line 1723
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1751
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    .line 1728
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getFrameRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1731
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1736
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    .line 1738
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1739
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1740
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/face/Face;

    .line 1741
    new-instance v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->isSidewardOrientation()Z

    move-result v8

    invoke-direct {v6, v5, v7, v4, v8}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    .line 1742
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1743
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1746
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1733
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1751
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1748
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 1751
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_4
    return-void

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    .line 1753
    :cond_5
    throw v1
.end method

.method private synthetic lambda$hideEmojiPopup$47(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3425
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3426
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private static synthetic lambda$maybeShowDismissalAlert$25(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2044
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 7

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 344
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 542
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 543
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(ILjava/lang/Integer;)V
    .locals 2

    .line 919
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 920
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 921
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    .line 922
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 923
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 1

    .line 862
    iget-boolean p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p4, :cond_0

    .line 863
    new-instance p4, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColor(I)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/Stories/recorder/PaintView$12;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$12;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setPipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    .line 918
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColorListener(Landroidx/core/util/Consumer;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    .line 924
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->show()V

    return-void

    .line 927
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 928
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$12(I)V
    .locals 2

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 940
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Ljava/lang/Integer;)V
    .locals 9

    .line 960
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getBottomPadding(Z)I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 961
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 963
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    .line 964
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x1

    if-lez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_0

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 966
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 967
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 969
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    .line 970
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 971
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    const/16 v8, 0x8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    aput v6, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    neg-int p1, p1

    const/16 v6, 0x28

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr p1, v6

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    int-to-float p1, p1

    aput p1, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    aput v6, v4, v0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    if-eqz p2, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-nez v6, :cond_5

    move v6, v7

    goto :goto_4

    :cond_5
    move v6, v5

    :goto_4
    aput v6, v4, v0

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p2, :cond_6

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move v7, v5

    :goto_5
    aput v7, v1, v0

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePreviewViewTranslationY()V

    .line 978
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0xfa

    const-wide/16 v5, 0x15e

    if-eqz p2, :cond_7

    .line 980
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 981
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    .line 983
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 986
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    move p1, v0

    .line 988
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    .line 989
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz p2, :cond_8

    move-wide v7, v5

    goto :goto_8

    :cond_8
    move-wide v7, v3

    :goto_8
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 990
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz p2, :cond_9

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_9

    :cond_9
    sget-object v7, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    :goto_9
    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 991
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_a
    if-nez p2, :cond_b

    .line 995
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    :cond_b
    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 567
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->zoomOut()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 579
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearAll()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 593
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 595
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 596
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    .line 598
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    .line 599
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 614
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$6(I)V
    .locals 1

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;I)V
    .locals 1

    .line 790
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 791
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 p1, 0x0

    .line 793
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Integer;)V
    .locals 0

    .line 828
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    const/4 p1, 0x0

    .line 829
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 0

    .line 840
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 841
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void

    .line 844
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 845
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    return-void

    .line 848
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 849
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    .line 853
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onCancelButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 854
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$32(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 1

    .line 2703
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2704
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    .line 2706
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 2707
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->animatePlusToIcon(I)V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$33(Landroid/view/View;)Z
    .locals 4

    .line 2710
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2711
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->toggleFillShapes()V

    .line 2712
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result p1

    const/4 v1, 0x0

    .line 2713
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2714
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 2715
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    if-eqz v3, :cond_1

    .line 2716
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 2717
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v3

    .line 2718
    :goto_1
    check-cast v2, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    invoke-virtual {v2, v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setIcon(IZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onAddButtonPressed$34()V
    .locals 7

    .line 2698
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2699
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2700
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 2701
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v4

    .line 2702
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda38;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    invoke-direct {p0, v5, v4, v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    move-result-object v3

    .line 2709
    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda23;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2724
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$openStickersView$19()V
    .locals 1

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1491
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->detectFaces()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openStickersView$20(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 1503
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    .line 1504
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onGalleryClick()V

    return-void
.end method

.method private synthetic lambda$openStickersView$21(ILandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1507
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    const/4 p2, 0x0

    .line 1508
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    .line 1509
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    return-void
.end method

.method private synthetic lambda$openStickersView$22(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    const/4 v0, 0x1

    .line 1512
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1513
    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$registerRemovalUndo$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 3206
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method private synthetic lambda$setNewColor$14(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1050
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 1053
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$15(Landroid/view/View;)V
    .locals 0

    .line 1360
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1361
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1363
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupTabsLayout$16(Landroid/view/View;)V
    .locals 0

    .line 1372
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$17(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1392
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 1393
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1394
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 1395
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showColorList$29(Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p6, 0x447a0000    # 1000.0f

    div-float/2addr p7, p6

    .line 2376
    iput p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    const/high16 p6, 0x3f800000    # 1.0f

    sub-float p7, p6, p7

    const p8, 0x3ecccccd    # 0.4f

    mul-float/2addr p7, p8

    const p8, 0x3f19999a    # 0.6f

    add-float/2addr p7, p8

    .line 2379
    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleX(F)V

    .line 2380
    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleY(F)V

    const/16 p7, 0x10

    .line 2381
    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p7

    int-to-float p7, p7

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p8, v0}, Ljava/lang/Math;->min(FF)F

    move-result p8

    mul-float/2addr p7, p8

    div-float/2addr p7, v0

    invoke-virtual {p1, p7}, Landroid/view/View;->setTranslationY(F)V

    .line 2382
    iget p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-static {p7, v0}, Ljava/lang/Math;->min(FF)F

    move-result p7

    div-float/2addr p7, v0

    sub-float p7, p6, p7

    invoke-virtual {p1, p7}, Landroid/view/View;->setAlpha(F)V

    .line 2384
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setProgress(FZ)V

    .line 2386
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;->setProgress(F)V

    .line 2387
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;->setProgress(F)V

    .line 2389
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/16 p8, 0x20

    invoke-static {p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p8

    int-to-float p8, p8

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    mul-float/2addr p8, v0

    invoke-virtual {p7, p8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2390
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    const/4 p8, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p7

    if-eqz p7, :cond_0

    .line 2391
    aput-boolean p8, p3, p8

    .line 2393
    :cond_0
    aget-boolean p3, p3, p8

    if-eqz p3, :cond_5

    .line 2394
    iget p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sub-float p3, p6, p3

    .line 2395
    :goto_0
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/4 p8, 0x0

    if-eqz p2, :cond_2

    move v0, p6

    goto :goto_1

    :cond_2
    move v0, p8

    :goto_1
    invoke-static {p4, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2396
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move p6, p8

    :goto_2
    invoke-static {p4, p6, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    invoke-virtual {p7, p4}, Landroid/view/View;->setAlpha(F)V

    .line 2397
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 p6, 0x27

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, -0x1

    :goto_3
    int-to-float p2, p2

    mul-float/2addr p6, p2

    sub-float/2addr p5, p6

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2399
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2401
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-ne p1, p2, :cond_6

    .line 2402
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_6
    return-void
.end method

.method private synthetic lambda$showColorList$30(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2406
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 2407
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2410
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2411
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 2412
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showEmojiPopup$46(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3379
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3380
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showMenuForEntity$35(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2748
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2750
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2751
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$36(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2769
    :try_start_0
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    const p2, 0x1020031

    .line 2770
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2772
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2774
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2775
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$37(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2782
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 2783
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->editSelectedTextEntity()V

    .line 2784
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2785
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$38(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 1

    .line 2803
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2804
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror(Z)V

    goto :goto_0

    .line 2806
    :cond_0
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror(Z)V

    .line 2808
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2809
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$39(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2826
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->duplicateEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2828
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2829
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$40(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 12

    .line 2735
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2736
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2738
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2739
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2740
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x10

    .line 2741
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2742
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2743
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v2, v5, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    .line 2744
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2745
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2746
    sget v8, Lorg/telegram/messenger/R$string;->PaintDelete:I

    const-string v9, "PaintDelete"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2747
    new-instance v8, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda19;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, -0x2

    const/16 v9, 0x30

    .line 2754
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2756
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_3

    .line 2757
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2758
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2759
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2760
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2761
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2762
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v2, v10, v1, v11, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2763
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2764
    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v10, v10, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-eqz v10, :cond_1

    :cond_0
    iget v10, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v10, :cond_2

    :cond_1
    const/4 v10, 0x3

    .line 2765
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2766
    sget v10, Lorg/telegram/messenger/R$string;->Paste:I

    const-string v11, "Paste"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2767
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda20;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2779
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2780
    sget v10, Lorg/telegram/messenger/R$string;->PaintEdit:I

    const-string v11, "PaintEdit"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2781
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda17;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2789
    :goto_0
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2792
    :cond_3
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v2, :cond_4

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-eqz v2, :cond_5

    .line 2793
    :cond_4
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2794
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2795
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2796
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2797
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2798
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v2, v10, v1, v11, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2799
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, 0x4

    .line 2800
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2801
    sget v10, Lorg/telegram/messenger/R$string;->Flip:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2802
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda16;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2812
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2815
    :cond_5
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v2, :cond_6

    .line 2816
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2817
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2818
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2819
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2820
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2821
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2822
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x2

    .line 2823
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2824
    sget v1, Lorg/telegram/messenger/R$string;->PaintDuplicate:I

    const-string v3, "PaintDuplicate"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2825
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2832
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2835
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2837
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2838
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2839
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2840
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showPopup$41(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2924
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2925
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2926
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2927
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2928
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$42(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2936
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$43()V
    .locals 1

    .line 2954
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$27(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    .line 2334
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    .line 2335
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2336
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 2337
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2339
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getTypefaceCell()Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$28(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2342
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 2343
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2346
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2348
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->setMaskProvider(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$shutdown$24()V
    .locals 1

    .line 1764
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1766
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchTab$18(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1424
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    .line 1425
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1426
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1427
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p3, 0x0

    .line 1429
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge p3, v0, :cond_2

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-ne p3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    if-ne p3, v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1432
    :cond_2
    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    sub-float v0, v3, p3

    mul-float v4, v0, v1

    add-float/2addr v4, v2

    .line 1436
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1437
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    const/16 v4, 0x10

    .line 1438
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1439
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr p3, v1

    add-float/2addr p3, v2

    .line 1442
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 1443
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 1444
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr p1, p3

    div-float/2addr p1, v6

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1445
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$updateTextDim$48(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 3533
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private openStickersView()V
    .locals 5

    .line 1487
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v1, 0x1

    .line 1488
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 1489
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1494
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, p0, v3, v4, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$17;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 1501
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda43;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->setBlurDelegate(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 1502
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->setOnGalleryClick(Landroid/view/View$OnClickListener;)V

    .line 1506
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1511
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenSelected(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 1515
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1516
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2

    .line 3180
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 3181
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    const/4 v0, 0x0

    .line 3182
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 3184
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    .line 3185
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-eqz v1, :cond_0

    .line 3186
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3188
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 3191
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 3193
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    .line 3196
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 3197
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 3198
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 3199
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1150
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    move-result p1

    return p1
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 6

    .line 1157
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    if-ne v5, v1, :cond_1

    :cond_0
    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_4

    .line 1158
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    if-eq v3, v1, :cond_2

    .line 1159
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1161
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz v3, :cond_3

    .line 1162
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    .line 1164
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    :cond_4
    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 1170
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getGravity()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_5

    const/16 v5, 0x15

    if-eq v4, v5, :cond_6

    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1182
    :cond_6
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 1183
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1185
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 1187
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    .line 1188
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1191
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p2, :cond_e

    if-ne p2, p1, :cond_c

    .line 1193
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-nez p1, :cond_a

    if-eqz v0, :cond_9

    .line 1195
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    .line 1196
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->editSelectedTextEntity()V

    goto :goto_1

    .line 1198
    :cond_9
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    .line 1200
    :cond_a
    instance-of p1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_b

    .line 1201
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1202
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    :cond_b
    :goto_1
    return v3

    .line 1206
    :cond_c
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 1207
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_d

    .line 1208
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    if-nez v0, :cond_d

    .line 1210
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    .line 1211
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1212
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    :cond_d
    move p2, v3

    goto :goto_2

    :cond_e
    move p2, v2

    .line 1219
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1220
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1221
    instance-of p1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_f

    .line 1222
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1223
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1224
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1228
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p1, :cond_11

    .line 1229
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    .line 1230
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1232
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_10

    .line 1233
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1234
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v0, p2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1235
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1237
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget p2, p2, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$14;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$14;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    goto :goto_3

    .line 1251
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1252
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1253
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1254
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_3

    .line 1259
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_12

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-eqz v0, :cond_12

    .line 1260
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1262
    :cond_12
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p1, :cond_13

    .line 1263
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    .line 1265
    :cond_13
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 1267
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1268
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1269
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1270
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    move v3, p2

    .line 1272
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateTextDim()V

    return v3
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 3

    .line 2426
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eq v0, p1, :cond_0

    .line 2427
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2428
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    .line 2429
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2431
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 2432
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    .line 2435
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    .line 2436
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    if-eqz p2, :cond_1

    .line 2439
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 2440
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2444
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_2

    .line 2445
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget v2, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    :cond_2
    return-void
.end method

.method private setNewColor(I)V
    .locals 4

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 1045
    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const/4 v2, 0x1

    .line 1046
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1048
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1049
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;II)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1055
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V
    .locals 5

    .line 2660
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setAlign(I)V

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_1

    if-eq p2, v2, :cond_0

    const/16 v3, 0x13

    goto :goto_0

    :cond_0
    const/16 v3, 0x15

    goto :goto_0

    :cond_1
    move v3, v0

    .line 2676
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 2677
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_6

    if-eq p2, v1, :cond_4

    const/4 v0, 0x3

    if-eq p2, v2, :cond_3

    .line 2682
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_5

    :cond_2
    move v2, v0

    goto :goto_1

    .line 2688
    :cond_3
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    .line 2691
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_6
    return-void
.end method

.method private setTextType(I)V
    .locals 2

    .line 2625
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    .line 2626
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2627
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 2629
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTextType(I)V

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    return-void
.end method

.method private setupEntities()V
    .locals 13

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 1639
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 1640
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 1642
    iget-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-nez v4, :cond_1

    .line 1643
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    iget-object v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v4, v7, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object v4

    .line 1644
    iget-byte v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 1645
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 1648
    :cond_0
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1649
    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1650
    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_1
    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    .line 1652
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    move-result-object v4

    .line 1653
    iget-byte v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 1654
    iget-object v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    .line 1655
    iget v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setBaseFontSize(I)V

    .line 1656
    new-instance v6, Landroid/text/SpannableString;

    iget-object v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1657
    iget-object v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 1658
    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v10, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-direct {v9, v10, v11, v5, v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v8, v10

    const/16 v11, 0x21

    invoke-virtual {v6, v9, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1661
    :cond_2
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontSize()F

    move-result v8

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v6, v7, v8, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1662
    instance-of v7, v6, Landroid/text/Spanned;

    if-eqz v7, :cond_3

    .line 1663
    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v7, v1, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v7, :cond_3

    move v8, v1

    .line 1665
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_3

    .line 1666
    aget-object v9, v7, v8

    const v10, 0x3f59999a    # 0.85f

    iput v10, v9, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1670
    :cond_3
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    iget v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-direct {p0, v4, v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 1672
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v6

    .line 1673
    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v7, v6, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 1674
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    goto :goto_3

    :cond_4
    if-ne v4, v6, :cond_6

    .line 1677
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v4

    .line 1678
    iget-byte v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 1679
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror()V

    .line 1682
    :cond_5
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1683
    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1684
    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1688
    :goto_3
    iget v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v7, v7

    iget v8, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setX(F)V

    .line 1689
    iget v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v7, v7

    iget v9, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float/2addr v5, v9

    mul-float/2addr v7, v5

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setY(F)V

    .line 1690
    new-instance v5, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    iget v7, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    iget v9, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    add-float/2addr v7, v9

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 1691
    iget v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1692
    iget v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1693
    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v3, v3

    float-to-double v5, v3

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v7

    const-wide v7, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v7

    double-to-float v3, v5

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setRotation(F)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 1695
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private setupTabsLayout(Landroid/content/Context;)V
    .locals 14

    .line 1316
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$15;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1346
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/16 v4, 0x28

    const/16 v5, 0x50

    const/16 v6, 0x34

    const/4 v7, 0x0

    const/16 v8, 0x34

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    .line 1351
    sget v2, Lorg/telegram/messenger/R$string;->PhotoEditorDraw:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v1, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    .line 1369
    sget v9, Lorg/telegram/messenger/R$string;->PhotoEditorSticker:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v0, v1, v9, v1, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda12;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    .line 1382
    sget p1, Lorg/telegram/messenger/R$string;->PhotoEditorText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1384
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1385
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1386
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1387
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1388
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1389
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 1391
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1398
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showColorList(Z)V
    .locals 10

    .line 2357
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eq v0, p1, :cond_5

    .line 2358
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    .line 2360
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2361
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2364
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v2, 0x0

    const/high16 v3, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2365
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    move v2, v3

    .line 2366
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2367
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2368
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2365
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 2370
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v8

    :cond_4
    :goto_1
    aput-boolean v0, v5, v8

    .line 2371
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    .line 2372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    .line 2374
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2375
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda31;

    move-object v1, v9

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Z[ZFF)V

    invoke-virtual {v0, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2405
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2416
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p1, :cond_5

    .line 2419
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2420
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    :cond_5
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 3332
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3333
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createEmojiView()V

    .line 3335
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3337
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    .line 3338
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3340
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    const/16 v4, 0x96

    const/16 v5, 0xc8

    if-gtz v3, :cond_2

    .line 3341
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3342
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    goto :goto_1

    .line 3344
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const-string v7, "kbd_height"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    .line 3347
    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    if-gtz v3, :cond_4

    .line 3348
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3349
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_2

    .line 3351
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const-string v5, "kbd_height_land3"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    .line 3354
    :cond_4
    :goto_2
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_3

    :cond_5
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v4

    add-int/2addr v3, v4

    .line 3356
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 3357
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3358
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3359
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v4, :cond_6

    .line 3360
    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v2

    .line 3361
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3364
    :cond_6
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 3365
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 3366
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 3368
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3370
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_7
    if-nez p1, :cond_e

    .line 3374
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    .line 3375
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    goto :goto_4

    :cond_8
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3377
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    int-to-float v2, v2

    aput v2, p1, v0

    const/4 v0, 0x0

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3378
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3382
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$20;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 3388
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3389
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3390
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 3395
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3397
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 3399
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_c

    .line 3401
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    .line 3402
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_c

    :cond_b
    const/16 v2, 0x8

    .line 3403
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_c
    if-nez p1, :cond_d

    .line 3407
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 3408
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 3410
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 3413
    :cond_e
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 8

    .line 2730
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2731
    aget v6, v0, v1

    const/4 v1, 0x1

    .line 2732
    aget v0, v0, v1

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v7, v0, v1

    .line 2734
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda39;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v5, 0x33

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stories/recorder/PaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V
    .locals 5

    .line 2913
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2914
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 2918
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2919
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    .line 2920
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2921
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2922
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const v2, -0xd7d7d7

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 2923
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2934
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2939
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 2942
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    .line 2943
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2945
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    if-nez p1, :cond_2

    .line 2946
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 2947
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 2948
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2949
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2950
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2951
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2952
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2953
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2954
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2957
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x3e8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 2959
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    and-int/lit8 p1, p3, 0x30

    if-eqz p1, :cond_3

    .line 2962
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr p4, p1

    .line 2963
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    .line 2965
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2966
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private showTypefaceMenu(Z)V
    .locals 5

    .line 2315
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    if-eq v0, p1, :cond_4

    .line 2316
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    .line 2318
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2319
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2322
    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-direct {v1, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2323
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2324
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2325
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2326
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2323
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    .line 2329
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2330
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2333
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2341
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2351
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 12

    .line 2874
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v1, 0x43480000    # 200.0f

    if-eqz v0, :cond_0

    .line 2875
    iget v2, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v2

    :cond_0
    if-eqz p1, :cond_1

    .line 2879
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 2880
    new-instance v1, Lorg/telegram/ui/Components/Point;

    iget v2, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v1

    :cond_1
    const/high16 p1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_2

    .line 2884
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr p1, v0

    .line 2886
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 2889
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 2890
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2891
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v5, :cond_3

    goto :goto_2

    .line 2894
    :cond_3
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v5

    .line 2895
    iget v6, v5, Lorg/telegram/ui/Components/Point;->x:F

    iget v7, v0, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    iget v10, v0, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v5, v10

    float-to-double v10, v5

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    cmpg-float v5, v5, p1

    if-gez v5, :cond_4

    .line 2897
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    return-object v0

    .line 2905
    :cond_6
    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object v0, v2

    goto :goto_0
.end method

.method private switchTab(I)V
    .locals 5

    .line 1410
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1414
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1417
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object v0

    .line 1418
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    .line 1419
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1421
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    .line 1422
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1423
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1448
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$16;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$16;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1481
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePlusEmojiKeyboardButton()V
    .locals 13

    .line 3539
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v0, :cond_2

    .line 3540
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3542
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    .line 3543
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3545
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    .line 3549
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 3551
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3552
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3554
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v2, v0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3555
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method private updatePreviewViewTranslationY()V
    .locals 7

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1013
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 1017
    :cond_1
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 1018
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-eqz v4, :cond_3

    :cond_2
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v4, :cond_5

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v4, :cond_4

    goto :goto_0

    .line 1019
    :cond_4
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v4, 0x0

    :goto_1
    aput v4, v2, v3

    .line 1017
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x15e

    .line 1021
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateTextDim()V
    .locals 3

    .line 3528
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3529
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3530
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3531
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3535
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public adjustPanLayoutHelperProgress()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 3270
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public appearAnimation(Landroid/view/View;)V
    .locals 4

    .line 3003
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    .line 3004
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    mul-float/2addr v2, v1

    .line 3005
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    .line 3006
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3007
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3012
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 1101
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 1102
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 1104
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_2

    .line 1105
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->clearAll()V

    .line 1107
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->reset()V

    .line 1108
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 2114
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method protected createEmojiView()V
    .locals 12

    .line 3559
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 3560
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3561
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3563
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 3566
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    .line 3567
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    const/4 v1, 0x1

    .line 3568
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    .line 3569
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3570
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3571
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 3573
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$22;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 3705
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;
    .locals 10

    .line 3126
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;

    move-result-object v5

    .line 3127
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 3128
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3129
    iget v1, v5, Lorg/telegram/ui/Components/Size;->width:F

    .line 3130
    iget v2, v5, Lorg/telegram/ui/Components/Size;->height:F

    iput v2, v5, Lorg/telegram/ui/Components/Size;->width:F

    .line 3131
    iput v1, v5, Lorg/telegram/ui/Components/Size;->height:F

    .line 3133
    :cond_0
    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v0, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;II)V

    .line 3134
    iget-object p1, v9, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 3137
    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3138
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 3140
    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3141
    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    return-object v9
.end method

.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    return-void
.end method

.method protected dismiss()V
    .locals 0

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_4

    .line 1281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->inBubbleMode:Z

    if-nez v0, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1284
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 1287
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1288
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1289
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_2

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_3

    :cond_2
    move v8, v3

    move v3, v2

    move v2, v8

    :cond_3
    int-to-float v2, v2

    .line 1296
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    .line 1297
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1298
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v4, v6

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->transformX:F

    add-float/2addr v4, v6

    .line 1299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v0

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getAdditionalBottom()I

    move-result v0

    add-int/2addr v6, v0

    sub-int/2addr v6, v3

    int-to-float v0, v6

    div-float/2addr v0, v5

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->transformY:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 1301
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v5, v1, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v1, 0x1

    .line 1304
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_5

    .line 1306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return p2
.end method

.method protected editSelectedTextEntity()V
    .locals 2

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1129
    :cond_0
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x1

    .line 1130
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    .line 1132
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    .line 1133
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1135
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getAdditionalBottom()I
    .locals 1

    const/16 v0, 0x18

    .line 2140
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getAdditionalTop()I
    .locals 1

    const/16 v0, 0x30

    .line 2135
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/util/ArrayList;IIZZ)Landroid/graphics/Bitmap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;IIZZ)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p4, :cond_0

    .line 1811
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1812
    :goto_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    if-nez v4, :cond_1

    if-nez p5, :cond_1e

    .line 1813
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 1816
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_1e

    .line 1819
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1820
    instance-of v0, v8, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_2

    move/from16 v17, v5

    move v12, v6

    move v5, v7

    const/4 v8, 0x0

    goto/16 :goto_f

    .line 1823
    :cond_2
    move-object v0, v8

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1824
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    .line 1825
    new-instance v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v9}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    if-eqz v2, :cond_17

    .line 1827
    instance-of v12, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v15, 0x1

    if-eqz v12, :cond_d

    .line 1828
    iput-byte v15, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1829
    move-object v12, v0

    check-cast v12, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1830
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1831
    instance-of v11, v3, Landroid/text/Spanned;

    if-eqz v11, :cond_c

    .line 1832
    move-object v11, v3

    check-cast v11, Landroid/text/Spanned;

    .line 1833
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v11, v6, v10, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v10, :cond_c

    move v13, v6

    .line 1835
    :goto_2
    array-length v14, v10

    if-ge v13, v14, :cond_c

    .line 1836
    aget-object v14, v10, v13

    .line 1837
    iget-object v6, v14, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v6, :cond_3

    .line 1839
    iget v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    move-object/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    move/from16 v17, v5

    :goto_3
    if-eqz v6, :cond_4

    .line 1842
    iget v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1845
    :cond_4
    new-instance v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v4}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    move v5, v7

    move-object/from16 v18, v8

    .line 1846
    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    iput-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 1847
    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1848
    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 1849
    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v7, v8

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 1850
    iget v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v6, v15}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    const/4 v7, 0x0

    :cond_5
    if-eqz v6, :cond_6

    .line 1852
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/io/File;

    iget-object v14, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1853
    iget v8, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    iget-object v14, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v8, v14, v15}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    add-int/2addr v7, v15

    .line 1855
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_5

    .line 1859
    :cond_6
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7, v15}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1860
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1861
    :cond_7
    iget-byte v8, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v7, :cond_8

    move v7, v15

    goto :goto_4

    :cond_8
    const/4 v7, 0x4

    :goto_4
    or-int/2addr v7, v8

    int-to-byte v7, v7

    iput-byte v7, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    .line 1863
    :cond_9
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1864
    iget-byte v7, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    or-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    iput-byte v7, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    .line 1866
    :cond_a
    iget-object v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_b

    const-wide/16 v6, 0x1388

    .line 1871
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 1872
    iget-object v8, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v14, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v14, v4}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    goto :goto_5

    :cond_b
    const-wide/16 v6, 0x1388

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move v7, v5

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v8, v18

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v16, v4

    move/from16 v17, v5

    move v5, v7

    move-object/from16 v18, v8

    .line 1878
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1879
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1880
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 1881
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTextSize()I

    move-result v3

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 1882
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 1883
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result v3

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    goto/16 :goto_8

    :cond_d
    move-object/from16 v16, v4

    move/from16 v17, v5

    move v5, v7

    move-object/from16 v18, v8

    const-wide/16 v6, 0x1388

    .line 1884
    instance-of v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    .line 1885
    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1886
    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 1887
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    .line 1888
    iget v8, v4, Lorg/telegram/ui/Components/Size;->width:F

    iput v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1889
    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1890
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iput-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1891
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getParentObject()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 1892
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    .line 1893
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    invoke-virtual {v8, v4, v15}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1894
    invoke-static {v4, v15}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1895
    :cond_e
    invoke-static {v4, v15}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v8

    .line 1896
    iget-byte v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v8, :cond_f

    goto :goto_6

    :cond_f
    const/4 v15, 0x4

    :goto_6
    or-int/2addr v10, v15

    int-to-byte v10, v10

    iput-byte v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v8, :cond_10

    .line 1899
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getDuration()J

    move-result-wide v13

    goto :goto_7

    :cond_10
    move-wide v13, v6

    :goto_7
    const-wide/16 v6, 0x0

    cmp-long v6, v13, v6

    if-eqz v6, :cond_11

    .line 1904
    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 1905
    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    .line 1908
    :cond_11
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, -0x1

    .line 1909
    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 1910
    iget-byte v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    iput-byte v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1912
    :cond_12
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1913
    iget-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    goto :goto_8

    :cond_13
    const/4 v4, 0x2

    goto :goto_8

    :cond_14
    const/4 v4, 0x2

    .line 1915
    instance-of v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-eqz v3, :cond_1c

    .line 1916
    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    .line 1917
    iput-byte v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1918
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v6

    .line 1919
    iget v7, v6, Lorg/telegram/ui/Components/Size;->width:F

    iput v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1920
    iget v6, v6, Lorg/telegram/ui/Components/Size;->height:F

    iput v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1921
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1922
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1923
    iget-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1928
    :cond_15
    :goto_8
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 1930
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 1931
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v6

    .line 1932
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getY()F

    move-result v7

    .line 1933
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 1934
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 1935
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    iput v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1936
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    iput v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1937
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v11, v10, v3

    mul-float/2addr v8, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    add-float/2addr v8, v6

    iget-object v12, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v8, v12

    iput v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 1938
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float v4, v10, v4

    mul-float/2addr v8, v4

    div-float/2addr v8, v11

    add-float/2addr v8, v7

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v8, v4

    iput v8, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1939
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRotation()F

    move-result v4

    neg-float v4, v4

    float-to-double v11, v4

    const-wide v13, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v11, v13

    double-to-float v4, v11

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 1941
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v6, v4

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    iput v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 1942
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    add-float/2addr v7, v4

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v4

    iput v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 1943
    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v4, v4

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 1944
    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v4, v4

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 1945
    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 1947
    instance-of v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v3, :cond_18

    .line 1948
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageAspectRatio()F

    move-result v0

    .line 1949
    iget v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 1950
    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v7, v6

    add-float/2addr v4, v7

    .line 1951
    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v7, v0, v10

    if-lez v7, :cond_16

    .line 1954
    iget v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v3, v6

    div-float/2addr v3, v0

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1955
    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v4, v3

    .line 1956
    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    goto :goto_9

    :cond_16
    cmpg-float v4, v0, v10

    if-gez v4, :cond_18

    .line 1958
    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v4, v6

    mul-float/2addr v4, v0

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1959
    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    .line 1960
    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    goto :goto_9

    :cond_17
    move-object/from16 v16, v4

    move/from16 v17, v5

    move v5, v7

    move-object/from16 v18, v8

    :cond_18
    :goto_9
    if-eqz p5, :cond_1c

    if-eqz v16, :cond_1c

    .line 1965
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1966
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v0, v6

    const/4 v7, 0x0

    :goto_a
    const/4 v8, 0x2

    if-ge v7, v8, :cond_1d

    if-nez v7, :cond_19

    move-object v10, v3

    goto :goto_b

    :cond_19
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_1b

    .line 1972
    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 1973
    invoke-virtual {v10, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1974
    iget v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v0, v11

    iget v11, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget-object v12, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1975
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScaleY()F

    move-result v11

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1976
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v11, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScaleX()F

    move-result v13

    div-float/2addr v11, v13

    iget-object v13, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v11, v13

    iget v13, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v13, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getScaleY()F

    move-result v14

    div-float/2addr v13, v14

    iget-object v14, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    invoke-virtual {v10, v0, v11, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v11, v18

    .line 1978
    instance-of v0, v11, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1a

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1979
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v13, v14}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1980
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1981
    invoke-virtual {v11, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1982
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v12, 0x0

    invoke-direct {v14, v12, v12, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x0

    invoke-virtual {v10, v13, v8, v14, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1984
    :try_start_0
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v14, v0

    .line 1986
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1988
    :goto_c
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_d

    :cond_1a
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 1990
    invoke-virtual {v11, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1992
    :goto_d
    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    :cond_1b
    move-object/from16 v11, v18

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v11

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v4, v16

    :cond_1d
    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_f
    add-int/lit8 v7, v5, 0x1

    move v6, v12

    move/from16 v5, v17

    goto/16 :goto_1

    :cond_1e
    return-object v4
.end method

.method public getBitmap(Ljava/util/ArrayList;[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;[",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1807
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v0, p2, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v0

    iget p2, p2, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v4, p2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBottomLayout()Landroid/view/View;
    .locals 1

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCancelView()Landroid/view/View;
    .locals 1

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    return-object v0
.end method

.method public getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
    .locals 3

    .line 3250
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Point;->x:F

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3251
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 3252
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    return-object p1
.end method

.method public getCropRotation()F
    .locals 2

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDoneView()Landroid/view/View;
    .locals 1

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    return-object v0
.end method

.method public getEmojiPadding(Z)I
    .locals 0

    .line 3448
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    return p1
.end method

.method public getEntitiesView()Landroid/view/View;
    .locals 1

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    return-object v0
.end method

.method public getLcm()J
    .locals 2

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMasks()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation

    .line 2238
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_8

    .line 2240
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2241
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v5, :cond_2

    .line 2242
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v2, :cond_0

    .line 2244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 2247
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2248
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2249
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v4, :cond_1

    new-array v4, v1, [B

    .line 2251
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 2253
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2254
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_7

    .line 2255
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 2256
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2257
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 2258
    move-object v5, v4

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v5, v1, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v4, :cond_7

    move v5, v1

    .line 2260
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 2261
    aget-object v6, v4, v5

    if-eqz v6, :cond_6

    .line 2264
    iget-object v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    goto :goto_2

    .line 2267
    :cond_3
    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    if-nez v2, :cond_4

    .line 2272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2274
    :cond_4
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 2275
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2276
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2277
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v7, :cond_5

    new-array v7, v1, [B

    .line 2279
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 2281
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v2
.end method

.method public getOffsetTranslationY()F
    .locals 1

    .line 1790
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->offsetTranslationY:F

    return v0
.end method

.method public getPreviewViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    .line 2105
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRenderInputView()Landroid/view/View;
    .locals 1

    .line 2153
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    return-object v0
.end method

.method public getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 1

    .line 2145
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object v0
.end method

.method public getSelectionEntitiesView()Landroid/view/View;
    .locals 1

    .line 2161
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTextDimView()Landroid/view/View;
    .locals 1

    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    return-object v0
.end method

.method public getTopLayout()Landroid/view/View;
    .locals 1

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTransformedTouch(Landroid/view/MotionEvent;FF)[F
    .locals 2

    .line 3237
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3238
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3239
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 3240
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p3, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 3241
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v1

    sub-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    div-float/2addr p2, v1

    add-float/2addr v0, p2

    .line 3242
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v1

    sub-float/2addr p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    div-float/2addr p3, p1

    add-float/2addr p2, p3

    .line 3243
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->temp:[F

    const/4 p3, 0x0

    aput v0, p1, p3

    const/4 p3, 0x1

    .line 3244
    aput p2, p1, p3

    return-object p1
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$getView(Lorg/telegram/ui/Components/IPhotoPaintView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWeightChooserView()Landroid/view/View;
    .locals 1

    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 1

    .line 1802
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init()V
    .locals 2

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 2022
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2023
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void

    .line 2027
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 2028
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    return-void

    .line 2032
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2033
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    .line 2037
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    return-void

    .line 2041
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2042
    sget p2, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    const-string v2, "PhotoEditorDiscardAlert"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2043
    sget p2, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    const-string v2, "DiscardChanges"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2044
    sget p2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2045
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2046
    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto :goto_0

    .line 2048
    :cond_4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public measureKeyboardHeight()I
    .locals 3

    .line 3464
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->getKeyboardHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getBottomPadding(Z)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onAddButtonPressed(Landroid/view/View;)V
    .locals 6

    .line 2697
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    .line 2726
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/16 v3, 0x35

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p0

    .line 2697
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/PaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method public onAnimationStateChanged(Z)V
    .locals 2

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 3715
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    .line 3716
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 2451
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2452
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return v2

    .line 2456
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    .line 2457
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    return v2

    .line 2461
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz v0, :cond_3

    .line 2462
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    if-eqz v0, :cond_2

    .line 2463
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    .line 2464
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 2467
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return v2

    :cond_3
    return v1
.end method

.method public onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 3

    .line 2294
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2297
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    goto :goto_1

    .line 2295
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    .line 2299
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setDrawCenter(Z)V

    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_2

    .line 2301
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    .line 2303
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 2304
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2305
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 2306
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCleanupEntities()V
    .locals 1

    .line 2002
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public onColorPickerSelected()V
    .locals 1

    const/4 v0, 0x1

    .line 2476
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 3721
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    .line 3722
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEmojiButtonClick()V
    .locals 1

    .line 3321
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    .line 3322
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 3323
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    .line 3324
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 3325
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 3327
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    return-void
.end method

.method public onEntityDragEnd(Z)V
    .locals 0

    .line 3218
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePreviewViewTranslationY()V

    return-void
.end method

.method public onEntityDragStart()V
    .locals 0

    return-void
.end method

.method public synthetic onEntityDragTrash(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragTrash(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

    return-void
.end method

.method public synthetic onEntityDraggedBottom(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDraggedBottom(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

    return-void
.end method

.method public synthetic onEntityDraggedTop(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDraggedTop(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

    return-void
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 3228
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 3213
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method protected onGalleryClick()V
    .locals 0

    return-void
.end method

.method public onGetPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    .line 2975
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1599
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v0, 0x1

    .line 1533
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 1534
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1535
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1537
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 1541
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getAdditionalTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getAdditionalBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x30

    .line 1542
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 1543
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 1544
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1545
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    .line 1548
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    move v8, v5

    move v5, v4

    move v4, v8

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v4

    float-to-double v6, v1

    .line 1552
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v1, v6

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-double v3, v3

    .line 1555
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 1561
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    .line 1565
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 1566
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 1569
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1570
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1571
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1572
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->measureKeyboardHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1573
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    sub-int/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v3, p1, v1}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1575
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1576
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 1577
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 1580
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    const/16 v1, 0x14

    if-nez p2, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-ltz p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    if-nez p2, :cond_3

    .line 1581
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 1582
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    .line 1583
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 1586
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-ltz p1, :cond_4

    goto :goto_1

    .line 1589
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    :goto_1
    return-void
.end method

.method public onNewTextSelected()V
    .locals 1

    .line 2635
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2638
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 2639
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    goto :goto_1

    .line 2636
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onEmojiButtonClick()V

    :goto_1
    return-void
.end method

.method protected onOpenCloseStickersAlert(Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1780
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->redraw()V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/16 v0, 0x32

    .line 3469
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 3471
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    .line 3472
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 3474
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    .line 3475
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    const-string v2, "kbd_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3479
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 3480
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v1

    add-int/2addr v0, v1

    .line 3482
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3483
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    .line 3484
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3485
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3486
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3488
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 3489
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 3490
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 3494
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    return-void

    .line 3497
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue1:I

    .line 3498
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue2:Z

    .line 3500
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    .line 3501
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3502
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p2

    .line 3503
    invoke-virtual {p2}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    goto :goto_3

    .line 3505
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    .line 3507
    :goto_3
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p2, :cond_8

    .line 3508
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    .line 3510
    :cond_8
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez p2, :cond_9

    if-eq p2, p1, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez p2, :cond_9

    .line 3511
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 3512
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 3513
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 3515
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateTextDim()V

    if-eqz p1, :cond_a

    .line 3516
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    if-eqz p1, :cond_a

    .line 3517
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    .line 3519
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_b

    .line 3520
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    .line 3521
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3524
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method protected onTextAdd()V
    .locals 0

    return-void
.end method

.method public onTextAlignmentSelected(I)V
    .locals 2

    .line 2653
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2654
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 2655
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentAlignment(I)V

    :cond_0
    return-void
.end method

.method public onTextOutlineSelected(Landroid/view/View;)V
    .locals 0

    .line 2481
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextType(I)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2085
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2086
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 2095
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2097
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2098
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2099
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onTouch(Landroid/view/MotionEvent;)Z

    .line 2100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTypefaceButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 2311
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method public onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 2

    .line 2645
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTypeface(Ljava/lang/String;)V

    .line 2646
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2647
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    :cond_0
    return-void
.end method

.method public openPaint()V
    .locals 1

    const/4 v0, 0x0

    .line 2118
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 2119
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearSelection()V

    return-void
.end method

.method public openStickers()V
    .locals 1

    const/4 v0, 0x1

    .line 2129
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 2130
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V

    return-void
.end method

.method public openText()V
    .locals 1

    const/4 v0, 0x2

    .line 2123
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    const/4 v0, 0x1

    .line 2124
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 2125
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    return-void
.end method

.method public removeCurrentEntity()V
    .locals 1

    .line 3174
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    .line 3175
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1525
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1528
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public bridge synthetic setOffsetTranslationX(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$setOffsetTranslationX(Lorg/telegram/ui/Components/IPhotoPaintView;F)V

    return-void
.end method

.method public setOffsetTranslationY(FFIZ)V
    .locals 0

    return-void
.end method

.method public setOnCancelButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onCancelButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setTransform(FFFFF)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1761
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda42;->INSTANCE:Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda42;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1770
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    if-eqz v0, :cond_0

    .line 1771
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    .line 1773
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    if-eqz v0, :cond_1

    .line 1774
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->dismiss()V

    :cond_1
    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 1795
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    const v1, -0xe6e6e7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateZoom(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 1142
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutVisible:Z

    if-eq v1, v0, :cond_1

    .line 1143
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutVisible:Z

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method
