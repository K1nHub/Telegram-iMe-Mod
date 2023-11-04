.class public Lorg/telegram/ui/Stories/recorder/PaintView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "PaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/IPhotoPaintView;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;,
        Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;,
        Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;
    }
.end annotation


# instance fields
.field private final bitmapToEdit:Landroid/graphics/Bitmap;

.field private final blurBitmapToEdit:Landroid/graphics/Bitmap;

.field private blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

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

.field private file:Ljava/io/File;

.field private fileFromGallery:Z

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

.field private invalidateReactionPosition:Z

.field private isAnimatePopupClosing:Z

.field private isColorListShown:Z

.field private isTypefaceMenuShown:Z

.field private isVideo:Z

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

.field points:[F

.field private popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pos:[I

.field private previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

.field public reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private reactionLayoutShowing:Z

.field private reactionShowProgress:F

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


# direct methods
.method public static synthetic $r8$lambda$1iw-jmB8ia5y4J9YOiAW_ZJfZJ4(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$23(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1wo-xGT50a-p0JJhUCxE0g_0ur4(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$29xVs_LSYEv-casP_P_9us9JeKs(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showLocationAlert$26(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3fObFxvgbGhcs7s4tKz22YKabGM(Lorg/telegram/ui/Stories/recorder/PaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showTypefaceMenu$33(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$5J7NhyEi2-AF26eVzeZGPtkl_EI(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$detectFaces$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$6rqbbbd3FX0ey9_bqqPByx5NEYg(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$50(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7SjPyo1ueM0I44BOWC9vMUFXIqY(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$hideEmojiPopup$55(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-pc9RgqrD6lZadsJ3M3gxoLi88(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$39(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9wydZ88_BsAuXw9XhTCC0iMbU1Y(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$49(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$A1DOTGbnLOJ7kUxPPNQCyDbmUDI(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$updateTextDim$56(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$A8qVrgA7Qina-zFMlUF_5ZQ7UCU(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$createText$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$AQtFnpPeW9ayb4yAZD4hVGyxr7E(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$42(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AxLPOgkIGqg1ZaxhqwsNPYuIO4k(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$D5sMisZrAUU8zblvsQTj9C1JO9s(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$10(Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GX0qIqtVf9dJ9N48Xo-pFmWTd_A(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$11(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H47L6jYwKEcXCsyEOaP5ze5fmuI(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I5kpDeBEaFL2NK1VECFX3iVlmjE(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHDUySuMvAKzlI_YWlUZr7hNoRs(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$switchTab$20(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ISIGeMLUMxX1Z92yvJLj4Q_TzcQ(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$48(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KASTPyWT9xipvPAcz2Bw7nAmxEw(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$24(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Km7Y6d-WzCZcwz245-nRJsDCPiw(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LNDlnmbGZ1jSVn5HVaBhO0-kpik(Lorg/telegram/ui/Stories/recorder/PaintView;[ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$25([ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LlHbwoMrI8-Kt_mxGgTrjzXOuuI(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$P-U3wAWOPxRifypO0t6YnUtfmrc(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RrdWWiPNkGYHh_9t93x4iKEXLyo(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$buttonForPopup$37(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4VLAIVY-NHqch8JELW8Dvu5o00()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$shutdown$29()V

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

.method public static synthetic $r8$lambda$VMdbIbJUiss_Exkd0VWz5jSqBuM(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLkGt3nkbylOco8BeRIQto8BzQs(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$onAddButtonPressed$38(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-fs2LGu7MwTJnCBoyOmC3cEg_I(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showEmojiPopup$54(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z6adeipZS_05rKkA2ECYm3srg3A(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$47(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Z2IMdVDkWFI7M667C1yw-TgquQ(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showReactionsLayout$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a08Z4BB-y9rpdFXUGuGM969dMtY(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$aRR9GkHn00knwDrccKF0BBvoRKY(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setCurrentSwatch$36(Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bxWtY2f43OQIzoWdbgfScJYNAC0(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$43(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1Talhgg4MJ52IGRfVHuOzLvxhY(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hCcA-5bCQ1g2SFbwzYiqkkWNZEo(Lorg/telegram/ui/Stories/recorder/PaintView;[ZILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$openStickersView$22([ZILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lwvtqfQP3FmlzPK3O7Gqz5ZbdiI(Lorg/telegram/ui/Stories/recorder/PaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showColorList$35(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$mEIMTxHEIoaPiasKuTNR4DcCXQI(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3aNPP1M37JruXpKiewUz1JMCuY(Lorg/telegram/ui/Stories/recorder/PaintView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showTypefaceMenu$32(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$nWppxjBUk9TYjB4axNhOtWiE8QQ(Lorg/telegram/ui/Stories/recorder/PaintView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setNewColor$14(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7tjcKlNLae5JgAgBV8CRxIEPxU(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showAudioAlert$27(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qdc7Oyyv3z30mRqYTZVKBAXOchA(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$setupTabsLayout$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qsGPdJZ7WKKxwBmomZTZz1l-CSg(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$41(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQBHwneZqZGCsyWOtsf4E2al654(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$szeVmx7No_thItQbdLNQdpCm0E0(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$46(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tUqg5Y6WfU60bN39i4yzr5W7daI(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vD7eO-jtoYng3ijVK5HPazTl-64(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showColorList$34(Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$vIfj-4wy-1ZaEBifJUcsQHZBZUo(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showPopup$51()V

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

.method public static synthetic $r8$lambda$wIxG72que-BCS8obsL3pupWoMVg(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$registerRemovalUndo$53(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yZQAOqlYAUPt-NgSvb6oYrgN8ik(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$showMenuForEntity$44(Lorg/telegram/ui/Components/Paint/Views/EntityView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zoh8Y5MEGrMOZXjrMwIeK-M22BQ(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->lambda$appearAnimation$52(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/io/File;ZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/io/File;",
            "Z",
            "Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;",
            "Landroid/app/Activity;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;II",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Ljava/lang/Runnable;",
            "Lorg/telegram/ui/Components/BlurringShader$BlurManager;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move/from16 v11, p7

    move-object/from16 v12, p10

    move/from16 v0, p11

    move-object/from16 v13, p17

    const/4 v14, 0x1

    move-object/from16 v1, p6

    .line 276
    invoke-direct {v8, v9, v1, v14}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    const/4 v15, 0x0

    .line 182
    iput v15, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v7, -0x1

    .line 183
    iput v7, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    .line 190
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$1;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    .line 227
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    .line 228
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    .line 234
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    .line 235
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    .line 236
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    .line 237
    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3c896918

    invoke-direct {v1, v7, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 243
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    const/4 v6, 0x2

    new-array v1, v6, [F

    .line 1396
    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    new-array v1, v6, [I

    .line 4044
    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    .line 4092
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$28;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$28;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 277
    invoke-virtual {v8, v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    move/from16 v1, p2

    .line 278
    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->fileFromGallery:Z

    move-object/from16 v1, p3

    .line 279
    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->file:Ljava/io/File;

    move/from16 v1, p4

    .line 280
    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideo:Z

    .line 281
    iput-object v10, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move/from16 v1, p13

    .line 282
    iput v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    move/from16 v1, p14

    .line 283
    iput v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    .line 285
    iput v11, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    .line 286
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$2;

    move-object/from16 v2, p18

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$2;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v1, p15

    .line 355
    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 357
    instance-of v1, v9, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->inBubbleMode:Z

    .line 359
    invoke-static/range {p7 .. p7}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v5

    .line 360
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->resetCurrentColor()V

    .line 361
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 362
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 364
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v2, "Paint"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v4, p8

    .line 366
    iput-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v3, p9

    .line 367
    iput-object v3, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->blurBitmapToEdit:Landroid/graphics/Bitmap;

    .line 368
    iput-object v12, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    .line 369
    iput v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->originalBitmapRotation:I

    .line 370
    new-instance v1, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 371
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    .line 381
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/16 v2, 0x8

    .line 382
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/high16 v2, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 384
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 386
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$3;

    new-instance v6, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    invoke-direct {v6, v2, v12, v0, v13}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    move-object v0, v1

    move-object v2, v1

    move-object/from16 v1, p0

    move-object v14, v2

    const/16 p2, 0x8

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v6, v5

    move-object/from16 v5, p9

    move-object/from16 v17, v6

    const/4 v15, 0x2

    move-object/from16 v6, p17

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/PaintView$3;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/graphics/Bitmap;)V

    iput-object v14, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 397
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$4;

    move-object/from16 v1, p16

    invoke-direct {v0, v8, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$4;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    .line 446
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    .line 447
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    .line 448
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 451
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$5;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$5;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    .line 460
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$7;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$6;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$6;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-direct {v0, v8, v9, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$7;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v0, p12

    .line 574
    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    .line 575
    iget v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    if-lez v0, :cond_0

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    if-lez v0, :cond_0

    .line 576
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupEntities()V

    .line 579
    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 581
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$8;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$8;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    .line 590
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    .line 591
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

    .line 592
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v15, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    .line 596
    sget v4, Lorg/telegram/messenger/R$drawable;->photo_undo2:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 597
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 598
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda11;

    invoke-direct {v5, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 609
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 610
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    const/16 v18, 0x20

    const/16 v19, 0x20

    const/16 v20, 0x33

    const/16 v21, 0xc

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    .line 613
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 614
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const v7, 0x30ffffff

    const/4 v14, 0x7

    invoke-static {v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 615
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v4, v6, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 616
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    .line 617
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 619
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 620
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->PhotoEditorZoomOut:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutImage:Landroid/widget/ImageView;

    .line 622
    sget v6, Lorg/telegram/messenger/R$drawable;->photo_zoomout:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutImage:Landroid/widget/ImageView;

    const/16 v18, 0x18

    const/16 v19, 0x18

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v23, 0x8

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v0, v6, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutText:Landroid/widget/TextView;

    const/16 v15, 0x10

    invoke-static {v1, v1, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 626
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    sget-object v6, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda25;->INSTANCE:Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda25;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v5, 0x20

    const/16 v4, 0x11

    invoke-static {v1, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    .line 632
    invoke-static {v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 634
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorClearAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 636
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 638
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 639
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda16;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 641
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, 0x20

    const/16 v20, 0x5

    const/16 v23, 0x4

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    .line 644
    invoke-static {v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 645
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 647
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 648
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 649
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 650
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 651
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda14;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 662
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v20, 0x33

    const/16 v21, 0x4

    const/16 v23, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    .line 666
    invoke-static {v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 669
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 670
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 671
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 672
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 673
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda17;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 677
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/16 v20, 0x5

    const/16 v21, 0x0

    const/16 v23, 0x4

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$9;

    move-object/from16 v2, v17

    invoke-direct {v0, v8, v9, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$9;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    .line 796
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 797
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    invoke-direct {v4, v5, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 798
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x68

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    if-eqz v13, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v9, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    .line 801
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 802
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;)V

    .line 804
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 805
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/16 v5, 0x30

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    .line 808
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 809
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 810
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;)V

    .line 811
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda39;

    invoke-direct {v0, v8, v11}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 812
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static/range {p7 .. p7}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 813
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/16 v5, 0x30

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$10;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$10;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    .line 853
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    .line 856
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 857
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda56;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 863
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypefaceListView(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V

    .line 864
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x55

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x8

    move/from16 p11, v5

    move/from16 p12, v6

    move/from16 p13, v7

    move/from16 p14, v13

    move/from16 p15, v14

    move/from16 p16, v15

    move/from16 p17, v16

    invoke-static/range {p11 .. p17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 867
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const v4, 0x14ffffff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {v8, v4}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 871
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$11;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/PaintView$11;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    .line 893
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 894
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-static/range {p7 .. p7}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorPalette(Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    .line 895
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda29;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorListener(Landroidx/core/util/Consumer;)V

    .line 899
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/4 v5, -0x1

    const/16 v6, 0x54

    const/16 v7, 0x30

    const/16 v13, 0x38

    const/16 v15, 0x38

    const/16 v16, 0x6

    move/from16 p11, v5

    move/from16 p12, v6

    move/from16 p13, v7

    move/from16 p14, v13

    move/from16 p16, v15

    move/from16 p17, v16

    invoke-static/range {p11 .. p17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupTabsLayout(Landroid/content/Context;)V

    .line 903
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    .line 904
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 905
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 906
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const/16 v5, 0x20

    const/16 v6, 0x20

    const/16 v7, 0x53

    const/16 v13, 0xc

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 p11, v5

    move/from16 p12, v6

    move/from16 p13, v7

    move/from16 p14, v13

    move/from16 p16, v15

    move/from16 p17, v16

    invoke-static/range {p11 .. p17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda10;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    .line 927
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 928
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda18;

    invoke-direct {v1, v8, v9, v12, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/16 v2, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x4

    move/from16 p9, v2

    move/from16 p10, v4

    move/from16 p11, v5

    move/from16 p12, v6

    move/from16 p13, v7

    move/from16 p14, v12

    move/from16 p15, v13

    invoke-static/range {p9 .. p15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    .line 1003
    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setColorSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 1004
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 1005
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1006
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1007
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda40;

    invoke-direct {v1, v8, v11}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setOnUpdate(Ljava/lang/Runnable;)V

    .line 1011
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    .line 1014
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1017
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1019
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1021
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateColors()V

    .line 1024
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    new-array v0, v1, [Landroid/graphics/Rect;

    .line 1025
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

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1028
    :cond_2
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$13;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda52;

    invoke-direct {v1, v8, v10}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    invoke-direct {v0, v8, v10, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$13;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    const/4 v0, 0x1

    .line 1076
    sput v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->savedPosition:I

    return-void

    nop

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

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/recorder/PaintView;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setupEntities()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/view/ViewGroup;
    .locals 0

    .line 145
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/PaintView;I)Landroid/view/View;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/PaintView;)F
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Stories/recorder/PaintView;F)F
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/PaintView;)I
    .locals 0

    .line 145
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 145
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/PaintView;I)I
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/PaintView;)Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/PaintView;)Ljava/lang/Runnable;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Stories/recorder/PaintView;Z)Z
    .locals 0

    .line 145
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/recorder/PaintView;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/PaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/PaintView;)Landroid/view/View;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    return-object p0
.end method

.method private basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3698
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3699
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3700
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3701
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

    .line 3703
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move p1, v0

    :goto_0
    cmpl-float v0, p1, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-lez v0, :cond_0

    .line 3706
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

    .line 3707
    new-instance v1, Lorg/telegram/ui/Components/Size;

    div-float p1, v0, p1

    invoke-direct {v1, v0, p1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1

    .line 3709
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

    .line 3710
    new-instance v1, Lorg/telegram/ui/Components/Size;

    mul-float/2addr p1, v0

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private basePhotoSize(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/Size;
    .locals 5

    .line 3716
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 3717
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3719
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v0, v0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_1

    .line 3721
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3723
    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$WebDocument;

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    cmpl-float p1, v0, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-lez p1, :cond_3

    .line 3727
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 3728
    new-instance v1, Lorg/telegram/ui/Components/Size;

    div-float v0, p1, v0

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1

    .line 3730
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double v3, p1

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 3731
    new-instance v1, Lorg/telegram/ui/Components/Size;

    mul-float/2addr v0, p1

    invoke-direct {v1, v0, p1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 4

    .line 3691
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 3692
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;
    .locals 2

    .line 3067
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    .line 3068
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setIcon(I)V

    .line 3069
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setText(Ljava/lang/CharSequence;)V

    .line 3070
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setSelected(Z)V

    if-eqz p4, :cond_0

    .line 3072
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda9;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;
    .locals 6

    const/4 v0, 0x0

    .line 3760
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3761
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3762
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 3763
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3770
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v1, :cond_2

    .line 3771
    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v3, v4

    neg-float v3, v3

    .line 3772
    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 3777
    :goto_2
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    if-eqz v0, :cond_5

    .line 3778
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    .line 3781
    :cond_3
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 3783
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v2, v3, v4, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    .line 3788
    :cond_4
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 3789
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v2

    .line 3790
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result p1

    .line 3791
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    .line 3793
    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 3802
    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    .line 3803
    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    .line 3805
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

    .line 3749
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-gtz v0, :cond_0

    .line 3750
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    :cond_0
    if-gtz v1, :cond_1

    .line 3751
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 3754
    new-instance v2, Lorg/telegram/ui/Components/Point;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v2
.end method

.method private createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 5

    .line 3495
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3496
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x10

    .line 3497
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x1

    .line 3498
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 3499
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 3500
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v3, "fonts/rmedium.ttf"

    .line 3501
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3502
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 3503
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3505
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private createLocationSticker(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LocationView;
    .locals 14

    move-object v0, p0

    .line 1130
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTextAdd()V

    const/4 v1, 0x1

    .line 1132
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 1134
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    const/4 v1, 0x0

    .line 1135
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 1136
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    if-gtz v2, :cond_0

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    float-to-int v3, v2

    const/16 v4, 0x3a

    .line 1137
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v12, v3, v4

    .line 1138
    new-instance v13, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    const/high16 v4, 0x43700000    # 240.0f

    div-float v8, v2, v4

    const/4 v10, 0x3

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    :goto_1
    move v11, v2

    move-object v2, v13

    move-object v4, v1

    move-object v6, p1

    move-object/from16 v7, p2

    move v9, v12

    invoke-direct/range {v2 .. v11}, Lorg/telegram/ui/Components/Paint/Views/LocationView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;FIII)V

    .line 1139
    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 1140
    invoke-virtual {v13, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    .line 1142
    :cond_2
    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 1143
    invoke-virtual {v13, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    .line 1145
    :cond_3
    invoke-virtual {v13, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 1146
    invoke-virtual {v13, v12}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setMaxWidth(I)V

    .line 1147
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1149
    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v1

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 1150
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v2, v2

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v2, v1

    neg-float v1, v2

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_4
    if-eqz p3, :cond_5

    .line 1154
    invoke-direct {p0, v13}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 v1, 0x0

    .line 1155
    invoke-direct {p0, v13, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    :cond_5
    return-object v13
.end method

.method private createReactionWidget(Z)Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;
    .locals 8

    .line 3924
    new-instance v0, Lorg/telegram/ui/Components/Size;

    const/16 v1, 0x6a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    .line 3925
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 3928
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_3

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 3931
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 3932
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3933
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 3934
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v6, v4

    .line 3935
    iget v4, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v7, v1, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v4, v7, v5, v6}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v4

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 3936
    iget v3, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lorg/telegram/ui/Components/Point;->x:F

    .line 3937
    iget v3, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lorg/telegram/ui/Components/Point;->y:F

    .line 3938
    iget v3, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/Point;->x:F

    .line 3939
    iget v3, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/Point;->y:F

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    .line 3946
    :cond_3
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Size;)V

    .line 3947
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3948
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_4

    .line 3950
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3951
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_4
    return-object v2
.end method

.method private createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .locals 11

    .line 3897
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;

    move-result-object v0

    .line 3898
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$27;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4200(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4300(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)F

    move-result v5

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;->access$4400(Lorg/telegram/ui/Stories/recorder/PaintView$StickerPosition;)F

    move-result v6

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v7

    move-object v1, v10

    move-object v2, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView$27;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 3904
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3905
    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3907
    :cond_0
    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 3914
    invoke-virtual {v10, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3915
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_1

    .line 3917
    invoke-direct {p0, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3918
    invoke-direct {p0, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    return-object v10
.end method

.method private createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .locals 11

    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTextAdd()V

    .line 1163
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 1164
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 1165
    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v10, 0x41100000    # 9.0f

    div-float/2addr v2, v10

    float-to-int v5, v2

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    const-string v6, ""

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V

    .line 1166
    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float v2, v0, v10

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-float/2addr v0, v10

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda36;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v9, v2, v0, v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMinMaxFontSize(IILjava/lang/Runnable;)V

    .line 1171
    iget v0, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 1172
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    .line 1174
    :cond_0
    iget v0, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1175
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    .line 1177
    :cond_1
    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 1178
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 1179
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    .line 1180
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, -0x2

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1183
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v0

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_2
    if-eqz p1, :cond_3

    .line 1188
    invoke-direct {p0, v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1190
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    const/4 p1, 0x0

    .line 1191
    invoke-direct {p0, v9, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 1192
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1193
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 p1, 0x1

    .line 1194
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    .line 1196
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

    .line 2186
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private duplicateEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3515
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 3517
    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v1, :cond_1

    .line 3518
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v2, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    .line 3519
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3520
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 3522
    :cond_1
    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_2

    .line 3523
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v1, v2, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    .line 3524
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3525
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 3526
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v0, -0x2

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3532
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    .line 3533
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 3534
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private getBarView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1649
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1651
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBarView()Landroid/view/ViewGroup;
    .locals 2

    .line 1558
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

    .line 4046
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4048
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

    .line 4049
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

    .line 4052
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

    .line 4053
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

    .line 2173
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

    .line 2082
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    return-object v0

    .line 2085
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

    .line 3810
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3814
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3815
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_0
    if-lez v3, :cond_2

    .line 3820
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move-wide v8, p2

    move-object v10, p4

    .line 3821
    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 3819
    rem-int/2addr v2, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 3682
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hideEmojiPopup(Z)V
    .locals 3

    .line 4206
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4207
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    :cond_0
    if-eqz p1, :cond_2

    .line 4210
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_1

    .line 4211
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

    .line 4212
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4213
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4217
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isAnimatePopupClosing:Z

    .line 4218
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$30;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 4226
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4227
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 4230
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideEmojiView()V
    .locals 2

    .line 4241
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4242
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 4244
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    const/4 v1, 0x0

    .line 4245
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-eqz v0, :cond_1

    .line 4247
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    :cond_1
    return-void
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 9

    .line 3830
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 3835
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result p1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, v2

    move v2, v1

    .line 3837
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3838
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3839
    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v4, :cond_1

    goto :goto_1

    .line 3843
    :cond_1
    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 3844
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_1

    .line 3848
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 3849
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

    .line 3850
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

    .line 2182
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

.method public static isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    move v1, v0

    .line 2279
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2280
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2281
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeCustomEmoji;

    if-nez v3, :cond_1

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2284
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "video/webm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private synthetic lambda$appearAnimation$52(Landroid/view/View;)V
    .locals 1

    .line 3741
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    .line 3742
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 3743
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$buttonForPopup$37(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 3072
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createText$15()V
    .locals 1

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$detectFaces$28()V
    .locals 9

    const/4 v0, 0x0

    .line 2189
    :try_start_0
    new-instance v1, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 2190
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    .line 2191
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 2192
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v0

    .line 2193
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2194
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "face detection is not operational"

    .line 2195
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2223
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    .line 2200
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

    .line 2203
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2208
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2209
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    .line 2210
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2211
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2212
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/face/Face;

    .line 2213
    new-instance v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->isSidewardOrientation()Z

    move-result v8

    invoke-direct {v6, v5, v7, v4, v8}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    .line 2214
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2215
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2218
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->faces:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 2205
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2223
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2220
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 2223
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_4
    return-void

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    .line 2225
    :cond_5
    throw v1
.end method

.method private synthetic lambda$hideEmojiPopup$55(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 4215
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 7

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 374
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

    .line 375
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 377
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

    .line 378
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 603
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Components/Paint/PersistColorPalette;Ljava/lang/Integer;)V
    .locals 1

    .line 988
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 989
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 990
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    .line 991
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColorPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    const/4 p1, 0x0

    .line 992
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/content/Context;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;Landroid/view/View;)V
    .locals 1

    .line 930
    iget-boolean p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p4, :cond_0

    .line 931
    new-instance p4, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    .line 932
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColor(I)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/Stories/recorder/PaintView$12;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$12;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setPipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    .line 987
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColorListener(Landroidx/core/util/Consumer;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    .line 993
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->show()V

    return-void

    .line 996
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 997
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$12(I)V
    .locals 2

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1009
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    return-void
.end method

.method private synthetic lambda$new$13(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Ljava/lang/Integer;)V
    .locals 9

    .line 1029
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getBottomPadding2()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1032
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    .line 1033
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 1035
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 1036
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1038
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    .line 1039
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1040
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
    aput v6, v5, p2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
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

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    int-to-float p1, p1

    aput p1, v5, p2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    aput v6, v4, p2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    if-eqz v0, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-nez v6, :cond_5

    move v6, v7

    goto :goto_4

    :cond_5
    move v6, v5

    :goto_4
    aput v6, v4, p2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move v7, v5

    :goto_5
    aput v7, v1, p2

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePreviewViewTranslationY()V

    .line 1047
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0xfa

    const-wide/16 v5, 0x15e

    if-eqz v0, :cond_7

    .line 1049
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    .line 1052
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1053
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1055
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    move p1, p2

    .line 1057
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    .line 1058
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v0, :cond_8

    move-wide v7, v5

    goto :goto_8

    :cond_8
    move-wide v7, v3

    :goto_8
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1059
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v0, :cond_9

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_9

    :cond_9
    sget-object v7, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    :goto_9
    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1060
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_a
    if-nez v0, :cond_b

    .line 1064
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    :cond_b
    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 627
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->zoomOut()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 639
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearAll()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    .line 652
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 653
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 655
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 656
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    .line 658
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    .line 659
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 674
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$6(I)V
    .locals 1

    .line 811
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

    .line 858
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 859
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 p1, 0x0

    .line 861
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Integer;)V
    .locals 0

    .line 896
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setNewColor(I)V

    const/4 p1, 0x0

    .line 897
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 0

    .line 908
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 909
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void

    .line 912
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 913
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    return-void

    .line 916
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 917
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    .line 921
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onCancelButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 922
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$38(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 1

    .line 3330
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3331
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    .line 3333
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 3334
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->animatePlusToIcon(I)V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$39(Landroid/view/View;)Z
    .locals 4

    .line 3337
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 3338
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->toggleFillShapes()V

    .line 3339
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result p1

    const/4 v1, 0x0

    .line 3340
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3341
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 3342
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    if-eqz v3, :cond_1

    .line 3343
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 3344
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v3

    .line 3345
    :goto_1
    check-cast v2, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    invoke-virtual {v2, v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;->setIcon(IZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onAddButtonPressed$40()V
    .locals 7

    .line 3325
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 3326
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3327
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 3328
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v4

    .line 3329
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda42;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    invoke-direct {p0, v5, v4, v1, v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/PaintView$PopupButton;

    move-result-object v3

    .line 3336
    new-instance v4, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3351
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

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

.method private synthetic lambda$openStickersView$21()V
    .locals 1

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->facesBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1741
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->detectFaces()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openStickersView$22([ZILandroid/content/DialogInterface;)V
    .locals 0

    const/4 p3, 0x0

    .line 1790
    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    const/4 p3, 0x0

    .line 1791
    aget-boolean p1, p1, p3

    if-eqz p1, :cond_0

    .line 1792
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    .line 1794
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    return-void
.end method

.method private synthetic lambda$openStickersView$23(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 1797
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    const/4 v0, 0x0

    .line 1798
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object p1

    .line 1799
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3fc00000    # 1.5f

    .line 1800
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 1802
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$openStickersView$24(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 1

    const/4 v0, 0x0

    .line 1807
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createLocationSticker(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LocationView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$openStickersView$25([ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)V
    .locals 3

    .line 1805
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1806
    aput-boolean v1, p1, v1

    const/4 p1, 0x0

    .line 1807
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda47;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showLocationAlert(Lorg/telegram/ui/Components/Paint/Views/LocationView;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto :goto_0

    .line 1808
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1809
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    .line 1810
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onGalleryClick()V

    goto :goto_0

    .line 1811
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1812
    aput-boolean v1, p1, v1

    .line 1813
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda51;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showAudioAlert(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 1814
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 1815
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 1816
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createReactionWidget(Z)Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    move-result-object p1

    .line 1817
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$registerRemovalUndo$53(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 3989
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method private synthetic lambda$setCurrentSwatch$36(Ljava/lang/Integer;ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 3004
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 3005
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 3006
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 3007
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setNewColor$14(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1121
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 1124
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$17(Landroid/view/View;)V
    .locals 0

    .line 1606
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1607
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1609
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupTabsLayout$18(Landroid/view/View;)V
    .locals 0

    .line 1618
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$19(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1638
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 1639
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1640
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 1641
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showAudioAlert$27(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1972
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private synthetic lambda$showColorList$34(Landroid/view/View;Z[ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p6, 0x447a0000    # 1000.0f

    div-float/2addr p7, p6

    .line 2933
    iput p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    const/high16 p6, 0x3f800000    # 1.0f

    sub-float p7, p6, p7

    const p8, 0x3ecccccd    # 0.4f

    mul-float/2addr p7, p8

    const p8, 0x3f19999a    # 0.6f

    add-float/2addr p7, p8

    .line 2936
    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleX(F)V

    .line 2937
    invoke-virtual {p1, p7}, Landroid/view/View;->setScaleY(F)V

    const/16 p7, 0x10

    .line 2938
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

    .line 2939
    iget p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-static {p7, v0}, Ljava/lang/Math;->min(FF)F

    move-result p7

    div-float/2addr p7, v0

    sub-float p7, p6, p7

    invoke-virtual {p1, p7}, Landroid/view/View;->setAlpha(F)V

    .line 2941
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setProgress(FZ)V

    .line 2943
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;->setProgress(F)V

    .line 2944
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    iget p8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    invoke-virtual {p7, p8}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;->setProgress(F)V

    .line 2946
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/16 p8, 0x20

    invoke-static {p8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p8

    int-to-float p8, p8

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    mul-float/2addr p8, v0

    invoke-virtual {p7, p8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2947
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardAnimator:Landroid/animation/AnimatorSet;

    const/4 p8, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p7

    if-eqz p7, :cond_0

    .line 2948
    aput-boolean p8, p3, p8

    .line 2950
    :cond_0
    aget-boolean p3, p3, p8

    if-eqz p3, :cond_5

    .line 2951
    iget p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformProgress:F

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sub-float p3, p6, p3

    .line 2952
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

    .line 2953
    iget-object p7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move p6, p8

    :goto_2
    invoke-static {p4, p6, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    invoke-virtual {p7, p4}, Landroid/view/View;->setAlpha(F)V

    .line 2954
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

    .line 2956
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2958
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-ne p1, p2, :cond_6

    .line 2959
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_6
    return-void
.end method

.method private synthetic lambda$showColorList$35(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2963
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 2964
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2967
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2968
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 2969
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showEmojiPopup$54(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4168
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 4169
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$showLocationAlert$26(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1910
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private synthetic lambda$showMenuForEntity$41(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 3377
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3379
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3380
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$42(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 3400
    :try_start_0
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    const p2, 0x1020031

    .line 3401
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3403
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3405
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3406
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$43(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 3413
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 3414
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->editSelectedTextEntity()V

    .line 3415
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3416
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$44(Lorg/telegram/ui/Components/Paint/Views/EntityView;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 2

    .line 3426
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v0, v1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setLocation(ILorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    .line 3427
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showMenuForEntity$45(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    .line 3424
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 3425
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda48;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showLocationAlert(Lorg/telegram/ui/Components/Paint/Views/LocationView;Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 3429
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3430
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$46(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 1

    .line 3439
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3440
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror(Z)V

    goto :goto_0

    .line 3441
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz p2, :cond_1

    .line 3442
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror(Z)V

    goto :goto_0

    .line 3444
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror(Z)V

    .line 3446
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3447
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$47(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 3466
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->duplicateEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3468
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3469
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$48(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 13

    .line 3362
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3363
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3365
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3366
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x10

    .line 3367
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x1

    .line 3368
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 3369
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 3370
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string v6, "fonts/rmedium.ttf"

    .line 3371
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3372
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v2, v7, v1, v8, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 3373
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3374
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3375
    sget v8, Lorg/telegram/messenger/R$string;->PaintDelete:I

    const-string v9, "PaintDelete"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3376
    new-instance v8, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda22;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, -0x2

    const/16 v9, 0x2c

    .line 3383
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3385
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const-string v10, "PaintEdit"

    if-eqz v2, :cond_3

    .line 3386
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3387
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3388
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 3389
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 3390
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 3391
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3392
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3393
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v2, v11, v1, v12, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3394
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3395
    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-boolean v11, v11, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignoring:Z

    if-eqz v11, :cond_1

    :cond_0
    iget v11, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez v11, :cond_2

    :cond_1
    const/4 v10, 0x3

    .line 3396
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3397
    sget v10, Lorg/telegram/messenger/R$string;->Paste:I

    const-string v11, "Paste"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3398
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda19;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3410
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3411
    sget v11, Lorg/telegram/messenger/R$string;->PaintEdit:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3412
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda21;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3420
    :goto_0
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3421
    :cond_3
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz v2, :cond_4

    .line 3422
    sget v2, Lorg/telegram/messenger/R$string;->PaintEdit:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 3423
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda24;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3433
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3436
    :cond_4
    :goto_1
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v2, :cond_5

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v2, :cond_5

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x4

    .line 3437
    sget v10, Lorg/telegram/messenger/R$string;->Flip:I

    const-string v11, "Flip"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->createActionLayoutButton(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 3438
    new-instance v10, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda23;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3450
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3453
    :cond_6
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-nez v2, :cond_7

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-nez v2, :cond_7

    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-nez v2, :cond_7

    .line 3454
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3455
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3456
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 3457
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 3458
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3459
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 3460
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3461
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3462
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x2

    .line 3463
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3464
    sget v3, Lorg/telegram/messenger/R$string;->PaintDuplicate:I

    const-string v4, "PaintDuplicate"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3465
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3472
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    move p1, v1

    .line 3475
    :goto_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_c

    .line 3476
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3477
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x8

    if-nez p1, :cond_8

    move v6, v4

    goto :goto_3

    :cond_8
    move v6, v1

    .line 3479
    :goto_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne p1, v7, :cond_9

    move v7, v4

    goto :goto_4

    :cond_9
    move v7, v1

    .line 3480
    :goto_4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v5

    if-ne p1, v9, :cond_a

    move v9, v4

    goto :goto_5

    :cond_a
    move v9, v1

    :goto_5
    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move v4, v1

    .line 3477
    :goto_6
    invoke-static {v3, v6, v7, v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 3485
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 3487
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3488
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3489
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3490
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showPopup$49(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3624
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 3625
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3626
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3627
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

    .line 3628
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$50(Landroid/view/KeyEvent;)V
    .locals 2

    .line 3635
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

    .line 3636
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$51()V
    .locals 1

    .line 3655
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method private synthetic lambda$showReactionsLayout$16(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1491
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    .line 1492
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$32(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    .line 2891
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    .line 2892
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2893
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 2894
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2896
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getTypefaceCell()Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$33(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2899
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 2900
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2903
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2905
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->setMaskProvider(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$shutdown$29()V
    .locals 1

    .line 2236
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2238
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchTab$20(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1674
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionProgress:F

    .line 1675
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1676
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1677
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p3, 0x0

    .line 1679
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge p3, v0, :cond_2

    .line 1680
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

    .line 1682
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

    .line 1686
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1687
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    const/16 v4, 0x10

    .line 1688
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1689
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr p3, v1

    add-float/2addr p3, v2

    .line 1692
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 1693
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 1694
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr p1, p3

    div-float/2addr p1, v6

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1695
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$updateTextDim$56(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 4322
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private openStickersView()V
    .locals 9

    .line 1737
    iget v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    const/4 v7, 0x1

    .line 1738
    invoke-direct {p0, v7}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 1739
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1744
    new-instance v8, Lorg/telegram/ui/Stories/recorder/PaintView$22;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideo:Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v8

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/PaintView$22;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 1786
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->setBlurDelegate(Lorg/telegram/messenger/Utilities$Callback2;)V

    new-array v0, v7, [Z

    const/4 v1, 0x0

    aput-boolean v7, v0, v1

    .line 1789
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, v6}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;[ZI)V

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1796
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenDocumentSelected(Lorg/telegram/messenger/Utilities$Callback3;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 1804
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, v0, v8}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;[ZLorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->whenWidgetSelected(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    .line 1820
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1821
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Stories/recorder/PaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3989
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2

    .line 3963
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 3964
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    const/4 v0, 0x0

    .line 3965
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 3967
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    .line 3968
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-eqz v1, :cond_0

    .line 3969
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3971
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 3974
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 3976
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    .line 3979
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 3980
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 3981
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 3982
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1256
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    move-result p1

    return p1
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 6

    .line 1263
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

    .line 1264
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    if-eq v3, v1, :cond_2

    .line 1265
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1267
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz v3, :cond_3

    .line 1268
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    .line 1270
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    :cond_4
    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 1276
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

    .line 1288
    :cond_6
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 1289
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1291
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 1293
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    .line 1294
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1297
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p2, :cond_11

    if-ne p2, p1, :cond_f

    .line 1299
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hadMultitouch()Z

    move-result p2

    if-nez p2, :cond_e

    .line 1300
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz p2, :cond_9

    .line 1301
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->getType()I

    move-result p2

    add-int/2addr p2, v3

    rem-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setType(I)V

    goto :goto_1

    .line 1302
    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-nez p2, :cond_d

    .line 1303
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_a

    .line 1304
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    .line 1305
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->editSelectedTextEntity()V

    goto :goto_1

    .line 1306
    :cond_a
    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz p2, :cond_c

    .line 1307
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    .line 1308
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-ne v0, p1, :cond_b

    .line 1309
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->changeStyle(Z)V

    goto :goto_1

    .line 1311
    :cond_b
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayoutForView(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;)V

    goto :goto_1

    .line 1314
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    .line 1316
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_e

    .line 1317
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1318
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    :cond_e
    :goto_1
    return v3

    .line 1323
    :cond_f
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 1324
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_10

    .line 1325
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    if-nez v0, :cond_10

    .line 1327
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    .line 1328
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1329
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    :cond_10
    move p2, v3

    goto :goto_2

    :cond_11
    move p2, v2

    .line 1336
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1337
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1338
    instance-of p1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_12

    .line 1339
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1340
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1341
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1345
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p1, :cond_14

    .line 1346
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    .line 1347
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1349
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_13

    .line 1350
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1351
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v0, p2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1352
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->disableAutoresize(Z)V

    .line 1353
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1355
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget p2, p2, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$14;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$14;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1368
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    goto :goto_3

    .line 1370
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1371
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1372
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1373
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_3

    .line 1378
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_15

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-eqz v0, :cond_15

    .line 1379
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1381
    :cond_15
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz p1, :cond_16

    .line 1382
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    .line 1384
    :cond_16
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 1386
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1387
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1388
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1389
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    move v3, p2

    .line 1391
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateTextDim()V

    return v3
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2983
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;)V

    return-void
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;)V
    .locals 3

    .line 2987
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eq v0, p1, :cond_0

    .line 2988
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2989
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    .line 2990
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2992
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 2993
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    .line 2996
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    .line 2997
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    if-eqz p2, :cond_2

    .line 3000
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p2, p2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-eqz p3, :cond_1

    .line 3001
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3002
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3003
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Ljava/lang/Integer;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3010
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3011
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    .line 3012
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3016
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p3, :cond_3

    .line 3017
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    new-instance p3, Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {p3, v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    goto :goto_1

    .line 3018
    :cond_3
    instance-of p3, p2, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz p3, :cond_4

    .line 3019
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setColor(I)V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setNewColor(I)V
    .locals 4

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 1116
    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const/4 v2, 0x1

    .line 1117
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1119
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1120
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;II)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1126
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

    .line 3287
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

    .line 3303
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 3304
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_6

    if-eq p2, v1, :cond_4

    const/4 v0, 0x3

    if-eq p2, v2, :cond_3

    .line 3309
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_5

    :cond_2
    move v2, v0

    goto :goto_1

    .line 3315
    :cond_3
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    .line 3318
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

    .line 3252
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    .line 3253
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 3254
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 3256
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTextType(I)V

    .line 3257
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    return-void
.end method

.method private setupEntities()V
    .locals 14

    .line 2096
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 2098
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->initialEntities:Ljava/util/ArrayList;

    .line 2099
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    .line 2100
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 2102
    iget-byte v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-nez v5, :cond_1

    .line 2103
    iget-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    iget-object v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v5, v8, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object v5

    .line 2104
    iget-byte v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 2105
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 2108
    :cond_0
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2109
    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2110
    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_1
    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 2112
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    move-result-object v5

    .line 2113
    iget-byte v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 2114
    iget-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    .line 2115
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setBaseFontSize(I)V

    .line 2116
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2117
    iget-object v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 2118
    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    invoke-direct {v10, v11, v12, v6, v13}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    iget v11, v9, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v9, v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v11, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2121
    :cond_2
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontSize()F

    move-result v9

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v7, v8, v9, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2122
    instance-of v8, v7, Landroid/text/Spanned;

    if-eqz v8, :cond_3

    .line 2123
    move-object v8, v7

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v8, v2, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v8, :cond_3

    move v9, v2

    .line 2125
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_3

    .line 2126
    aget-object v10, v8, v9

    const v11, 0x3f59999a    # 0.85f

    iput v11, v10, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2130
    :cond_3
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-direct {p0, v5, v7}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 2132
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v7

    .line 2133
    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v8, v7, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2134
    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    goto :goto_3

    :cond_4
    if-ne v5, v7, :cond_6

    .line 2137
    iget-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {p0, v5, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object v5

    .line 2138
    iget-byte v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 2139
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror()V

    .line 2142
    :cond_5
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2143
    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2144
    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_6
    const/4 v7, 0x3

    if-ne v5, v7, :cond_7

    .line 2146
    iget-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-direct {p0, v5, v7, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->createLocationSticker(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;Z)Lorg/telegram/ui/Components/Paint/Views/LocationView;

    move-result-object v5

    .line 2147
    iget-byte v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->setType(II)V

    goto :goto_3

    :cond_7
    const/4 v7, 0x4

    if-ne v5, v7, :cond_a

    .line 2150
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->createReactionWidget(Z)Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    move-result-object v5

    .line 2151
    iget-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->setCurrentReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    .line 2152
    iget-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-boolean v7, v7, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    if-eqz v7, :cond_8

    .line 2153
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror(Z)V

    .line 2155
    :cond_8
    iget-object v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-boolean v7, v7, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    if-eqz v7, :cond_9

    .line 2156
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->changeStyle(Z)V

    .line 2162
    :cond_9
    :goto_3
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->w:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v8, v8

    iget v9, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setX(F)V

    .line 2163
    iget v7, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->h:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v8, v8

    iget v10, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    sub-float/2addr v6, v10

    mul-float/2addr v8, v6

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setY(F)V

    .line 2164
    new-instance v6, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    iget v8, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    iget v10, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    add-float/2addr v8, v10

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 2165
    iget v6, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 2166
    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v4, v4

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v4, v6

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2168
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method private setupTabsLayout(Landroid/content/Context;)V
    .locals 14

    .line 1562
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$20;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1592
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1594
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

    .line 1596
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    .line 1597
    sget v2, Lorg/telegram/messenger/R$string;->PhotoEditorDraw:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1599
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v1, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1600
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1603
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1604
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1605
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda13;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawTab:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    .line 1615
    sget v9, Lorg/telegram/messenger/R$string;->PhotoEditorSticker:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1617
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v0, v1, v9, v1, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda15;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    .line 1628
    sget p1, Lorg/telegram/messenger/R$string;->PhotoEditorText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1629
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getThemedColor(I)I

    move-result v0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1630
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1631
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1632
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1633
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1634
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1635
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1636
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 1637
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1644
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showAudioAlert(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1918
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$25;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$25;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/os/Bundle;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 1964
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1965
    aget-object p1, v0, v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$26;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    .line 1971
    aget-object p1, v0, v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1974
    aget-object p1, v0, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryAudioPicker()V

    .line 1975
    aget-object p1, v0, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 1976
    aget-object p1, v0, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    return-void
.end method

.method private showColorList(Z)V
    .locals 10

    .line 2914
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eq v0, p1, :cond_5

    .line 2915
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    .line 2917
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2918
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2921
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

    .line 2922
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    move v2, v3

    .line 2923
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2924
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2925
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2922
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 2927
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

    .line 2928
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    .line 2929
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    .line 2931
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2932
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda34;

    move-object v1, v9

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Z[ZFF)V

    invoke-virtual {v0, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2962
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2973
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p1, :cond_5

    .line 2976
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2977
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColorPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    :cond_5
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 4121
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 4122
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createEmojiView()V

    .line 4124
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 4126
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    .line 4127
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 4129
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    const/16 v4, 0x96

    const/16 v5, 0xc8

    if-gtz v3, :cond_2

    .line 4130
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4131
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    goto :goto_1

    .line 4133
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const-string v7, "kbd_height"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    .line 4136
    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    if-gtz v3, :cond_4

    .line 4137
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4138
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_2

    .line 4140
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const-string v5, "kbd_height_land3"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    .line 4143
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

    .line 4145
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 4146
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4147
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4148
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v4, :cond_6

    .line 4149
    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v2

    .line 4150
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4153
    :cond_6
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 4154
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 4155
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 4157
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4159
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    :cond_7
    if-nez p1, :cond_e

    .line 4163
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    .line 4164
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    goto :goto_4

    :cond_8
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 4166
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    int-to-float v2, v2

    aput v2, p1, v0

    const/4 v0, 0x0

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4167
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4171
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$29;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$29;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 4177
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4178
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4179
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 4184
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 4186
    sget-object v3, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 4188
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_c

    .line 4190
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    .line 4191
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_c

    :cond_b
    const/16 v2, 0x8

    .line 4192
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_c
    if-nez p1, :cond_d

    .line 4196
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 4197
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 4199
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 4202
    :cond_e
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method private showLocationAlert(Lorg/telegram/ui/Components/Paint/Views/LocationView;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Components/Paint/Views/LocationView;",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/tl/TL_stories$MediaArea;",
            ">;)V"
        }
    .end annotation

    .line 1829
    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$23;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0, p2}, Lorg/telegram/ui/Stories/recorder/PaintView$23;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/os/Bundle;Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1896
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PaintView$24;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$24;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    if-eqz p1, :cond_0

    .line 1902
    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/LocationView;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    if-eqz p1, :cond_0

    .line 1903
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v7, v0, v1, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryLocationPicker(DD)V

    goto :goto_0

    .line 1904
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->fileFromGallery:Z

    if-eqz p1, :cond_1

    .line 1905
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideo:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->file:Ljava/io/File;

    invoke-virtual {v7, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryLocationPicker(ZLjava/io/File;)V

    goto :goto_0

    .line 1907
    :cond_1
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->setStoryLocationPicker()V

    .line 1909
    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v7, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1912
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    .line 1913
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 9

    .line 3357
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 3358
    aget v6, v0, v1

    const/4 v1, 0x1

    .line 3359
    aget v0, v0, v1

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v7, v0, v1

    .line 3361
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda43;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v5, 0x33

    const/4 v8, 0x1

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;IIIZ)V

    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;IIIZ)V
    .locals 5

    .line 3614
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3615
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 3619
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3620
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupRect:Landroid/graphics/Rect;

    .line 3621
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    .line 3622
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 3623
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3634
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 3639
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 3641
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    iput-boolean p6, v0, Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;->enableBounce:Z

    .line 3643
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    .line 3644
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3646
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    if-nez p1, :cond_2

    .line 3647
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 3648
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 3649
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3650
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3651
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3652
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3653
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 3654
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3655
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3658
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

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

    .line 3660
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    and-int/lit8 p1, p3, 0x30

    if-eqz p1, :cond_3

    .line 3663
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr p4, p1

    .line 3664
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    .line 3666
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3667
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    .line 3669
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p6, :cond_4

    .line 3671
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    new-instance p3, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object p6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v0, 0x5

    invoke-direct {p3, p6, p2, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    int-to-float p4, p4

    int-to-float p5, p5

    const p6, 0x4104cccd    # 8.3f

    .line 3673
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p6

    invoke-virtual {p3, p4, p5, p1, p6}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3671
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3676
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3677
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->popupLayout:Lorg/telegram/ui/Stories/recorder/PaintView$PopupWindowLayout;

    const p2, -0xd7d7d7

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private showReactionsLayoutForView(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;)V
    .locals 12

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Stories/recorder/PaintView$15;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$15;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1407
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 1408
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    .line 1409
    iput v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    .line 1411
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1412
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v5, 0x2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    new-instance v9, Lorg/telegram/ui/Stories/recorder/PaintView$16;

    new-instance v4, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v4}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-direct {v9, p0, v4}, Lorg/telegram/ui/Stories/recorder/PaintView$16;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 1418
    new-instance v4, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-direct {v4, v5, v0, v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v5, 0x16

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v6, v2, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v5, -0x2

    const/16 v6, 0x60

    const/16 v7, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v11, 0x40

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x1000000

    const/16 v5, 0x78

    .line 1422
    invoke-static {v2, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1423
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/PaintView$17;

    invoke-direct {v5, p0, v4, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$17;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1467
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1468
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    .line 1469
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    return-void
.end method

.method private showTypefaceMenu(Z)V
    .locals 5

    .line 2872
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    if-eq v0, p1, :cond_4

    .line 2873
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isTypefaceMenuShown:Z

    .line 2875
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2876
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2879
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

    .line 2880
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2881
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2882
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2883
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2880
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    .line 2886
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2887
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2890
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2898
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2908
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 16

    move-object/from16 v0, p0

    .line 3539
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v2, 0x43480000    # 200.0f

    if-eqz v1, :cond_0

    .line 3540
    iget v3, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v3

    :cond_0
    const v3, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_1

    .line 3544
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 3545
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 3546
    new-instance v3, Lorg/telegram/ui/Components/Point;

    iget v4, v1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v4, v2

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v1, v2

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v3

    :cond_1
    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v1, :cond_2

    .line 3550
    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v4, v1

    .line 3552
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xa

    if-ge v6, v7, :cond_7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3555
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 3556
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3557
    instance-of v10, v9, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v10, :cond_3

    move v15, v6

    goto :goto_2

    .line 3560
    :cond_3
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v10

    .line 3561
    iget v11, v10, Lorg/telegram/ui/Components/Point;->x:F

    iget v12, v1, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v10, v10, Lorg/telegram/ui/Components/Point;->y:F

    iget v15, v1, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v10, v15

    move v15, v6

    float-to-double v5, v10

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_4

    .line 3563
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/4 v8, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v6, v15

    goto :goto_1

    :cond_5
    move v15, v6

    if-nez v8, :cond_6

    goto :goto_3

    .line 3571
    :cond_6
    new-instance v5, Lorg/telegram/ui/Components/Point;

    iget v6, v1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v6, v2

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v1, v2

    invoke-direct {v5, v6, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    add-int/lit8 v6, v15, 0x1

    move-object v1, v5

    goto :goto_0

    :cond_7
    :goto_3
    return-object v1
.end method

.method private switchTab(I)V
    .locals 6

    .line 1656
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    if-eq v0, p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1659
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1660
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1663
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectedIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object v0

    .line 1664
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsNewSelectedIndex:I

    .line 1665
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBarView(I)Landroid/view/View;

    move-result-object v1

    .line 1667
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setInTextMode(Z)V

    .line 1668
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 1669
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    new-array v2, v4, [F

    .line 1671
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    .line 1672
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1673
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1698
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/PaintView$21;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$21;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1731
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
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

    .line 4328
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v0, :cond_2

    .line 4329
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4330
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 4331
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    .line 4332
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 4334
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    .line 4338
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

    .line 4340
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoAllButton:Landroid/widget/TextView;

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 4341
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoButton:Landroid/widget/ImageView;

    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 4343
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v2, v0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 4344
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method

.method private updatePreviewViewTranslationY()V
    .locals 7

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1084
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 1088
    :cond_1
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 1089
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

    .line 1090
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

    .line 1088
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x15e

    .line 1092
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->previewViewTranslationAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateTextDim()V
    .locals 3

    .line 4317
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

    .line 4318
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4319
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4320
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

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4324
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 4059
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public appearAnimation(Landroid/view/View;)V
    .locals 4

    .line 3736
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    .line 3737
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    mul-float/2addr v2, v1

    .line 3738
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    .line 3739
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3740
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

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3745
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected checkAudioPermission(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public clearAll()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_1

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 1208
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 1210
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_2

    .line 1211
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->clearAll()V

    .line 1213
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->reset()V

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 2669
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method protected createEmojiView()V
    .locals 13

    .line 4348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 4349
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4350
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 4352
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 4355
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

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    .line 4356
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    const/4 v1, 0x1

    .line 4357
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    .line 4358
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 4359
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4360
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 4362
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$31;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 4494
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;
    .locals 10

    const/4 v0, 0x1

    .line 3859
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 3860
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->basePhotoSize(Ljava/lang/String;)Lorg/telegram/ui/Components/Size;

    move-result-object v6

    .line 3861
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 3862
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v0, :cond_0

    .line 3863
    iget v0, v6, Lorg/telegram/ui/Components/Size;->width:F

    .line 3864
    iget v2, v6, Lorg/telegram/ui/Components/Size;->height:F

    iput v2, v6, Lorg/telegram/ui/Components/Size;->width:F

    .line 3865
    iput v0, v6, Lorg/telegram/ui/Components/Size;->height:F

    .line 3867
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;II)V

    .line 3868
    iget-object p1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 3871
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3872
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 3874
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3875
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_1
    return-object v0
.end method

.method public createPhoto(Lorg/telegram/tgnet/TLObject;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;
    .locals 8

    const/4 v0, 0x1

    .line 3881
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 3882
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->basePhotoSize(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/Size;

    move-result-object v6

    .line 3883
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLObject;)V

    .line 3884
    iget-object p1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 3887
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 3888
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 3890
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 3891
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-object v0
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

    .line 1526
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

    .line 1527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->inBubbleMode:Z

    if-nez v0, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1530
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 1533
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1534
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1535
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

    .line 1542
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

    .line 1543
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1544
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

    .line 1545
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

    .line 1547
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

    .line 1550
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_5

    .line 1552
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return p2
.end method

.method protected editSelectedTextEntity()V
    .locals 2

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1235
    :cond_0
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x1

    .line 1236
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    .line 1238
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    .line 1239
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1241
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getAdditionalBottom()I
    .locals 1

    const/16 v0, 0x18

    .line 2695
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getAdditionalTop()I
    .locals 1

    const/16 v0, 0x30

    .line 2690
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/util/ArrayList;IIZZZ)Landroid/graphics/Bitmap;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;IIZZZ)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    .line 2299
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move/from16 v5, p6

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_2

    .line 2301
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 2310
    :goto_1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    .line 2311
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 2314
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_29

    .line 2317
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2318
    instance-of v0, v8, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_4

    move v14, v6

    move/from16 v18, v7

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 2321
    :cond_4
    move-object v0, v8

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 2322
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    .line 2323
    new-instance v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v9}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    if-eqz v2, :cond_24

    .line 2325
    instance-of v14, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v13, 0x1

    if-eqz v14, :cond_f

    .line 2326
    iput-byte v13, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 2327
    move-object v14, v0

    check-cast v14, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 2328
    invoke-virtual {v14}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 2329
    instance-of v3, v11, Landroid/text/Spanned;

    if-eqz v3, :cond_e

    .line 2330
    move-object v3, v11

    check-cast v3, Landroid/text/Spanned;

    .line 2331
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v3, v4, v10, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v10, :cond_e

    move v12, v4

    .line 2333
    :goto_3
    array-length v4, v10

    if-ge v12, v4, :cond_e

    .line 2334
    aget-object v4, v10, v12

    .line 2335
    iget-object v15, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v15, :cond_5

    .line 2337
    iget v15, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    move-object/from16 v17, v14

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v13

    invoke-static {v15, v13, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v15

    goto :goto_4

    :cond_5
    move-object/from16 v17, v14

    :goto_4
    if-eqz v15, :cond_6

    .line 2340
    iget v13, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v13

    invoke-virtual {v13, v15}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2343
    :cond_6
    new-instance v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v13}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    move v14, v6

    move/from16 v18, v7

    .line 2344
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v6

    iput-wide v6, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 2345
    iput-object v15, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2346
    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iput v6, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 2347
    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    iget v6, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v4, v6

    iput v4, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 2348
    iget v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v15, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    const/4 v4, 0x0

    :goto_5
    if-eqz v15, :cond_8

    .line 2350
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/io/File;

    iget-object v7, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2351
    iget v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v3

    const/4 v3, 0x1

    invoke-virtual {v6, v7, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    add-int/2addr v4, v3

    .line 2353
    iget-object v6, v15, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v3, v19

    goto :goto_5

    :cond_8
    move-object/from16 v19, v3

    const/4 v3, 0x1

    .line 2357
    :goto_6
    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2358
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2359
    :cond_9
    iget-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x4

    :goto_7
    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    .line 2361
    :cond_b
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2362
    iget-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    iput-byte v3, v13, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    .line 2364
    :cond_c
    iget-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1388

    if-eqz v15, :cond_d

    .line 2369
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 2370
    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v13, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v13, v6}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    :cond_d
    add-int/lit8 v12, v12, 0x1

    move v6, v14

    move-object/from16 v14, v17

    move/from16 v7, v18

    move-object/from16 v3, v19

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_e
    move/from16 v18, v7

    move-object/from16 v17, v14

    move v14, v6

    .line 2376
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 2377
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 2378
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 2379
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTextSize()I

    move-result v3

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 2380
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 2381
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result v3

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    goto/16 :goto_c

    :cond_f
    move v14, v6

    move/from16 v18, v7

    const-wide/16 v3, 0x1388

    .line 2382
    instance-of v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    .line 2383
    iput-byte v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 2384
    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 2385
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v7

    .line 2386
    iget v10, v7, Lorg/telegram/ui/Components/Size;->width:F

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 2387
    iget v7, v7, Lorg/telegram/ui/Components/Size;->height:F

    iput v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 2388
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iput-object v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2389
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getParentObject()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 2390
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    .line 2391
    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v7, v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 2392
    invoke-static {v7, v11}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2393
    :cond_10
    invoke-static {v7, v11}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v10

    .line 2394
    iget-byte v11, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v10, :cond_11

    const/16 v16, 0x1

    goto :goto_8

    :cond_11
    const/16 v16, 0x4

    :goto_8
    or-int v11, v11, v16

    int-to-byte v11, v11

    iput-byte v11, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-nez v10, :cond_13

    .line 2396
    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_9

    :cond_12
    move-wide v15, v3

    goto :goto_a

    .line 2397
    :cond_13
    :goto_9
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getDuration()J

    move-result-wide v15

    :goto_a
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-eqz v3, :cond_14

    .line 2402
    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 2403
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->lcm:Ljava/math/BigInteger;

    .line 2406
    :cond_14
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, -0x1

    .line 2407
    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 2408
    iget-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 2410
    :cond_15
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2411
    iget-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    goto/16 :goto_c

    :cond_16
    const/4 v4, 0x2

    goto/16 :goto_c

    :cond_17
    const/4 v4, 0x2

    .line 2413
    instance-of v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    if-eqz v3, :cond_18

    .line 2414
    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    .line 2415
    iput-byte v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 2416
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    .line 2417
    iget v6, v4, Lorg/telegram/ui/Components/Size;->width:F

    iput v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 2418
    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 2419
    iget v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getPath(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 2420
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->isMirrored()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2421
    iget-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    goto/16 :goto_c

    .line 2423
    :cond_18
    instance-of v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-eqz v3, :cond_1d

    .line 2424
    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    const/4 v4, 0x3

    .line 2425
    iput-byte v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 2426
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->getType()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 2427
    iget-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 2428
    iget-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 2429
    iget-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 2430
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/LocationView;->getColor()I

    move-result v4

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 2431
    iget-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v4, v4, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    .line 2432
    iget-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2433
    iget-object v4, v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iput-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 2434
    new-instance v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    .line 2435
    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getCountryCodeEmojiDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 2437
    new-instance v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v4}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    .line 2438
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 2439
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2440
    iget v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    .line 2441
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v7}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    if-nez v3, :cond_19

    .line 2442
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2443
    :cond_19
    iget-byte v6, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v3, :cond_1a

    move v3, v7

    goto :goto_b

    :cond_1a
    const/4 v3, 0x4

    :goto_b
    or-int/2addr v3, v6

    int-to-byte v3, v3

    iput-byte v3, v4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    .line 2445
    :cond_1b
    iget-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_c
    const/4 v13, 0x0

    goto :goto_d

    :cond_1d
    const/4 v7, 0x1

    .line 2447
    instance-of v3, v0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v3, :cond_3

    .line 2449
    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    const/4 v4, 0x4

    .line 2450
    iput-byte v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 2451
    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;-><init>()V

    iput-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 2452
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getCurrentReaction()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->toTLReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 2453
    iget-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->isDark()Z

    move-result v6

    iput-boolean v6, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    .line 2454
    iget-object v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->isMirrored()Z

    move-result v3

    iput-boolean v3, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    .line 2455
    iget-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    move v13, v7

    .line 2459
    :goto_d
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 2461
    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 2462
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v6

    .line 2463
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v7

    .line 2464
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 2465
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 2466
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 2467
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 2468
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v3

    mul-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    add-float/2addr v10, v6

    iget-object v15, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v10, v15

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 2469
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v15, v11, v4

    mul-float/2addr v10, v15

    div-float/2addr v10, v12

    add-float/2addr v10, v7

    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 2470
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v10

    neg-float v10, v10

    float-to-double v10, v10

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v10, v15

    double-to-float v10, v10

    iput v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 2472
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v6, v10

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    iput v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 2473
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    add-float/2addr v7, v6

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v7, v6

    iput v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 2474
    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v6, v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 2475
    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v6, v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 2476
    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 2478
    instance-of v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v6, :cond_1f

    .line 2479
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageAspectRatio()F

    move-result v0

    .line 2480
    iget v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 2481
    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v7, v6

    add-float/2addr v4, v7

    .line 2482
    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v10, v0, v7

    if-lez v10, :cond_1e

    .line 2485
    iget v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr v3, v6

    div-float/2addr v3, v0

    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 2486
    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v4, v3

    .line 2487
    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    goto :goto_e

    :cond_1e
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v7, v0, v4

    if-gez v7, :cond_20

    .line 2489
    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v4, v6

    mul-float/2addr v4, v0

    iput v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 2490
    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v0, v6

    iput v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    .line 2491
    iput v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    goto :goto_e

    .line 2493
    :cond_1f
    instance-of v6, v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    if-nez v6, :cond_21

    instance-of v7, v0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v7, :cond_20

    goto :goto_f

    :cond_20
    :goto_e
    move/from16 p6, v13

    goto/16 :goto_11

    .line 2494
    :cond_21
    :goto_f
    iget-object v7, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v11, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float v15, v11, v12

    add-float/2addr v10, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v10, v15

    move/from16 p6, v13

    float-to-double v12, v10

    iput-wide v12, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->x:D

    .line 2495
    iget v10, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v12, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v10, v12

    mul-float/2addr v10, v15

    float-to-double v12, v10

    iput-wide v12, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->y:D

    if-eqz v6, :cond_22

    .line 2497
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v6, v6, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    const/4 v10, 0x2

    mul-int/2addr v6, v10

    int-to-float v6, v6

    mul-float/2addr v6, v3

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    sub-float/2addr v11, v6

    mul-float/2addr v11, v15

    float-to-double v10, v11

    iput-wide v10, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->w:D

    .line 2498
    iget-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationView;->marker:Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    const/4 v7, 0x2

    mul-int/2addr v0, v7

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    sub-float/2addr v6, v0

    mul-float/2addr v6, v15

    float-to-double v6, v6

    iput-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->h:D

    goto :goto_10

    .line 2499
    :cond_22
    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v4, :cond_23

    .line 2500
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getPadding()I

    move-result v4

    const/4 v6, 0x2

    mul-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 2501
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getPadding()I

    move-result v0

    mul-int/2addr v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 2502
    iget-object v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget v6, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v15

    float-to-double v6, v6

    iput-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->w:D

    .line 2503
    iget v4, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    sub-float/2addr v4, v0

    mul-float/2addr v4, v15

    float-to-double v6, v4

    iput-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->h:D

    .line 2505
    :cond_23
    :goto_10
    iget-object v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v3, v3

    float-to-double v3, v3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v6

    iput-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->rotation:D

    :goto_11
    move/from16 v6, p6

    goto :goto_12

    :cond_24
    move v14, v6

    move/from16 v18, v7

    const/4 v6, 0x0

    :goto_12
    if-eqz p5, :cond_3

    if-eqz v5, :cond_3

    .line 2509
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2510
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v0, v4

    const/4 v7, 0x0

    const/4 v10, 0x2

    :goto_13
    if-ge v7, v10, :cond_3

    if-nez v7, :cond_25

    move-object v11, v3

    goto :goto_14

    :cond_25
    const/4 v11, 0x0

    :goto_14
    if-eqz v11, :cond_28

    if-nez v7, :cond_26

    if-eqz v6, :cond_26

    goto/16 :goto_17

    .line 2516
    :cond_26
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 2517
    invoke-virtual {v11, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2518
    iget v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget-object v12, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v0, v12

    iget v12, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget-object v13, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-virtual {v11, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2519
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v12

    invoke-virtual {v11, v0, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2520
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v12, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v15

    div-float/2addr v12, v15

    iget-object v15, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v12, v15

    iget v15, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v15, v13

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v16

    div-float v15, v15, v16

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v15, v10

    invoke-virtual {v11, v0, v12, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2522
    instance-of v0, v8, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_27

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_27

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_27

    .line 2523
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float/2addr v0, v10

    float-to-int v0, v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v12

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 2524
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v10, v12}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2525
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2526
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-virtual {v15, v13, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2527
    invoke-virtual {v8, v15}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2528
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v1, v13, v1

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v16

    div-float v2, v13, v16

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2529
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v11, v12, v2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2531
    :try_start_0
    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2533
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2535
    :goto_15
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_16

    :cond_27
    const/4 v2, 0x0

    const/4 v10, 0x3

    const/high16 v13, 0x3f800000    # 1.0f

    .line 2537
    invoke-virtual {v8, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2539
    :goto_16
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18

    :cond_28
    :goto_17
    const/4 v2, 0x0

    const/4 v10, 0x3

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_18
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_13

    :goto_19
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v6, v14

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_29
    return-object v5
.end method

.method public getBlurBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 2552
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBottomLayout()Landroid/view/View;
    .locals 1

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCancelView()Landroid/view/View;
    .locals 1

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    return-object v0
.end method

.method public getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
    .locals 3

    .line 4039
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Point;->x:F

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 4040
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 4041
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pos:[I

    return-object p1
.end method

.method public getCropRotation()F
    .locals 2

    .line 4064
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

    .line 2567
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    return-object v0
.end method

.method public getEntitiesView()Landroid/view/View;
    .locals 1

    .line 2712
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    return-object v0
.end method

.method public getLcm()J
    .locals 2

    .line 2562
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

    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_8

    .line 2795
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2796
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v5, :cond_2

    .line 2797
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v2, :cond_0

    .line 2799
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2801
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 2802
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2803
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2804
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v4, :cond_1

    new-array v4, v1, [B

    .line 2806
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 2808
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2809
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_7

    .line 2810
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 2811
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2812
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 2813
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

    .line 2815
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 2816
    aget-object v6, v4, v5

    if-eqz v6, :cond_6

    .line 2819
    iget-object v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    goto :goto_2

    .line 2822
    :cond_3
    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    if-nez v2, :cond_4

    .line 2827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2829
    :cond_4
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 2830
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2831
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2832
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v7, :cond_5

    new-array v7, v1, [B

    .line 2834
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 2836
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

    .line 2262
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

    .line 2660
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

    .line 2708
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    return-object v0
.end method

.method public getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 1

    .line 2700
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object v0
.end method

.method public getSelectionEntitiesView()Landroid/view/View;
    .locals 1

    .line 2716
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTextDimView()Landroid/view/View;
    .locals 1

    .line 2704
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->textDim:Landroid/view/View;

    return-object v0
.end method

.method public getTopLayout()Landroid/view/View;
    .locals 1

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTransformedTouch(FF[F)V
    .locals 3

    .line 4021
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 4025
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    .line 4029
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 4030
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 4031
    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 4032
    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/4 p2, 0x0

    .line 4033
    aput v1, p3, p2

    const/4 p2, 0x1

    .line 4034
    aput p1, p3, p2

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$getView(Lorg/telegram/ui/Components/IPhotoPaintView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWeightChooserView()Landroid/view/View;
    .locals 1

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object v0
.end method

.method public hasBlur()Z
    .locals 1

    .line 2548
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    return v0
.end method

.method public hasChanges()Z
    .locals 1

    .line 2274
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

    .line 2090
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2091
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public measureKeyboardHeight()I
    .locals 2

    .line 4253
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->getKeyboardHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getBottomPadding2()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onAddButtonPressed(Landroid/view/View;)V
    .locals 7

    .line 3324
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    .line 3353
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/16 v3, 0x35

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p0

    .line 3324
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;IIIZ)V

    return-void
.end method

.method public onAnimationStateChanged(Z)V
    .locals 2

    .line 1099
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

    .line 4504
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    .line 4505
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onAudioSelect(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 3025
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3026
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3027
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissWindow()V

    goto :goto_0

    .line 3029
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    :goto_0
    return v2

    .line 3033
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->isColorListShown:Z

    if-eqz v0, :cond_2

    .line 3034
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return v2

    .line 3038
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_3

    .line 3039
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiPopup(Z)V

    return v2

    .line 3043
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->editingText:Z

    if-eqz v0, :cond_5

    .line 3044
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    if-eqz v0, :cond_4

    .line 3045
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    .line 3046
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    return v1

    :cond_4
    const/4 v0, 0x0

    .line 3049
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return v2

    :cond_5
    return v1
.end method

.method public onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 3

    .line 2849
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2852
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    goto :goto_1

    .line 2850
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    .line 2854
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setDrawCenter(Z)V

    .line 2855
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_2

    .line 2856
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreToolChangeAnimationOnce:Z

    .line 2858
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 2859
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2860
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentColor()I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2861
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2862
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;ZLjava/lang/Integer;)V

    .line 2863
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCleanupEntities()V
    .locals 1

    .line 2557
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public onColorPickerSelected()V
    .locals 1

    const/4 v0, 0x1

    .line 3058
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showColorList(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 4510
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->destroyed:Z

    .line 4511
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    .line 4512
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4513
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 4515
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEmojiButtonClick()V
    .locals 1

    .line 4110
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    .line 4111
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 4112
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    .line 4113
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 4114
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 4116
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    return-void
.end method

.method public onEntityDragEnd(Z)V
    .locals 0

    .line 4001
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updatePreviewViewTranslationY()V

    const/4 p1, 0x1

    .line 4002
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    return-void
.end method

.method public synthetic onEntityDragMultitouchEnd()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragMultitouchEnd(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    return-void
.end method

.method public synthetic onEntityDragMultitouchStart()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragMultitouchStart(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    return-void
.end method

.method public onEntityDragStart()V
    .locals 1

    .line 4007
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4008
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    :cond_0
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

.method public synthetic onEntityHandleTouched()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityHandleTouched(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    return-void
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    const/4 v0, 0x0

    .line 4014
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    .line 4015
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 3996
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

    .line 3687
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2057
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v0, 0x1

    .line 1995
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 1996
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1997
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1999
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 2003
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

    .line 2004
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 2005
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 2006
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 2007
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    .line 2010
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

    .line 2014
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v1, v6

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-double v3, v3

    .line 2017
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 2023
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    .line 2027
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 2028
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 2031
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 2032
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 2033
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 2034
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->measureKeyboardHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2035
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->overlayLayout:Landroid/widget/FrameLayout;

    sub-int/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v3, p1, v1}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 2037
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

    .line 2038
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 2039
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 2042
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

    .line 2043
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 2044
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    .line 2045
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    .line 2048
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-ltz p1, :cond_4

    goto :goto_1

    .line 2051
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hideEmojiView()V

    :goto_1
    return-void
.end method

.method public onNewTextSelected()V
    .locals 1

    .line 3262
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3265
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 3266
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    goto :goto_1

    .line 3263
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

.method public onParentPreDraw()V
    .locals 9

    .line 3078
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->invalidateReactionPosition:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 3079
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->invalidateReactionPosition:Z

    .line 3080
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v1, :cond_5

    .line 3081
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    aput v1, v2, v0

    .line 3082
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 3083
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3084
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v1, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v5

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 3085
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v2, v2, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    const/16 v5, 0x78

    .line 3086
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    const/16 v7, 0x10

    if-gez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    const/16 v8, 0xc8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    .line 3087
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    .line 3088
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 3089
    :cond_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 3090
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    .line 3091
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v2, v2, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 3093
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTop(Z)V

    .line 3094
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3096
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v1, v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_2

    .line 3097
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMirrorX(Z)V

    .line 3098
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v0, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 3099
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    sub-float/2addr v1, v0

    cmpl-float v0, v1, v2

    if-lez v0, :cond_4

    .line 3101
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v2, v1

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    goto :goto_1

    .line 3104
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->points:[F

    aget v1, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    .line 3105
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    cmpg-float v1, v4, v2

    if-gez v1, :cond_3

    .line 3107
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    .line 3110
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMirrorX(Z)V

    .line 3113
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTranslationX(F)V

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 2252
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->redraw()V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/16 v0, 0x32

    .line 4258
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

    .line 4260
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    .line 4261
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

    .line 4263
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    .line 4264
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    const-string v2, "kbd_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4268
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 4269
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeightLand:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardHeight:I

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->getPaddingUnderContainer()I

    move-result v1

    add-int/2addr v0, v1

    .line 4271
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4272
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    .line 4273
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4274
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4275
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4277
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 4278
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 4279
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 4283
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    return-void

    .line 4286
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue1:I

    .line 4287
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->lastSizeChangeValue2:Z

    .line 4289
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    .line 4290
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 4291
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p2

    .line 4292
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

    .line 4294
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    .line 4296
    :goto_3
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-eqz p2, :cond_8

    .line 4297
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showEmojiPopup(I)V

    .line 4299
    :cond_8
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez p2, :cond_9

    if-eq p2, p1, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiViewVisible:Z

    if-nez p2, :cond_9

    .line 4300
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    .line 4301
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    .line 4302
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->requestLayout()V

    .line 4304
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->updateTextDim()V

    if-eqz p1, :cond_a

    .line 4305
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-nez p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPadding:I

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    if-eqz p1, :cond_a

    .line 4306
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->translateBottomPanelAfterResize:Z

    .line 4308
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardVisible:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_b

    .line 4309
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->waitingForKeyboardOpen:Z

    .line 4310
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4313
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

    .line 3280
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 3281
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 3282
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentAlignment(I)V

    :cond_0
    return-void
.end method

.method public onTextOutlineSelected(Landroid/view/View;)V
    .locals 0

    .line 3063
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectedTextType:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setTextType(I)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2640
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2641
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 2650
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2652
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2653
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2654
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onTouch(Landroid/view/MotionEvent;)Z

    .line 2655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTypefaceButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 2868
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method public onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 2

    .line 3272
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTypeface(Ljava/lang/String;)V

    .line 3273
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 3274
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    :cond_0
    return-void
.end method

.method public openPaint()V
    .locals 1

    const/4 v0, 0x0

    .line 2673
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 2674
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearSelection()V

    return-void
.end method

.method public openStickers()V
    .locals 1

    const/4 v0, 0x1

    .line 2684
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    .line 2685
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V

    return-void
.end method

.method public openText()V
    .locals 1

    const/4 v0, 0x2

    .line 2678
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->switchTab(I)V

    const/4 v0, 0x1

    .line 2679
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->forceChanges:Z

    .line 2680
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    return-void
.end method

.method public removeCurrentEntity()V
    .locals 1

    .line 3957
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    .line 3958
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1987
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1990
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setBlurManager(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 0

    .line 3119
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    return-void
.end method

.method public bridge synthetic setOffsetTranslationX(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$setOffsetTranslationX(Lorg/telegram/ui/Components/IPhotoPaintView;F)V

    return-void
.end method

.method public setOnCancelButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onCancelButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public showReactionsLayout(Z)V
    .locals 5

    .line 1473
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    if-eq v0, p1, :cond_5

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1476
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayoutShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1478
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    .line 1479
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1480
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getCurrentReaction()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1481
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1483
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionForEntity:Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    .line 1486
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->invalidateReactionPosition:Z

    .line 1487
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->parent:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 1488
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    aput v4, v3, v0

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    aput v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1489
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionShowProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    .line 1490
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1494
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PaintView$18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView$18;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    .line 1503
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1504
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1505
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1507
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 1510
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->reactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PaintView$19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PaintView$19;-><init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1518
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 2231
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    .line 2232
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2233
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2235
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v1, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda46;->INSTANCE:Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda46;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2242
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->emojiPopup:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    .line 2245
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->colorPickerBottomSheet:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    if-eqz v0, :cond_1

    .line 2246
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->dismiss()V

    :cond_1
    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView;->toolsPaint:Landroid/graphics/Paint;

    const v1, -0xe6e6e7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
