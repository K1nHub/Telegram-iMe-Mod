.class public Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "LPhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/IPhotoPaintView;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;,
        Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;
    }
.end annotation


# instance fields
.field adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private baseScale:F

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private bottomPanelIgnoreOnce:Z

.field private cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

.field private cancelTextButton:Landroid/widget/TextView;

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

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private emojiViewVisible:Z

.field private emojiViewWasVisible:Z

.field private entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

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

.field private ignoreLayout:Z

.field private ignoreToolChangeAnimationOnce:Z

.field private imageHeight:F

.field private imageWidth:F

.field private inBubbleMode:Z

.field private inputTransformX:F

.field private inputTransformY:F

.field private isAnimatePopupClosing:Z

.field private isColorListShown:Z

.field private isTypefaceMenuShown:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lcm:Ljava/math/BigInteger;

.field private offsetTranslationY:F

.field private onDoneButtonClickedListener:Ljava/lang/Runnable;

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private originalBitmapRotation:I

.field private overlayLayout:Landroid/widget/FrameLayout;

.field private paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private panTranslationProgress:F

.field private panTranslationY:F

.field private pipetteContainerLayout:Landroid/widget/FrameLayout;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pos:[I

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private renderInputView:Landroid/view/View;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scale:F

.field private selectedTextType:I

.field private selectionContainerView:Landroid/widget/FrameLayout;

.field private stickerTab:Landroid/widget/TextView;

.field private tabsLayout:Landroid/widget/LinearLayout;

.field private tabsNewSelectedIndex:I

.field private tabsSelectedIndex:I

.field private tabsSelectionAnimator:Landroid/animation/ValueAnimator;

.field private tabsSelectionProgress:F

.field private temp:[F

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

.field private waitingForKeyboardOpen:Z

.field private weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

.field private weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

.field private zoomOutButton:Landroid/widget/LinearLayout;

.field private zoomOutImage:Landroid/widget/ImageView;

.field private zoomOutText:Landroid/widget/TextView;

.field private zoomOutVisible:Z


# direct methods
.method public static synthetic $r8$lambda$59a_C85dgS5GImyUE-qiCqG_kIA(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7TEsMYg6vDAXDNhS2exzDB5nFVs(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setNewColor$11(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WplM7LAn8LwB8fhwrUtweq983c(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$maybeShowDismissalAlert$21(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7so8ZAZE6nJgNZzeR8F2iXufXoY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$hideEmojiPopup$41(ZILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9lavbLW0vkM1NO_x_ymsQtCZ8uo(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9tgc9k7MupWrwFBFPAcFs6bLIQg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EIfercosjmL5KxeGzOlXgRDAuHI(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$30(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F7uQaamwbyjNMKNXfWIpnxsPock(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FOIKhZDmusUdid24IvBE0bDQXh8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showTypefaceMenu$23(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$GG1jm3vM_wfzqK-OIbZWuxFMJ1Y(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$36(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L8UFu28IvW2QzL5sAXEtRb6PujM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$7(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxjPFwxHy412PJXAdc740jvzhfk(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$35(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Plioc3Kd_j8nh1IUNipf9A1NF9c(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$18(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qr6h-my6U3Nh57RAdh74X9sHxOE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onTextOutlineSelected$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$V5gQdu26SeQx_ElvLDi2brLNLSw(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$37(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-5sWaNj3JoKmradZkTmk4cOf1Y(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$detectFaces$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2_zxIsiFUneVzL_Vk4GNZQ1etg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3RJi8JJvbFZdx2ko2ydKeopQUo(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8yVojC5e7bn8xW2MuKzgeqDMvY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$9(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Znes7BH5CkSUJ7U0vdtLx9U-inE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$anyHtmUCjPmg8NfiPExiUPz6tDY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aoOyhcWCo4gbmyTulSJEhB4rLlM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$at5sNJhqf05zR-DabtwLXFwulBo(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showColorList$24(Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$bXX-XMFdHXjyYC3Wncz37OiXvI8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWZcceUXsVMuCetm5K17UMQr7tQ(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onTextOutlineSelected$26(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eKjvRbGr99RUf9h_3QQpu8hP1P4(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fiGTzrFCot4WObSh2bzood-GnkM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$29(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g4zCJ4CK9ghMQyTbx5v4EJTMnxo(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$8(ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hyn_6Vt14DcaK8HXAVA26ALkSM4(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showEmojiPopup$40(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLOCEppt5xNzsL9hX1CSgobXZHc()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$shutdown$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$j4tLf-wsDdlBuPX_i8NQW05FhtA(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$6(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kV_dykmeXXL4XnMCmzUKL4IjV4M(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$buttonForPopup$28(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lac87dd4bmNmZSp93lf0yDGsSbk(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showTypefaceMenu$22(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$lnMZppzD1icdAs3rdsjUGx-VBPY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$nh8BKkPXAGmFdvijcL9IDg74Op4(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$32(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nsgLn2fnIZK8QmpjWCVveSHMHuA(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$switchTab$15(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o1SOOPzSr9HaVLijGdBwyYV_CkI(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$registerRemovalUndo$39(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oInr6ncyDItZ3c9tBhrHLFs_Wm8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7EbtSsaV2EFQZ7lW4Pu4axCWYQ(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showColorList$25(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$uIfZmcJv41FBVd0KSjOc13picCs(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$17(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xL0X7zN0aIVk0YybXiKgjZc-7Es(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdIfcLxmSborUOpuh6pLiBkaM3I(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$33(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Ljava/lang/Runnable;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    move/from16 v0, p5

    move-object/from16 v10, p6

    const/4 v11, 0x1

    .line 207
    invoke-direct {v6, v7, v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Z)V

    const/4 v12, 0x0

    .line 133
    iput v12, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v13, -0x1

    .line 134
    iput v13, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    .line 141
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    .line 178
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    .line 179
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    .line 185
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    .line 186
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    .line 187
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    .line 188
    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v14, 0x3f800000    # 1.0f

    const v2, 0x3c896918

    invoke-direct {v1, v13, v14, v2}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 194
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    .line 986
    iput-boolean v12, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    const/4 v15, 0x2

    new-array v1, v15, [F

    .line 2793
    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->temp:[F

    new-array v1, v15, [I

    .line 2809
    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos:[I

    .line 2857
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 3288
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;

    invoke-direct {v1, v6, v6, v12}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$22;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    .line 208
    invoke-virtual {v6, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    .line 210
    iput v8, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    .line 211
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;

    move-object/from16 v2, p9

    invoke-direct {v1, v6, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v1, p7

    .line 265
    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 267
    instance-of v1, v7, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    .line 269
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    .line 270
    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getColor(I)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 271
    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v1

    iput v1, v2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 273
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v2, "Paint"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v1, p3

    .line 275
    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 276
    iput-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    .line 277
    iput v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->originalBitmapRotation:I

    .line 278
    new-instance v1, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 279
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda39;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    .line 289
    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$3;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    invoke-direct {v3, v1, v9, v0}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;I)V

    iget-object v4, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v14, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 300
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$4;

    move-object/from16 v1, p8

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$4;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    .line 347
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    .line 348
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    .line 349
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 350
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/16 v2, 0x33

    invoke-static {v13, v13, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$5;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$5;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-static {v13, v13, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$7;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-direct {v0, v6, v7, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$7;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    .line 433
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v10, :cond_6

    .line 435
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 436
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_0
    if-ge v2, v0, :cond_6

    .line 437
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 439
    iget-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez v4, :cond_1

    .line 440
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v6, v4, v5, v12}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object v4

    .line 441
    iget-byte v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v5, v15

    if-eqz v5, :cond_0

    .line 442
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 445
    :cond_0
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 446
    iget v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 447
    iget v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 p5, v2

    goto/16 :goto_3

    :cond_1
    if-ne v4, v11, :cond_5

    .line 449
    invoke-direct {v6, v12}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    move-result-object v4

    .line 451
    iget-byte v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v14, v5, 0x1

    if-eqz v14, :cond_2

    move v5, v12

    goto :goto_1

    :cond_2
    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    move v5, v15

    goto :goto_1

    :cond_3
    move v5, v11

    .line 458
    :goto_1
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 459
    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    .line 460
    iget v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setBaseFontSize(I)V

    .line 461
    new-instance v5, Landroid/text/SpannableString;

    iget-object v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v5, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 463
    new-instance v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move/from16 p5, v2

    iget-wide v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    invoke-direct {v13, v1, v2, v15}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iget v1, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v2, v1

    const/16 v11, 0x21

    invoke-virtual {v5, v13, v1, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move/from16 v2, p5

    const/4 v1, 0x4

    const/4 v11, 0x1

    const/4 v13, -0x1

    const/4 v15, 0x2

    goto :goto_2

    :cond_4
    move/from16 p5, v2

    .line 466
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontSize()F

    move-result v2

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-static {v5, v1, v2, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 467
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-direct {v6, v4, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 469
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    .line 470
    iget v2, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 471
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 476
    :goto_3
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v1, v2

    iget v2, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v2, v2

    iget v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v14, v11, v5

    mul-float/2addr v2, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 477
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v1, v2

    iget v2, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v2, v2

    iget v11, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, v11

    mul-float/2addr v2, v14

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 478
    new-instance v1, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget v11, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v5

    add-float/2addr v2, v11

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v11

    iget v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v14, v14

    div-float/2addr v14, v5

    add-float/2addr v11, v14

    invoke-direct {v1, v2, v11}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 479
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 480
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 481
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v1, v1

    float-to-double v1, v1

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v14

    double-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_4

    :cond_5
    move/from16 p5, v2

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_4
    add-int/lit8 v2, p5, 0x1

    const/4 v1, 0x4

    const/4 v11, 0x1

    const/4 v13, -0x1

    const/4 v15, 0x2

    goto/16 :goto_0

    .line 484
    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 486
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    .line 493
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 495
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0xc

    .line 496
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 497
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    .line 501
    sget v3, Lorg/telegram/messenger/R$drawable;->photo_undo2:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v10, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 503
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda14;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 514
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 515
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v5, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const/16 v17, 0x20

    const/16 v18, 0x20

    const/16 v19, 0x33

    const/16 v20, 0xc

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    .line 518
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 519
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const v5, 0x30ffffff

    const/4 v10, 0x7

    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v0, v13, v12, v14, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 521
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/4 v13, -0x1

    .line 522
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const-string v13, "fonts/rmedium.ttf"

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 524
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 525
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->PhotoEditorZoomOut:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutImage:Landroid/widget/ImageView;

    .line 527
    sget v15, Lorg/telegram/messenger/R$drawable;->photo_zoomout:I

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v15, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutImage:Landroid/widget/ImageView;

    const/16 v17, 0x18

    const/16 v18, 0x18

    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v22, 0x8

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/16 v15, 0x10

    invoke-static {v1, v1, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 531
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    sget-object v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda18;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x20

    const/16 v4, 0x11

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    .line 537
    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 539
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorClearAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 541
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 542
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 543
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 544
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 558
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/16 v17, -0x2

    const/16 v18, 0x20

    const/16 v19, 0x5

    const/16 v22, 0x4

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    .line 561
    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 564
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 565
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 566
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 567
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 568
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 579
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v19, 0x33

    const/16 v20, 0x4

    const/16 v22, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    .line 583
    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 586
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 587
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 589
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 590
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda12;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 594
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v22, 0x4

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$9;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$9;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    .line 705
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 706
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x68

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    if-eqz v9, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    move v1, v12

    :goto_5
    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    .line 710
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 711
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;)V

    .line 713
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 714
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    .line 717
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 718
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 719
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;)V

    .line 720
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 721
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 722
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    .line 760
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    .line 763
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 764
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda40;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 770
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypefaceListView(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V

    .line 771
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x55

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x8

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 774
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 775
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 777
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    .line 801
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 802
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorPalette(Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    .line 803
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda22;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorListener(Landroidx/core/util/Consumer;)V

    .line 807
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/16 v17, -0x1

    const/16 v18, 0x54

    const/16 v19, 0x30

    const/16 v20, 0x38

    const/16 v22, 0x38

    const/16 v23, 0x6

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setupTabsLayout(Landroid/content/Context;)V

    .line 811
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    .line 812
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 813
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const/16 v17, 0x20

    const/16 v18, 0x20

    const/16 v19, 0x53

    const/16 v20, 0xc

    const/16 v22, 0x0

    const/16 v23, 0x4

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    .line 817
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 818
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 819
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda16;

    invoke-direct {v1, v6, v7, v9, v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x55

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x4

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v11

    invoke-static/range {p3 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    .line 890
    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setColorSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 891
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 892
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 893
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 894
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda32;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setOnUpdate(Ljava/lang/Runnable;)V

    .line 898
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    .line 901
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 904
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 906
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 908
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 909
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateColors()V

    .line 911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_8

    new-array v0, v1, [Landroid/graphics/Rect;

    .line 912
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

    const-wide v7, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v7

    double-to-int v4, v4

    invoke-direct {v1, v12, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, v12

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_8
    return-void

    :array_0
    .array-data 4
        -0x1000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x80000000
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/ViewGroup;
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I
    .locals 0

    .line 99
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)Landroid/view/View;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I
    .locals 0

    .line 99
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Ljava/lang/Runnable;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;FF)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    return-void
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;F)F
    .locals 0

    .line 99
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationY:F

    return p1
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewWasVisible:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 99
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;F)F
    .locals 0

    .line 99
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationProgress:F

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/View;
    .locals 0

    .line 99
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    return-object p0
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 4

    .line 2610
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2611
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private bottomPanelTranslationY(FF)V
    .locals 7

    .line 3031
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/16 v2, 0x28

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3032
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationY:F

    mul-float/2addr v0, v1

    .line 3033
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationProgress:F

    .line 3034
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->updatePanTransition(FF)V

    .line 3035
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTransform(FFFFF)V

    .line 3036
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;
    .locals 2

    .line 2160
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    .line 2161
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(I)V

    .line 2162
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setText(Ljava/lang/CharSequence;)V

    .line 2163
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setSelected(Z)V

    if-eqz p4, :cond_0

    .line 2165
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda6;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2631
    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2632
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2633
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 2634
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2641
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v4, 0x3f400000    # 0.75f

    if-eqz v3, :cond_2

    .line 2642
    iget v5, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v5, v5

    iget v6, v3, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v5, v6

    neg-float v5, v5

    .line 2643
    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v4, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2648
    :goto_2
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v6

    invoke-direct {v3, v6, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    if-eqz v2, :cond_5

    .line 2649
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 2652
    :cond_3
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 2654
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {v0, v4, v5, v6, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v3

    .line 2659
    :cond_4
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 2660
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v4

    .line 2661
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result v1

    .line 2662
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    .line 2664
    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float v5, v4, v5

    float-to-double v5, v5

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    mul-double/2addr v5, v7

    double-to-float v5, v5

    float-to-double v6, v1

    .line 2666
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v10, v8, v6

    .line 2667
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v4

    mul-double/2addr v12, v14

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v12, v8

    double-to-float v4, v12

    .line 2668
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v14

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v6, v9

    .line 2670
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v14

    iget-wide v11, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    .line 2671
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v14

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v6, v10

    double-to-float v2, v6

    .line 2673
    iget v6, v3, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v6, v4

    add-float/2addr v6, v9

    .line 2674
    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v3, v8

    add-float/2addr v3, v2

    .line 2676
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    new-instance v4, Lorg/telegram/ui/Components/Point;

    invoke-direct {v4, v6, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-direct {v2, v4, v5, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    return-object v2

    :cond_5
    :goto_3
    return-object v3
.end method

.method private centerPositionForEntity()Lorg/telegram/ui/Components/Point;
    .locals 12

    .line 2615
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    .line 2616
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2617
    iget v3, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v3, v2

    .line 2618
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v2, :cond_0

    .line 2619
    iget v4, v2, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v4, v4

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v4, v2

    neg-float v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 2620
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    float-to-double v4, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    float-to-double v8, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    double-to-float v2, v4

    .line 2621
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    float-to-double v4, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v8, v8, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    float-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    double-to-float v4, v4

    .line 2622
    iget v5, v0, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 2623
    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 2625
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0
.end method

.method private createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .locals 11

    .line 2730
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    move-result-object v0

    .line 2731
    new-instance v10, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->access$3700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v4

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->access$3800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F

    move-result v5

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->access$3900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)F

    move-result v6

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v7

    move-object v1, v10

    move-object v2, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 2737
    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 2738
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->access$3700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    cmpl-float p1, p1, p2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 2739
    invoke-virtual {v10, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setHasStickyX(Z)V

    .line 2741
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;->access$3700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 2742
    invoke-virtual {v10, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setHasStickyY(Z)V

    .line 2744
    :cond_1
    invoke-virtual {v10, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2745
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_2

    .line 2747
    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2748
    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_2
    return-object v10
.end method

.method private createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .locals 10

    .line 932
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onTextAdd()V

    .line 934
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 935
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 936
    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr v2, v4

    float-to-int v5, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    const-string v6, ""

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V

    .line 937
    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 938
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setHasStickyX(Z)V

    .line 940
    :cond_0
    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 941
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setHasStickyY(Z)V

    .line 943
    :cond_1
    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 944
    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 945
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    .line 946
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, -0x2

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 949
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v0

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 950
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_2
    if-eqz p1, :cond_3

    .line 954
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 956
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    const/4 p1, 0x0

    .line 957
    invoke-direct {p0, v9, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 958
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 959
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 960
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 961
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v0

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    .line 962
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

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

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private duplicateSelectedEntity()V
    .locals 4

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2485
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 2487
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v3, :cond_1

    .line 2488
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    .line 2489
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2490
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2492
    :cond_1
    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_2

    .line 2493
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    .line 2494
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2495
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2500
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2501
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private editSelectedTextEntity()V
    .locals 2

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x1

    .line 978
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 980
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    .line 981
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 983
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getBarView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1238
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1240
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBarView()Landroid/view/ViewGroup;
    .locals 2

    .line 1151
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    :goto_0
    return-object v0
.end method

.method private getCenterLocationInWindow(Landroid/view/View;)[I
    .locals 11

    .line 2811
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2812
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_0

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2813
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 2814
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float/2addr v2, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    mul-float/2addr v2, p1

    float-to-double v3, v1

    float-to-double v0, v0

    .line 2815
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    float-to-double v7, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v5, v9

    double-to-float p1, v5

    .line 2816
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    add-double/2addr v3, v7

    double-to-float v0, v3

    .line 2817
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    add-float/2addr v3, p1

    float-to-int p1, v3

    aput p1, v1, v2

    const/4 p1, 0x1

    .line 2818
    aget v2, v1, p1

    int-to-float v2, v2

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    float-to-int v0, v2

    aput v0, v1, p1

    return-object v1
.end method

.method private getFrameRotation()I
    .locals 2

    .line 1492
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->originalBitmapRotation:I

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
    .locals 6

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    return-object v0

    .line 1457
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1458
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1461
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/16 v2, 0xa00

    goto :goto_0

    :cond_1
    const/16 v2, 0xf00

    goto :goto_0

    :cond_2
    const/16 v2, 0x500

    .line 1473
    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/Size;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    int-to-float v2, v2

    .line 1474
    iput v2, v3, Lorg/telegram/ui/Components/Size;->width:F

    mul-float v4, v2, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    .line 1475
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    .line 1477
    iput v2, v3, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    float-to-double v0, v2

    .line 1478
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v3, Lorg/telegram/ui/Components/Size;->width:F

    .line 1480
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    return-object v3
.end method

.method private getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;
    .locals 11

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    .line 2681
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2685
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2686
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_0
    if-lez v3, :cond_2

    .line 2691
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move-wide v8, p2

    move-object v10, p4

    .line 2692
    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2690
    rem-int/2addr v2, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2601
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hideEmojiPopup(Z)V
    .locals 6

    .line 2990
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2991
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    :cond_0
    if-eqz p1, :cond_2

    .line 2994
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_1

    .line 2995
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v2, v0, v1

    int-to-float v2, p1

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 2996
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2997
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    .line 2998
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    .line 2999
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v5, v4, p1

    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    .line 3000
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZI)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3007
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isAnimatePopupClosing:Z

    .line 3008
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xfa

    .line 3020
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3021
    sget-object p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3022
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3024
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideEmojiView()V
    .locals 2

    .line 3053
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3054
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3056
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    return-void
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 9

    .line 2701
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 2706
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result p1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, v2

    move v2, v1

    .line 2708
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2709
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2710
    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v4, :cond_1

    goto :goto_1

    .line 2714
    :cond_1
    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 2715
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_1

    .line 2719
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 2720
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

    .line 2721
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, p3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

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

    .line 1501
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->originalBitmapRotation:I

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

.method private static synthetic lambda$buttonForPopup$28(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2165
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$detectFaces$19()V
    .locals 9

    const/4 v0, 0x0

    .line 1508
    :try_start_0
    new-instance v1, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1509
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    .line 1510
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1511
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v0

    .line 1512
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1513
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "face detection is not operational"

    .line 1514
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1542
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    .line 1519
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getFrameRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1522
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1527
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    .line 1529
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1530
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1531
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/face/Face;

    .line 1532
    new-instance v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isSidewardOrientation()Z

    move-result v8

    invoke-direct {v6, v5, v7, v4, v8}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    .line 1533
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1534
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1537
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1524
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1542
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1539
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 1542
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_4
    return-void

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    .line 1544
    :cond_5
    throw v1
.end method

.method private synthetic lambda$hideEmojiPopup$41(ZILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 3001
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 3002
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    if-nez p1, :cond_0

    int-to-float p1, p2

    sub-float p2, p3, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p3, p1

    sub-float/2addr v0, p3

    .line 3004
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$maybeShowDismissalAlert$21(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1801
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 7

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

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

    .line 283
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

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

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 505
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 508
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(I)V
    .locals 2

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 896
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 532
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->zoomOut()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 545
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_1

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 550
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 551
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 553
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearAll()V

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->reset()V

    .line 555
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 570
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 572
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 573
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    .line 575
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    .line 576
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 591
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;I)V
    .locals 1

    .line 765
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 766
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 p1, 0x0

    .line 768
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method private synthetic lambda$new$7(Ljava/lang/Integer;)V
    .locals 0

    .line 804
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    const/4 p1, 0x0

    .line 805
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(ILjava/lang/Integer;)V
    .locals 2

    .line 876
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 877
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 878
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 1

    .line 820
    iget-boolean p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz p4, :cond_0

    .line 821
    new-instance p4, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColor(I)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$12;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$12;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setPipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    .line 875
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColorListener(Landroidx/core/util/Consumer;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    .line 880
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->show()V

    return-void

    .line 883
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 884
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$29(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 1

    .line 2382
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2383
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    .line 2385
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 2386
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->animatePlusToIcon(I)V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$30(Landroid/view/View;)Z
    .locals 4

    .line 2389
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2390
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->toggleFillShapes()V

    .line 2391
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result p1

    const/4 v1, 0x0

    .line 2392
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2393
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 2394
    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    if-eqz v3, :cond_1

    .line 2395
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 2396
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v3

    .line 2397
    :goto_1
    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    invoke-virtual {v2, v3, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(IZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onAddButtonPressed$31()V
    .locals 7

    .line 2377
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2378
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2379
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 2380
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v4

    .line 2381
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda34;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    invoke-direct {p0, v5, v4, v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    move-result-object v3

    .line 2388
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2403
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

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

.method private synthetic lambda$onTextOutlineSelected$26(I)V
    .locals 0

    .line 2154
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextType(I)V

    return-void
.end method

.method private synthetic lambda$onTextOutlineSelected$27()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2144
    sget v3, Lorg/telegram/messenger/R$string;->PaintOutlined:I

    const-string v4, "PaintOutlined"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2145
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_text_outlined:I

    goto :goto_1

    :cond_0
    if-ne v1, v2, :cond_1

    .line 2147
    sget v3, Lorg/telegram/messenger/R$string;->PaintRegular:I

    const-string v4, "PaintRegular"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2148
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_text_regular:I

    goto :goto_1

    .line 2150
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->PaintFramed:I

    const-string v4, "PaintFramed"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2151
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_text_framed:I

    .line 2154
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    if-ne v6, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda33;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    invoke-direct {p0, v3, v4, v2, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$openStickersView$16()V
    .locals 1

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1324
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->detectFaces()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openStickersView$17(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    const/4 v0, 0x1

    .line 1335
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    return-void
.end method

.method private synthetic lambda$openStickersView$18(ILandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1337
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onOpenCloseStickersAlert(Z)V

    .line 1338
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    return-void
.end method

.method private synthetic lambda$registerRemovalUndo$39(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 2777
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method private synthetic lambda$setNewColor$11(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 923
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 926
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$12(Landroid/view/View;)V
    .locals 0

    .line 1196
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1197
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1199
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupTabsLayout$13(Landroid/view/View;)V
    .locals 0

    .line 1208
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openStickersView()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$14(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1228
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1229
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1230
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showColorList$24(Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p6, p5

    .line 2054
    iput p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float p6, p5, p6

    const p7, 0x3ecccccd    # 0.4f

    mul-float/2addr p6, p7

    const p7, 0x3f19999a    # 0.6f

    add-float/2addr p6, p7

    .line 2057
    invoke-virtual {p1, p6}, Landroid/view/View;->setScaleX(F)V

    .line 2058
    invoke-virtual {p1, p6}, Landroid/view/View;->setScaleY(F)V

    const/16 p6, 0x10

    .line 2059
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    int-to-float p6, p6

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p7, v0}, Ljava/lang/Math;->min(FF)F

    move-result p7

    mul-float/2addr p6, p7

    div-float/2addr p6, v0

    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    .line 2060
    iget p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    div-float/2addr p6, v0

    sub-float p6, p5, p6

    invoke-virtual {p1, p6}, Landroid/view/View;->setAlpha(F)V

    .line 2062
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setProgress(FZ)V

    .line 2064
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;->setProgress(F)V

    .line 2065
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;->setProgress(F)V

    .line 2067
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/16 p7, 0x20

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p7

    int-to-float p7, p7

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    mul-float/2addr p7, v0

    invoke-virtual {p6, p7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2068
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {p6}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result p6

    const/4 p7, 0x0

    if-eqz p6, :cond_0

    .line 2069
    aput-boolean p7, p3, p7

    .line 2071
    :cond_0
    aget-boolean p3, p3, p7

    if-eqz p3, :cond_3

    .line 2072
    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sub-float p3, p5, p3

    .line 2073
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 p6, 0x28

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p3

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    int-to-float p2, p2

    mul-float/2addr p6, p2

    sub-float/2addr p4, p6

    invoke-virtual {p5, p4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2075
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2077
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-ne p1, p2, :cond_4

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$showColorList$25(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2082
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 2083
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2086
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2087
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 2088
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showEmojiPopup$40(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2941
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2942
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2944
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float v0, v0

    div-float v0, p2, v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$32(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2426
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2428
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2429
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$33(Landroid/view/View;)V
    .locals 1

    .line 2444
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editSelectedTextEntity()V

    .line 2446
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2447
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$34(Landroid/view/View;)V
    .locals 1

    .line 2462
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->duplicateSelectedEntity()V

    .line 2464
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2465
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$35(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 11

    .line 2414
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2415
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2417
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2418
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2419
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x10

    .line 2420
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2421
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v2, v5, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    const/high16 v7, 0x41800000    # 16.0f

    .line 2422
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2424
    sget v8, Lorg/telegram/messenger/R$string;->PaintDelete:I

    const-string v9, "PaintDelete"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2425
    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda17;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, -0x2

    const/16 v9, 0x30

    .line 2432
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2434
    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_0

    .line 2435
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2436
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2437
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2438
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2439
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {p1, v2, v1, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2440
    invoke-virtual {p1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2441
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2442
    sget v2, Lorg/telegram/messenger/R$string;->PaintEdit:I

    const-string v10, "PaintEdit"

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2443
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2450
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2453
    :cond_0
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2454
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2455
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2456
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2457
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2458
    invoke-virtual {p1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x2

    .line 2459
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2460
    sget v1, Lorg/telegram/messenger/R$string;->PaintDuplicate:I

    const-string v2, "PaintDuplicate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2461
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2468
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2470
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2472
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2473
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2474
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2475
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showPopup$36(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2555
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2556
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2558
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2559
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$37(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2566
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2567
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$38()V
    .locals 1

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$22(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    .line 2013
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    .line 2014
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2015
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 2016
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2018
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getTypefaceCell()Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$23(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2021
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 2022
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2025
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2027
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->setMaskProvider(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$shutdown$20()V
    .locals 1

    .line 1555
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchTab$15(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1259
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    .line 1260
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1261
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1262
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p3, 0x0

    .line 1264
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge p3, v0, :cond_2

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-ne p3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    goto :goto_1

    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-ne p3, v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

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

    .line 1267
    :cond_2
    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    sub-float v0, v3, p3

    mul-float v4, v0, v1

    add-float/2addr v4, v2

    .line 1271
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1272
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    const/16 v4, 0x10

    .line 1273
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1274
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr p3, v1

    add-float/2addr p3, v2

    .line 1277
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 1278
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 1279
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr p1, p3

    div-float/2addr p1, v6

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1280
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 0

    .line 3060
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    return-void
.end method

.method private openStickersView()V
    .locals 9

    .line 1320
    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v7, 0x1

    .line 1321
    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1322
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1327
    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v8

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/16 v0, 0x1c

    .line 1334
    invoke-virtual {v8, v0, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->setImageReceiverNumLevel(II)V

    .line 1335
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->setDelegate(Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;)V

    .line 1336
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1340
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1341
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    .line 2777
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2

    .line 2754
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 2755
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    const/4 v0, 0x0

    .line 2756
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 2758
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    .line 2759
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-eqz v1, :cond_0

    .line 2760
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2762
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 2765
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 2767
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    .line 2770
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 2771
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 2772
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2773
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 998
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    move-result p1

    return p1
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 6

    .line 1005
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-ne v5, v1, :cond_1

    :cond_0
    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_4

    .line 1006
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    if-eq v3, v1, :cond_2

    .line 1007
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1009
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz v3, :cond_3

    .line 1010
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    .line 1012
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    :cond_4
    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 1018
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

    .line 1030
    :cond_6
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 1031
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    .line 1033
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1036
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p2, :cond_c

    if-ne p2, p1, :cond_a

    .line 1038
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-nez p1, :cond_8

    .line 1039
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    .line 1040
    :cond_8
    instance-of p1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_9

    .line 1041
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1042
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    :cond_9
    :goto_1
    return v3

    .line 1046
    :cond_a
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 1047
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_b

    .line 1048
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    if-nez v0, :cond_b

    .line 1050
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 1051
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1052
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    :cond_b
    move p2, v3

    goto :goto_2

    :cond_c
    move p2, v2

    .line 1059
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1060
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1061
    instance-of p1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_d

    .line 1062
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1063
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1064
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1068
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p1, :cond_f

    .line 1069
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    .line 1070
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_e

    .line 1073
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1074
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v0, p2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1075
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1077
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget p2, p2, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$13;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$13;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1089
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    goto :goto_3

    .line 1091
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1092
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1093
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1094
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_3

    .line 1099
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-eqz v0, :cond_10

    .line 1100
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1102
    :cond_10
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz p1, :cond_11

    .line 1103
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    .line 1105
    :cond_11
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1107
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1108
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1109
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1110
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    move v3, p2

    :goto_3
    return v3
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 3

    .line 2102
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eq v0, p1, :cond_0

    .line 2103
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2104
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    .line 2105
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2107
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 2108
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    .line 2111
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    if-eqz p2, :cond_1

    .line 2115
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 2116
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2120
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_2

    .line 2121
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

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 918
    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const/4 v2, 0x1

    .line 919
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 921
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 922
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;II)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 928
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

    .line 2339
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

    .line 2355
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 2356
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_6

    if-eq p2, v1, :cond_4

    const/4 v0, 0x3

    if-eq p2, v2, :cond_3

    .line 2361
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_5

    :cond_2
    move v2, v0

    goto :goto_1

    .line 2367
    :cond_3
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    .line 2370
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_6
    return-void
.end method

.method private setTextType(I)V
    .locals 3

    .line 2300
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    .line 2301
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_3

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 2302
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v1, :cond_0

    .line 2303
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2304
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v0, :cond_2

    .line 2305
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    .line 2307
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 2309
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTextType(I)V

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(I)V

    return-void
.end method

.method private setupTabsLayout(Landroid/content/Context;)V
    .locals 14

    .line 1155
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$14;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$14;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1182
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

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

    .line 1186
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    .line 1187
    sget v2, Lorg/telegram/messenger/R$string;->PhotoEditorDraw:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v1, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1194
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda13;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    .line 1205
    sget v9, Lorg/telegram/messenger/R$string;->PhotoEditorSticker:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v0, v1, v9, v1, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1212
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1217
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    .line 1218
    sget p1, Lorg/telegram/messenger/R$string;->PhotoEditorText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1220
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1221
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1222
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1223
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1224
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1225
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1226
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 1227
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1233
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showColorList(Z)V
    .locals 9

    .line 2036
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eq v0, p1, :cond_5

    .line 2037
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    .line 2039
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2040
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2043
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

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2044
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    move v2, v3

    .line 2045
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2046
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2047
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2044
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 2049
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    const/4 v7, 0x0

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v7

    :cond_4
    :goto_1
    aput-boolean v0, v5, v7

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    .line 2052
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda27;

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z[ZF)V

    invoke-virtual {v0, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2081
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p1, :cond_5

    .line 2095
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2096
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    :cond_5
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 10

    .line 2887
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    const/4 v1, 0x0

    .line 2888
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    .line 2890
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    .line 2891
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createEmojiView()V

    .line 2893
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2895
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    .line 2896
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 2898
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    const/16 v6, 0x96

    const/16 v7, 0xc8

    if-gtz v5, :cond_2

    .line 2899
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2900
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    goto :goto_1

    .line 2902
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const-string v9, "kbd_height"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 2905
    :cond_2
    :goto_1
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    if-gtz v5, :cond_4

    .line 2906
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2907
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_2

    .line 2909
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const-string v7, "kbd_height_land3"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    .line 2912
    :cond_4
    :goto_2
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v6, v5, :cond_5

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_3

    :cond_5
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 2914
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2915
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2916
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2917
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v6, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v6, :cond_6

    .line 2918
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    .line 2919
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2922
    :cond_6
    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 2923
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 2925
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2927
    sget-object v5, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 2929
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    if-nez p1, :cond_e

    .line 2932
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    .line 2933
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    .line 2934
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    sub-int v1, v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    goto/16 :goto_4

    :cond_8
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 2938
    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float v4, v4

    aput v4, p1, v1

    aput v2, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2939
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    sub-int v3, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    .line 2940
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2947
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$19;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$19;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 2957
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2958
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2959
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 2964
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2966
    sget-object v4, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 2968
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_c

    .line 2970
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    .line 2971
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v3, :cond_b

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v3, :cond_c

    :cond_b
    const/16 v3, 0x8

    .line 2972
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_c
    if-nez p1, :cond_d

    .line 2976
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 2978
    :cond_d
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 2979
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    sub-int v1, v0, v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    .line 2980
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->updatePanTransition(FF)V

    .line 2981
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->stopPanTransition()V

    .line 2982
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 2983
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    .line 2986
    :cond_e
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 8

    .line 2409
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2410
    aget v6, v0, v1

    const/4 v1, 0x1

    .line 2411
    aget v0, v0, v1

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v7, v0, v1

    .line 2413
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v5, 0x33

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V
    .locals 5

    .line 2544
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2545
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 2549
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2550
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    .line 2551
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2552
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2553
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const v2, -0xd7d7d7

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 2554
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2565
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2570
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 2573
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    .line 2574
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2576
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    if-nez p1, :cond_2

    .line 2577
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 2578
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 2579
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2580
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2581
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2582
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2583
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2584
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2585
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2588
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

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

    .line 2590
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    and-int/lit8 p1, p3, 0x30

    if-eqz p1, :cond_3

    .line 2593
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr p4, p1

    .line 2594
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    .line 2596
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2597
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private showTypefaceMenu(Z)V
    .locals 5

    .line 1994
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    if-eq v0, p1, :cond_4

    .line 1995
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    .line 1997
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2001
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

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2002
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2003
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2004
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2005
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2002
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    .line 2008
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2012
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2020
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2030
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 11

    .line 2506
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v1, 0x43480000    # 200.0f

    if-eqz v0, :cond_0

    .line 2507
    iget v2, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v2

    :cond_0
    if-eqz p1, :cond_1

    .line 2511
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object p1

    .line 2512
    new-instance v0, Lorg/telegram/ui/Components/Point;

    iget v2, p1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v2, v1

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr p1, v1

    invoke-direct {v0, v2, p1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0

    :cond_1
    const/high16 p1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_2

    .line 2516
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr p1, v0

    .line 2518
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 2521
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 2522
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2523
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v5, :cond_3

    goto :goto_2

    .line 2526
    :cond_3
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 2527
    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v0, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v9, v0, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    return-object v0

    .line 2536
    :cond_6
    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v0, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v3, v1

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object v0, v2

    goto :goto_0
.end method

.method private switchTab(I)V
    .locals 5

    .line 1245
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1248
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1249
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1252
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object v0

    .line 1253
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    .line 1254
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1256
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    .line 1257
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1258
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1283
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$15;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$15;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1316
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

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
    .locals 15

    .line 3130
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v0, :cond_2

    .line 3131
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v1, :cond_0

    .line 3132
    sget v1, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3133
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v1, :cond_1

    .line 3134
    sget v1, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3136
    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    .line 3140
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v0, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v8

    :goto_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3141
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v0, :cond_4

    move v10, v1

    goto :goto_2

    :cond_4
    move v10, v8

    :goto_2
    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3143
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v3, v8

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v1

    :goto_4
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    .line 3144
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v10, v8

    goto :goto_6

    :cond_8
    :goto_5
    move v10, v1

    :goto_6
    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZFZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public adjustPanLayoutHelperProgress()F
    .locals 1

    .line 3328
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationProgress:F

    return v0
.end method

.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 2824
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected createEmojiView()V
    .locals 11

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 3149
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3150
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3152
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 3155
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

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    .line 3156
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    .line 3157
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3158
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3159
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 3161
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$21;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 3285
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_4

    .line 1120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    if-nez v0, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1123
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 1126
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1127
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1128
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

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

    .line 1135
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    .line 1136
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1137
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

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformX:F

    add-float/2addr v4, v6

    .line 1138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v0

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

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

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformY:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 1140
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

    .line 1143
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_5

    .line 1145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return p2
.end method

.method public getAdditionalBottom()I
    .locals 1

    const/16 v0, 0x18

    .line 1835
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getAdditionalTop()I
    .locals 1

    const/16 v0, 0x30

    .line 1830
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/util/ArrayList;[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1600
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1601
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    if-eqz v3, :cond_17

    .line 1602
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 1605
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    const/4 v0, 0x0

    :goto_0
    if-ge v7, v4, :cond_17

    .line 1608
    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1609
    instance-of v9, v8, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v9, :cond_0

    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    goto/16 :goto_6

    .line 1612
    :cond_0
    move-object v9, v8

    check-cast v9, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1613
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v10

    const/4 v13, 0x1

    if-eqz v2, :cond_11

    .line 1615
    new-instance v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v14}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 1616
    instance-of v15, v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const-wide/16 v16, 0x1388

    const/16 v18, 0x4

    if-eqz v15, :cond_9

    .line 1617
    iput-byte v13, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1618
    move-object v15, v9

    check-cast v15, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1619
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1620
    instance-of v12, v5, Landroid/text/Spanned;

    if-eqz v12, :cond_6

    .line 1621
    move-object v12, v5

    check-cast v12, Landroid/text/Spanned;

    .line 1622
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v12, v6, v11, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v11, :cond_5

    move v13, v6

    .line 1624
    :goto_1
    array-length v6, v11

    if-ge v13, v6, :cond_5

    .line 1625
    aget-object v6, v11, v13

    move-object/from16 v19, v0

    .line 1626
    iget-object v0, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_1

    .line 1628
    iget v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    :goto_2
    if-eqz v0, :cond_2

    .line 1631
    iget v10, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1634
    :cond_2
    new-instance v10, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v10}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    move-object v11, v3

    move/from16 v22, v4

    .line 1635
    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    iput-wide v3, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 1636
    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1637
    invoke-interface {v12, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    iput v3, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 1638
    invoke-interface {v12, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, v4

    iput v3, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 1639
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1640
    iget v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    .line 1642
    :cond_3
    iget-object v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    .line 1647
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1648
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    :cond_4
    add-int/lit8 v13, v13, 0x1

    move-object v3, v11

    move-object/from16 v0, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move/from16 v4, v22

    goto/16 :goto_1

    :cond_5
    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    move-object/from16 v20, v10

    .line 1653
    iget-object v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    goto :goto_3

    :cond_6
    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    move-object/from16 v20, v10

    .line 1657
    :goto_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1658
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result v0

    if-nez v0, :cond_7

    .line 1660
    iget-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v3, 0x1

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    goto :goto_4

    :cond_7
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 1662
    iget-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1664
    :cond_8
    :goto_4
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 1665
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTextSize()I

    move-result v0

    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 1666
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 1667
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result v0

    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_9
    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    move-object/from16 v20, v10

    .line 1669
    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_10

    const/4 v3, 0x0

    .line 1670
    iput-byte v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1671
    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 1672
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    .line 1673
    iget v4, v3, Lorg/telegram/ui/Components/Size;->width:F

    iput v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1674
    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1675
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iput-object v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1676
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getParentObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 1677
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 1678
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1679
    invoke-static {v3, v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1680
    :cond_a
    invoke-static {v3, v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    .line 1681
    iget-byte v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v3, :cond_b

    move/from16 v18, v5

    :cond_b
    or-int v4, v4, v18

    int-to-byte v4, v4

    iput-byte v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v3, :cond_c

    .line 1684
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getDuration()J

    move-result-wide v16

    :cond_c
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-eqz v3, :cond_d

    .line 1689
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 1690
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    .line 1694
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->isMirrored()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1695
    iget-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v3, 0x2

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1700
    :cond_e
    :goto_5
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 1702
    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v3

    .line 1703
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v4

    .line 1704
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v6

    .line 1705
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 1706
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 1707
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget-object v12, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v10, v12

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1708
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    iget-object v12, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v10, v12

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1709
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v13, v12, v0

    mul-float/2addr v10, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    add-float/2addr v10, v4

    iget-object v15, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v10, v15

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 1710
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v12, v3

    mul-float/2addr v10, v12

    div-float/2addr v10, v13

    add-float/2addr v10, v6

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v10, v3

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1711
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v3

    neg-float v3, v3

    float-to-double v12, v3

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v12, v15

    double-to-float v3, v12

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 1713
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    add-float/2addr v4, v3

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    iput v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 1714
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    add-float/2addr v6, v3

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    iput v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 1715
    iget v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v3, v3

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 1716
    iget v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v3, v3

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 1717
    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    const/4 v3, 0x0

    .line 1719
    aget-object v0, p2, v3

    if-nez v0, :cond_f

    .line 1720
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1721
    new-instance v0, Landroid/graphics/Canvas;

    aget-object v4, p2, v3

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1722
    invoke-virtual {v0, v11, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v19, v0

    :cond_f
    move v13, v5

    goto :goto_7

    :cond_10
    :goto_6
    move-object/from16 v0, v19

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_11
    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    move-object/from16 v20, v10

    const/4 v13, 0x0

    .line 1725
    :goto_7
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_8
    if-ge v4, v5, :cond_16

    if-nez v4, :cond_12

    move-object v6, v3

    goto :goto_9

    :cond_12
    move-object/from16 v6, v19

    :goto_9
    if-eqz v6, :cond_15

    if-nez v4, :cond_13

    if-eqz v13, :cond_13

    goto/16 :goto_c

    .line 1731
    :cond_13
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v10, v20

    .line 1732
    iget v0, v10, Lorg/telegram/ui/Components/Point;->x:F

    iget v12, v10, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v6, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1733
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v12

    invoke-virtual {v6, v0, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1734
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1735
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v0, v12

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    invoke-virtual {v6, v0, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1736
    instance-of v0, v8, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_14

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_14

    .line 1737
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v14, v15}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1738
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1739
    invoke-virtual {v8, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1740
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v1, 0x0

    invoke-direct {v15, v1, v1, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v6, v14, v5, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1742
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 1744
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1746
    :goto_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1748
    invoke-virtual {v8, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1750
    :goto_b
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_15
    :goto_c
    move-object/from16 v10, v20

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_d
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v20, v10

    goto/16 :goto_8

    :cond_16
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    :goto_e
    add-int/lit8 v7, v7, 0x1

    move v6, v1

    move-object v3, v11

    move/from16 v4, v22

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_17
    move-object v11, v3

    return-object v11
.end method

.method public getCancelView()Landroid/view/View;
    .locals 1

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    return-object v0
.end method

.method public getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object p1

    return-object p1
.end method

.method public getCropRotation()F
    .locals 2

    .line 2829
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

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

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    return-object v0
.end method

.method public getEmojiPadding(Z)I
    .locals 2

    .line 3041
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3042
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 3044
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3047
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_2

    .line 3048
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    return p1

    .line 3049
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    return p1
.end method

.method public getLcm()J
    .locals 2

    .line 1764
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

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

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_8

    .line 1919
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1920
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v5, :cond_2

    .line 1921
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v2, :cond_0

    .line 1923
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 1926
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1927
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1928
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v4, :cond_1

    new-array v4, v1, [B

    .line 1930
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 1932
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1933
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_7

    .line 1934
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1935
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1936
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 1937
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

    .line 1939
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 1940
    aget-object v6, v4, v5

    if-eqz v6, :cond_6

    .line 1943
    iget-object v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    goto :goto_2

    .line 1946
    :cond_3
    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    if-nez v2, :cond_4

    .line 1951
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1953
    :cond_4
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 1954
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1955
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1956
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v7, :cond_5

    new-array v7, v1, [B

    .line 1958
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 1960
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

    .line 1585
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->offsetTranslationY:F

    return v0
.end method

.method public getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 1

    .line 1840
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object v0
.end method

.method public getTransformedTouch(FF)[F
    .locals 11

    .line 2796
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 2797
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 2798
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2799
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->temp:[F

    float-to-double v3, p1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    float-to-double p1, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, p1

    sub-double/2addr v7, v9

    double-to-float v0, v7

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v7, v2

    add-float/2addr v0, v7

    const/4 v7, 0x0

    aput v0, v1, v7

    .line 2800
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->temp:[F

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr p1, v5

    add-double/2addr v3, p1

    double-to-float p1, v3

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 2801
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->temp:[F

    return-object p1
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$getView(Lorg/telegram/ui/Components/IPhotoPaintView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasChanges()Z
    .locals 1

    .line 1595
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 1779
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1780
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void

    .line 1784
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 1785
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    return-void

    .line 1789
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1790
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    .line 1794
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    return-void

    .line 1798
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1799
    sget p2, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    const-string v2, "PhotoEditorDiscardAlert"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1800
    sget p2, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    const-string v2, "DiscardChanges"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1801
    sget p2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1802
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1803
    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto :goto_0

    .line 1805
    :cond_4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onAddButtonPressed(Landroid/view/View;)V
    .locals 6

    .line 2376
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    .line 2405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/16 v3, 0x35

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p0

    .line 2376
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 3333
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    .line 3334
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3335
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 3336
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 3

    .line 1973
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1976
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    goto :goto_1

    .line 1974
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    .line 1978
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setDrawCenter(Z)V

    .line 1979
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_2

    .line 1980
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    .line 1982
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 1983
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1984
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1985
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCleanupEntities()V
    .locals 1

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public onColorPickerSelected()V
    .locals 1

    const/4 v0, 0x1

    .line 2131
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 3341
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    .line 3342
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3343
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    return-void
.end method

.method public onEmojiButtonClick()V
    .locals 2

    .line 2875
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    .line 2876
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2877
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    :cond_0
    xor-int/lit8 v1, v0, 0x1

    .line 2879
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    if-eqz v0, :cond_1

    .line 2880
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    .line 2881
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 2882
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 2789
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 2784
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method public onGetPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    .line 2606
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1423
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1428
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1430
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1431
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int p1, p5, p1

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->measureKeyboardHeight()I

    move-result p1

    add-int/2addr p1, p5

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p1, p3

    .line 1435
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p3, p2, p1, v0, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1438
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    if-nez p1, :cond_2

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1439
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    add-int/2addr p1, p2

    .line 1442
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p3}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    sub-int/2addr p5, p1

    const/16 p1, 0x30

    .line 1443
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr p5, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    const/16 p1, 0x8

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr p5, p1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalTop()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p5, p1

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p4}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1, p3, p5, p2, p4}, Landroid/view/TextureView;->layout(IIII)V

    .line 1446
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1, p3, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p3

    .line 1448
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p5

    .line 1449
    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p4, p1, p2, v0, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1, p3, p5, p2, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v0, 0x1

    .line 1358
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1359
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1360
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1362
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 1366
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x30

    .line 1367
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 1368
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 1369
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1370
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    .line 1373
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v4, v2

    move v2, v5

    :goto_0
    int-to-float v1, v1

    mul-float v5, v1, v4

    div-float/2addr v5, v2

    float-to-double v5, v5

    .line 1377
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    int-to-float v3, v3

    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-double v1, v2

    .line 1380
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v5, v3

    .line 1383
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    float-to-int v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    float-to-int v5, v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/TextureView;->measure(II)V

    .line 1384
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1386
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    .line 1387
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1388
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1389
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v2, v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v6, v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1390
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 1391
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 1393
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1394
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1395
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1396
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1397
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1399
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1400
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    const/4 v1, 0x0

    .line 1401
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1404
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    const/16 v3, 0x14

    if-nez v2, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isAnimatePopupClosing:Z

    if-nez v2, :cond_3

    .line 1405
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1406
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    .line 1407
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1410
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_1

    .line 1413
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    .line 1416
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_5

    .line 1417
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    :cond_5
    return-void
.end method

.method public onNewTextSelected()V
    .locals 1

    .line 2315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2318
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    goto :goto_1

    .line 2316
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onEmojiButtonClick()V

    :goto_1
    return-void
.end method

.method protected onOpenCloseStickersAlert(Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->redraw()V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/16 v0, 0x32

    .line 3069
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 3071
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    .line 3072
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 3074
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3075
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    const-string v2, "kbd_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3079
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 3080
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3082
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3083
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    .line 3084
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3085
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3086
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3088
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3089
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 3090
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    .line 3094
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    .line 3095
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    return-void

    .line 3098
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue1:I

    .line 3099
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue2:Z

    .line 3101
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    .line 3102
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 3103
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 3104
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    goto :goto_3

    .line 3106
    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    .line 3108
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_8

    .line 3109
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    .line 3111
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_9

    if-eq p1, p2, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez p1, :cond_9

    .line 3112
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3113
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    :cond_9
    if-eqz p2, :cond_a

    .line 3115
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz p1, :cond_a

    .line 3116
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3117
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 3118
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->stopPanTransition()V

    .line 3120
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_b

    .line 3121
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    .line 3122
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3124
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    .line 3126
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method protected onTextAdd()V
    .locals 0

    return-void
.end method

.method public onTextAlignmentSelected(I)V
    .locals 2

    .line 2332
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2333
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 2334
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentAlignment(I)V

    :cond_0
    return-void
.end method

.method public onTextOutlineSelected(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2137
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2139
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    .line 2156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    sub-int v6, p1, v0

    const/16 v4, 0x33

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p0

    .line 2139
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1812
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 1815
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    .line 1816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getTranslationY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalTop()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getAdditionalBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getScaleY()F

    move-result v3

    div-float/2addr v1, v3

    .line 1817
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getRotation()F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v4, v0

    float-to-double v6, v3

    .line 1818
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    float-to-double v0, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    double-to-float v3, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    add-float/2addr v3, v8

    .line 1819
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    double-to-float v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1821
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1822
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1823
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onTouch(Landroid/view/MotionEvent;)Z

    .line 1824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTypefaceButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 1990
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method public onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 2

    .line 2324
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTypeface(Ljava/lang/String;)V

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2326
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1350
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1353
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setOffsetTranslationY(FFIZ)V
    .locals 0

    .line 1569
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->offsetTranslationY:F

    if-nez p4, :cond_1

    .line 1571
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    neg-float p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1573
    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-nez p2, :cond_0

    .line 1574
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 1577
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1579
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setTransform(FFFFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 1845
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    .line 1846
    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    .line 1847
    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    .line 1848
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    .line 1849
    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    .line 1850
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformX:F

    .line 1851
    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationY:F

    add-float/2addr v3, v6

    .line 1852
    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformY:F

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_a

    if-nez v6, :cond_0

    .line 1857
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1859
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1861
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    goto :goto_1

    .line 1863
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    :goto_1
    const/4 v8, 0x0

    .line 1868
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_7

    .line 1869
    iget v8, v9, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v8, v10

    .line 1871
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1872
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v9, :cond_6

    if-nez v11, :cond_3

    goto :goto_2

    .line 1876
    :cond_3
    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v13, v12, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_4

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_5

    :cond_4
    move/from16 v16, v11

    move v11, v9

    move/from16 v9, v16

    :cond_5
    int-to-float v9, v9

    .line 1884
    iget v14, v12, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v14, v9

    float-to-int v14, v14

    int-to-float v11, v11

    .line 1885
    iget v12, v12, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v12, v11

    float-to-int v12, v12

    int-to-float v14, v14

    div-float v14, v4, v14

    int-to-float v12, v12

    div-float v12, v5, v12

    .line 1887
    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float/2addr v8, v12

    .line 1890
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v15, v14, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float/2addr v15, v9

    mul-float/2addr v15, v1

    mul-float/2addr v15, v12

    iget v9, v14, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v15, v9

    add-float/2addr v15, v2

    .line 1891
    iget v10, v14, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v10, v11

    mul-float/2addr v10, v1

    mul-float/2addr v10, v12

    mul-float/2addr v10, v9

    add-float/2addr v10, v3

    .line 1892
    iget v9, v14, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    int-to-float v11, v13

    add-float/2addr v9, v11

    move v11, v10

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    :goto_2
    return-void

    :cond_7
    if-nez v6, :cond_8

    .line 1895
    iget v9, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    goto :goto_3

    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    move v9, v10

    :goto_3
    move v15, v2

    move v11, v3

    move/from16 v16, v9

    move v9, v8

    move/from16 v8, v16

    :goto_4
    mul-float/2addr v8, v1

    .line 1901
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_5

    :cond_9
    move v10, v8

    .line 1904
    :goto_5
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleX(F)V

    .line 1905
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleY(F)V

    .line 1906
    invoke-virtual {v7, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 1907
    invoke-virtual {v7, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 1908
    invoke-virtual {v7, v9}, Landroid/view/View;->setRotation(F)V

    .line 1909
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1911
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1554
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda37;->INSTANCE:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda37;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    const v1, -0xe6e6e7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateZoom(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 990
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    if-eq v1, v0, :cond_1

    .line 991
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

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
