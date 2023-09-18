.class public Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "LPhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/IPhotoPaintView;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
.implements Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


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
.method public static synthetic $r8$lambda$-NWfmAzEVD97lzWEz6L9O-Cyu64(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$detectFaces$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$-SF10BWopmcVIuDBchiavJc4r4c(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$buttonForPopup$27(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0Ve7rj6_TzOD7jao5o36qwRvxO8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$0rZc7S6fhEnqT059fuxG-K9wVgE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showTypefaceMenu$23(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$2leOJqYwPGyn0Ayt1LnibAKx4_A(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$hideEmojiPopup$40(ZILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4nKqG5tb5tI4oGkGAXYKASQXRZ8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showTypefaceMenu$24(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$6M99TC_4s1cBJT_Q_6Gyjwq9ivg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$7(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8XAeL0hcIIsRuhhNFPcvdvyxSxE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$29(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9tgc9k7MupWrwFBFPAcFs6bLIQg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AEWjU2KziRlO0UfcW51-QeBj3dY(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$0(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C-FdmWvp0LttMp4LIgI35WsHut8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$36(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7W_nsekRdFj5h8PvARxC9wEWiE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$34(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G4zVfk1PrEOpUJPCi9OyLCOAfWA(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$35(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HAHTZClmO82m8OU3Xwd97CYQmtw(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showPopup$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$JeOd6VUO9Ao4SQAruk_VmDSPUig(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$9(ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NWF-YqOMF-QZUCuei4em1LmpbIA(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NXdXhLKuiES1pZHsU5iWZyBUAfU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$18(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QenSJ8-bLuu0X8qWqohXzloMjuI(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SRes0jrkQ11z7qHHCH7lfZ12Mh4()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$shutdown$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$SV5f2WkH3cpr7N8K25fbIKsGY3A(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showEmojiPopup$39(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SezjTBirdloNqXofSEMaosfAVvc(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ui8HS40s8Hb2xUmrG6k8LaxDvJg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V3QrKrOx0HY9fDtfgNeohHduOUI(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$registerRemovalUndo$38(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VqCYleetEvm2jL3zcYFB3127oyM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setNewColor$12(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3RJi8JJvbFZdx2ko2ydKeopQUo(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$setupTabsLayout$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_HGB59F38zV0scorrM7Pf5o_TfY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$anyHtmUCjPmg8NfiPExiUPz6tDY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bXX-XMFdHXjyYC3Wncz37OiXvI8(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eBItFW9IV0p3wmZQnAB63Ls-2mM(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ga1IkGBzIxOPVo3PoO3vHBpkBUg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$8(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mXL6m5zQLj8ORZ55D5ILk_eog4o(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$pPiXqlqbDlaHaMjmSxnIb2wApKU(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showColorList$26(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$pcWxFoEoMeZhU8wN2N-ZKXXqIZY(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showColorList$25(Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzIY5LGVKdYsuYJ2JK9jgP3IcVE(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$onAddButtonPressed$28(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rtIJsTRNmUoNhSw7dwlC8JLrUl0(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$openStickersView$19(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sJE8n-dp11TaqEOoARwwelC67Mc(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$31(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sc72yFNQKZxig8aPceTg6EojU2Y(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$u39aYQ03iI8uUIscbXT8u3jxIbg(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$switchTab$16(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uo9EMoeSpUeew0fbdpHg39y2zdc(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$maybeShowDismissalAlert$22(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wEIvBp9w7vLALn5UC9BYoCa7olw(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$new$10(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdIfcLxmSborUOpuh6pLiBkaM3I(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lambda$showMenuForEntity$33(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
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

    move/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v0, p6

    move-object/from16 v10, p7

    const/4 v11, 0x1

    move-object/from16 v1, p2

    .line 208
    invoke-direct {v6, v7, v1, v11}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    const/4 v12, 0x0

    .line 134
    iput v12, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v13, -0x1

    .line 135
    iput v13, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    .line 142
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    .line 179
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    .line 180
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    .line 186
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    .line 187
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    .line 188
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    .line 189
    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v14, 0x3f800000    # 1.0f

    const v2, 0x3c896918

    invoke-direct {v1, v13, v14, v2}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 195
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    .line 971
    iput-boolean v12, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    const/4 v15, 0x2

    new-array v1, v15, [I

    .line 2800
    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos:[I

    .line 2848
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$17;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 3287
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$21;

    invoke-direct {v1, v6, v6, v12}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$21;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    .line 209
    invoke-virtual {v6, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    .line 211
    iput v8, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    .line 212
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda37;

    move-object/from16 v2, p10

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v1, p8

    .line 258
    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 260
    instance-of v1, v7, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    .line 262
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    .line 263
    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getColor(I)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 264
    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentWeight()F

    move-result v1

    iput v1, v2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 266
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v2, "Paint"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    move-object/from16 v1, p4

    .line 268
    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 269
    iput-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    .line 270
    iput v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->originalBitmapRotation:I

    .line 271
    new-instance v1, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 272
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda38;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    .line 282
    new-instance v5, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    invoke-direct {v3, v1, v9, v0}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;I)V

    iget-object v4, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v14, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 293
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$3;

    move-object/from16 v1, p9

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    .line 340
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    .line 341
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    .line 342
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 343
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/16 v2, 0x33

    invoke-static {v13, v13, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$4;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$4;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-static {v13, v13, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$5;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$5;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-direct {v0, v6, v7, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    .line 427
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v10, :cond_4

    .line 429
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 430
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v12

    :goto_0
    if-ge v2, v0, :cond_4

    .line 431
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 433
    iget-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez v4, :cond_1

    .line 434
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v6, v4, v5, v12}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    move-result-object v4

    .line 435
    iget-byte v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/2addr v5, v15

    if-eqz v5, :cond_0

    .line 436
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 439
    :cond_0
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 440
    iget v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 441
    iget v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 p6, v2

    goto :goto_2

    :cond_1
    if-ne v4, v11, :cond_3

    .line 443
    invoke-direct {v6, v12}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    move-result-object v4

    .line 444
    iget-byte v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 445
    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    .line 446
    iget v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setBaseFontSize(I)V

    .line 447
    new-instance v5, Landroid/text/SpannableString;

    iget-object v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v5, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v14, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 449
    new-instance v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move/from16 p6, v2

    iget-wide v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    invoke-direct {v13, v1, v2, v15}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    iget v1, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v2, v1

    const/16 v11, 0x21

    invoke-virtual {v5, v13, v1, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move/from16 v2, p6

    const/4 v1, 0x4

    const/4 v11, 0x1

    const/4 v13, -0x1

    const/4 v15, 0x2

    goto :goto_1

    :cond_2
    move/from16 p6, v2

    .line 452
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontSize()F

    move-result v2

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-static {v5, v1, v2, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 453
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-direct {v6, v4, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 455
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    .line 456
    iget v2, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 457
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 462
    :goto_2
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

    .line 463
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

    .line 464
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

    .line 465
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 466
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 467
    iget v1, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v1, v1

    float-to-double v1, v1

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v14

    double-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_3

    :cond_3
    move/from16 p6, v2

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_3
    add-int/lit8 v2, p6, 0x1

    const/4 v1, 0x4

    const/4 v11, 0x1

    const/4 v13, -0x1

    const/4 v15, 0x2

    goto/16 :goto_0

    .line 470
    :cond_4
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$7;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$7;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    .line 479
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 481
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0xc

    .line 482
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 483
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    .line 487
    sget v3, Lorg/telegram/messenger/R$drawable;->photo_undo2:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
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

    .line 489
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const v3, 0x40ffffff    # 7.9999995f

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda11;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 500
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 501
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

    .line 503
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    .line 504
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 505
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const v5, 0x30ffffff

    const/4 v10, 0x7

    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v0, v13, v12, v14, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 507
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/4 v13, -0x1

    .line 508
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const-string v13, "fonts/rmedium.ttf"

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 510
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->PhotoEditorZoomOut:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutImage:Landroid/widget/ImageView;

    .line 513
    sget v15, Lorg/telegram/messenger/R$drawable;->photo_zoomout:I

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
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

    .line 515
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutText:Landroid/widget/TextView;

    const/16 v15, 0x10

    invoke-static {v1, v1, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 517
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    sget-object v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda18;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x20

    const/16 v4, 0x11

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    .line 523
    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 525
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorClearAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 527
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 529
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 530
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda12;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 544
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    const/16 v17, -0x2

    const/16 v18, 0x20

    const/16 v19, 0x5

    const/16 v22, 0x4

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    .line 547
    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 550
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 551
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 552
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 553
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 554
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda13;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 565
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelTextButton:Landroid/widget/TextView;

    const/16 v19, 0x33

    const/16 v20, 0x4

    const/16 v22, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    .line 569
    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 572
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 573
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 575
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 576
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda14;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 580
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneTextButton:Landroid/widget/TextView;

    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v22, 0x4

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    .line 691
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 692
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x68

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v12

    :goto_4
    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    .line 696
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 697
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintToolsView$Delegate;)V

    .line 699
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 700
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    .line 703
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v12, v2, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 704
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 705
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$Delegate;)V

    .line 706
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 707
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$9;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$9;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    .line 745
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    .line 748
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 749
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda39;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 755
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypefaceListView(Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;)V

    .line 756
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

    .line 758
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 759
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 762
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 764
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$10;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    .line 786
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 787
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorPalette(Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V

    .line 788
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda22;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setColorListener(Landroidx/core/util/Consumer;)V

    .line 792
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

    .line 794
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setupTabsLayout(Landroid/content/Context;)V

    .line 796
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    .line 797
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 798
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 799
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

    .line 801
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    .line 802
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 803
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda16;

    invoke-direct {v1, v6, v7, v9, v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x55

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x4

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    .line 875
    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setColorSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 876
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 877
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 878
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 879
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda31;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setOnUpdate(Ljava/lang/Runnable;)V

    .line 883
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    .line 886
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 889
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 891
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 893
    sget-object v0, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updateColors()V

    .line 896
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_6

    new-array v0, v1, [Landroid/graphics/Rect;

    .line 897
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

    :cond_6
    return-void

    nop

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

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorPickerRainbowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/ViewGroup;
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)Landroid/view/View;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatchOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuOutlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)I
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Ljava/lang/Runnable;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;FF)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    return-void
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationY:F

    return p1
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewWasVisible:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F
    .locals 0

    .line 100
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;F)F
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationProgress:F

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/View;
    .locals 0

    .line 100
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    return-object p0
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 4

    .line 2603
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2604
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private bottomPanelTranslationY(FF)V
    .locals 7

    .line 3022
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

    .line 3023
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationY:F

    mul-float/2addr v0, v1

    .line 3024
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationProgress:F

    .line 3025
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->updatePanTransition(FF)V

    .line 3026
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTransform(FFFFF)V

    .line 3027
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;
    .locals 2

    .line 2150
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    .line 2151
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(I)V

    .line 2152
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setSelected(Z)V

    if-eqz p4, :cond_0

    .line 2155
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

    .line 2624
    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2625
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2626
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 2627
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2634
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v4, 0x3f400000    # 0.75f

    if-eqz v3, :cond_2

    .line 2635
    iget v5, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v5, v5

    iget v6, v3, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v5, v6

    neg-float v5, v5

    .line 2636
    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v4, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2641
    :goto_2
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v6

    invoke-direct {v3, v6, v4, v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/Point;FF)V

    if-eqz v2, :cond_5

    .line 2642
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 2645
    :cond_3
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 2647
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {v0, v4, v5, v6, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v3

    .line 2652
    :cond_4
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 2653
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v4

    .line 2654
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result v1

    .line 2655
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    .line 2657
    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float v5, v4, v5

    float-to-double v5, v5

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    mul-double/2addr v5, v7

    double-to-float v5, v5

    float-to-double v6, v1

    .line 2659
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v10, v8, v6

    .line 2660
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v4

    mul-double/2addr v12, v14

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v12, v8

    double-to-float v4, v12

    .line 2661
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v14

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v6, v9

    .line 2663
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v14

    iget-wide v11, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v9, v11

    double-to-float v9, v9

    .line 2664
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v14

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v6, v10

    double-to-float v2, v6

    .line 2666
    iget v6, v3, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v6, v4

    add-float/2addr v6, v9

    .line 2667
    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v3, v8

    add-float/2addr v3, v2

    .line 2669
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

    .line 2608
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    .line 2609
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2610
    iget v3, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v3, v2

    .line 2611
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v2, :cond_0

    .line 2612
    iget v4, v2, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v4, v4

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v4, v2

    neg-float v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 2613
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

    .line 2614
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

    .line 2615
    iget v5, v0, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 2616
    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 2618
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0
.end method

.method private createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .locals 11

    .line 2723
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$StickerPosition;

    move-result-object v0

    .line 2724
    new-instance v10, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;

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

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 2730
    iget-object p1, v10, Lorg/telegram/ui/Components/Paint/Views/StickerView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 2731
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

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 2732
    invoke-virtual {v10, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    .line 2734
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

    .line 2735
    invoke-virtual {v10, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    .line 2737
    :cond_1
    invoke-virtual {v10, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2738
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_2

    .line 2740
    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2741
    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_2
    return-object v10
.end method

.method private createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .locals 10

    .line 917
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onTextAdd()V

    .line 919
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    const/4 v1, 0x0

    .line 920
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    .line 921
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

    .line 922
    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 923
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyX(I)V

    .line 925
    :cond_0
    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 926
    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyY(I)V

    .line 928
    :cond_1
    invoke-virtual {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 929
    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 930
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    .line 931
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTextType()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, -0x2

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 934
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v0

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    add-float/2addr v1, v0

    neg-float v0, v1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    :cond_2
    if-eqz p1, :cond_3

    .line 939
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 941
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    const/4 p1, 0x0

    .line 942
    invoke-direct {p0, v9, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 943
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 944
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 p1, 0x1

    .line 945
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentAlignment()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(IZ)V

    .line 947
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

    .line 1491
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private duplicateSelectedEntity()V
    .locals 4

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2478
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 2480
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v3, :cond_1

    .line 2481
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    .line 2482
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2483
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2485
    :cond_1
    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_2

    .line 2486
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    .line 2487
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 2488
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 2489
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2493
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2494
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private editSelectedTextEntity()V
    .locals 2

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 962
    :cond_0
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v1, 0x1

    .line 963
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 965
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    .line 966
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v0

    .line 967
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 968
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getBarView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1223
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1225
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBarView()Landroid/view/ViewGroup;
    .locals 2

    .line 1136
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

    .line 2802
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pos:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2803
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

    .line 2804
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

    .line 2805
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

    .line 2806
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    float-to-double v7, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v5, v9

    double-to-float p1, v5

    .line 2807
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v7, v0

    add-double/2addr v3, v7

    double-to-float v0, v3

    .line 2808
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

    .line 2809
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

    .line 1478
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

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    return-object v0

    .line 1442
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1443
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1446
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

    .line 1458
    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/Size;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    int-to-float v2, v2

    .line 1459
    iput v2, v3, Lorg/telegram/ui/Components/Size;->width:F

    mul-float v4, v2, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    .line 1460
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    .line 1462
    iput v2, v3, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    float-to-double v0, v2

    .line 1463
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v3, Lorg/telegram/ui/Components/Size;->width:F

    .line 1465
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

    .line 2674
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2678
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2679
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    move v3, v1

    :goto_0
    if-lez v3, :cond_2

    .line 2684
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move-wide v8, p2

    move-object v10, p4

    .line 2685
    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2683
    rem-int/2addr v2, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2594
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hideEmojiPopup(Z)V
    .locals 6

    .line 2981
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2982
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    :cond_0
    if-eqz p1, :cond_2

    .line 2985
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_1

    .line 2986
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

    .line 2987
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2988
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    .line 2989
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    .line 2990
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v5, v4, p1

    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    .line 2991
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;ZI)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2998
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isAnimatePopupClosing:Z

    .line 2999
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$19;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$19;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xfa

    .line 3011
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3012
    sget-object p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3013
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3015
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideEmojiView()V
    .locals 2

    .line 3044
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3045
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3047
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    return-void
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 9

    .line 2694
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 2699
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result p1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, v2

    move v2, v1

    .line 2701
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2702
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2703
    instance-of v4, v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v4, :cond_1

    goto :goto_1

    .line 2707
    :cond_1
    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 2708
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_1

    .line 2712
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 2713
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

    .line 2714
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

    .line 1487
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

.method private static synthetic lambda$buttonForPopup$27(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 2155
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$detectFaces$20()V
    .locals 9

    const/4 v0, 0x0

    .line 1494
    :try_start_0
    new-instance v1, Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1495
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    .line 1496
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1497
    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->build()Lcom/google/android/gms/vision/face/FaceDetector;

    move-result-object v0

    .line 1498
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->isOperational()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1499
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "face detection is not operational"

    .line 1500
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1528
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    .line 1505
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

    .line 1508
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/face/FaceDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1513
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    .line 1515
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1516
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1517
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/face/Face;

    .line 1518
    new-instance v6, Lorg/telegram/ui/Components/Paint/PhotoFace;

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isSidewardOrientation()Z

    move-result v8

    invoke-direct {v6, v5, v7, v4, v8}, Lorg/telegram/ui/Components/Paint/PhotoFace;-><init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V

    .line 1519
    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/PhotoFace;->isSufficient()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1520
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1523
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->faces:Ljava/util/ArrayList;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1510
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1528
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1525
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 1528
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    :cond_4
    return-void

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->release()V

    .line 1530
    :cond_5
    throw v1
.end method

.method private synthetic lambda$hideEmojiPopup$40(ZILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2992
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2993
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    if-nez p1, :cond_0

    int-to-float p1, p2

    sub-float p2, p3, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p3, p1

    sub-float/2addr v0, p3

    .line 2995
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$maybeShowDismissalAlert$22(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1795
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 3

    .line 213
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    if-ne p1, v0, :cond_0

    const p0, -0xd7d7d7

    return p0

    .line 215
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 217
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    if-ne p1, v0, :cond_2

    const p0, -0xe1e1e2

    return p0

    .line 219
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    if-ne p1, v0, :cond_3

    const p0, -0x9090a

    return p0

    .line 221
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    if-ne p1, v0, :cond_4

    const p0, -0x828283

    return p0

    .line 223
    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    if-ne p1, v0, :cond_5

    const/high16 p0, -0x1000000

    return p0

    .line 225
    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    if-ne p1, v0, :cond_6

    const/high16 p0, -0x60000000

    return p0

    .line 227
    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    const v2, -0x919191

    if-ne p1, v0, :cond_7

    return v2

    .line 229
    :cond_7
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    if-ne p1, v0, :cond_8

    return v2

    .line 231
    :cond_8
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    if-ne p1, v0, :cond_9

    return v2

    .line 233
    :cond_9
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    if-ne p1, v0, :cond_a

    const p0, -0x9b4a11

    return p0

    .line 235
    :cond_a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    if-ne p1, v0, :cond_b

    return v1

    .line 237
    :cond_b
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    if-ne p1, v0, :cond_c

    const p0, -0xb35a11

    return p0

    .line 239
    :cond_c
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    if-ne p1, v0, :cond_d

    const p0, 0x1fffffff

    return p0

    .line 241
    :cond_d
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    if-ne p1, v0, :cond_e

    return v1

    .line 243
    :cond_e
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    if-ne p1, v0, :cond_f

    return v1

    .line 245
    :cond_f
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    if-ne p1, v0, :cond_10

    return v1

    .line 247
    :cond_10
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    if-ne p1, v0, :cond_11

    const p0, 0x14ffffff

    return p0

    :cond_11
    if-eqz p0, :cond_12

    .line 253
    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p0

    return p0

    .line 255
    :cond_12
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$1()V
    .locals 7

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 275
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

    .line 276
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 278
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

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoAllButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/view/View;)V
    .locals 1

    .line 805
    iget-boolean p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz p4, :cond_0

    .line 806
    new-instance p4, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p4, p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColor(I)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;

    invoke-direct {p4, p0, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$11;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setPipetteDelegate(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$PipetteDelegate;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    .line 860
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->setColorListener(Landroidx/core/util/Consumer;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    move-result-object p1

    .line 865
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->show()V

    return-void

    .line 868
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onDoneButtonClickedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 869
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$11(I)V
    .locals 2

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 881
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 494
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    goto :goto_0

    .line 496
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->undo()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 518
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer;->zoomOut()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 1

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_1

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearShape()V

    .line 536
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->setSelectedIndex(I)V

    .line 537
    sget-object p1, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 539
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->clearAll()V

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->reset()V

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 555
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 556
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 558
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 559
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    .line 561
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x0

    .line 562
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 577
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;I)V
    .locals 1

    .line 750
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 751
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 p1, 0x0

    .line 753
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Integer;)V
    .locals 0

    .line 789
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    const/4 p1, 0x0

    .line 790
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(ILjava/lang/Integer;)V
    .locals 2

    .line 861
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 862
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 863
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$28(Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V
    .locals 1

    .line 2372
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2373
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    .line 2375
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 2376
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintToolsView:Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintToolsView;->animatePlusToIcon(I)V

    return-void
.end method

.method private synthetic lambda$onAddButtonPressed$29(Landroid/view/View;)Z
    .locals 4

    .line 2379
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2380
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->toggleFillShapes()V

    .line 2381
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result p1

    const/4 v1, 0x0

    .line 2382
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2383
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 2384
    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    if-eqz v3, :cond_1

    .line 2385
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz p1, :cond_0

    .line 2386
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v3

    .line 2387
    :goto_1
    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    invoke-virtual {v2, v3, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;->setIcon(IZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onAddButtonPressed$30()V
    .locals 7

    .line 2367
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2368
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2369
    sget-object v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;->SHAPES_LIST:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_0

    .line 2370
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getFilledIconRes()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush;->getIconRes()I

    move-result v4

    .line 2371
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda32;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Brush$Shape;I)V

    invoke-direct {p0, v5, v4, v1, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->buttonForPopup(Ljava/lang/String;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$PopupButton;

    move-result-object v3

    .line 2378
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2393
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

.method private synthetic lambda$openStickersView$17()V
    .locals 1

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->facesBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1309
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->detectFaces()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openStickersView$18(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    const/4 v0, 0x1

    .line 1320
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createSticker(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/Components/Paint/Views/StickerView;

    return-void
.end method

.method private synthetic lambda$openStickersView$19(ILandroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1322
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onOpenCloseStickersAlert(Z)V

    .line 1323
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    return-void
.end method

.method private synthetic lambda$registerRemovalUndo$38(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 2770
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method private synthetic lambda$setNewColor$12(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 908
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 911
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$13(Landroid/view/View;)V
    .locals 0

    .line 1181
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1182
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1184
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupTabsLayout$14(Landroid/view/View;)V
    .locals 0

    .line 1193
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openStickersView()V

    return-void
.end method

.method private synthetic lambda$setupTabsLayout$15(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 1213
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1214
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1215
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showColorList$25(Landroid/view/View;Z[ZFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float/2addr p6, p5

    .line 2048
    iput p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float p6, p5, p6

    const p7, 0x3ecccccd    # 0.4f

    mul-float/2addr p6, p7

    const p7, 0x3f19999a    # 0.6f

    add-float/2addr p6, p7

    .line 2051
    invoke-virtual {p1, p6}, Landroid/view/View;->setScaleX(F)V

    .line 2052
    invoke-virtual {p1, p6}, Landroid/view/View;->setScaleY(F)V

    const/16 p6, 0x10

    .line 2053
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

    .line 2054
    iget p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    div-float/2addr p6, v0

    sub-float p6, p5, p6

    invoke-virtual {p1, p6}, Landroid/view/View;->setAlpha(F)V

    .line 2056
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setProgress(FZ)V

    .line 2058
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7}, Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;->setProgress(F)V

    .line 2059
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    iget p7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    invoke-virtual {p6, p7}, Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;->setProgress(F)V

    .line 2061
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/16 p7, 0x20

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p7

    int-to-float p7, p7

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    mul-float/2addr p7, v0

    invoke-virtual {p6, p7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2062
    iget-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {p6}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result p6

    const/4 p7, 0x0

    if-eqz p6, :cond_0

    .line 2063
    aput-boolean p7, p3, p7

    .line 2065
    :cond_0
    aget-boolean p3, p3, p7

    if-eqz p3, :cond_3

    .line 2066
    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformProgress:F

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sub-float p3, p5, p3

    .line 2067
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

    .line 2069
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2071
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-ne p1, p2, :cond_4

    .line 2072
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$showColorList$26(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2076
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 2077
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2080
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2081
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->saveColors()V

    .line 2082
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showEmojiPopup$39(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2932
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2933
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2935
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float v0, v0

    div-float v0, p2, v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$31(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/view/View;)V
    .locals 0

    .line 2417
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 2419
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2420
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$32(Landroid/view/View;)V
    .locals 1

    .line 2436
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editSelectedTextEntity()V

    .line 2438
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2439
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$33(Landroid/view/View;)V
    .locals 1

    .line 2455
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->duplicateSelectedEntity()V

    .line 2457
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2458
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenuForEntity$34(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 11

    .line 2404
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2405
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2407
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2408
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2409
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x10

    .line 2410
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2411
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v2, v5, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    .line 2412
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2414
    sget v8, Lorg/telegram/messenger/R$string;->PaintDelete:I

    const-string v9, "PaintDelete"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2415
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2416
    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda17;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, -0x2

    const/16 v9, 0x30

    .line 2423
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_0

    .line 2426
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2427
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2428
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2429
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2430
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {p1, v2, v1, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2431
    invoke-virtual {p1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2432
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2433
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2434
    sget v2, Lorg/telegram/messenger/R$string;->PaintEdit:I

    const-string v10, "PaintEdit"

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2435
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2442
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2445
    :cond_0
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2446
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2447
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2448
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2449
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2450
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2451
    invoke-virtual {p1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x2

    .line 2452
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2453
    sget v1, Lorg/telegram/messenger/R$string;->PaintDuplicate:I

    const-string v2, "PaintDuplicate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2454
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2461
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2463
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2465
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2466
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2467
    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2468
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$showPopup$35(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2548
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2549
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2550
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2551
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

    .line 2552
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$36(Landroid/view/KeyEvent;)V
    .locals 2

    .line 2559
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

    .line 2560
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$37()V
    .locals 1

    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$23(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    .line 2007
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    .line 2008
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2009
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 2010
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2012
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getTypefaceCell()Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView$TypefaceCell;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showTypefaceMenu$24(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 2015
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 2016
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 2019
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2021
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;->setMaskProvider(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$shutdown$21()V
    .locals 1

    .line 1541
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchTab$16(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1244
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionProgress:F

    .line 1245
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1246
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1247
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p3, 0x0

    .line 1249
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge p3, v0, :cond_2

    .line 1250
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

    .line 1252
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

    .line 1256
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1257
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    const/16 v4, 0x10

    .line 1258
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1259
    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v6

    sub-float v5, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr p3, v1

    add-float/2addr p3, v2

    .line 1262
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 1263
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 1264
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr p1, p3

    div-float/2addr p1, v6

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1265
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

    .line 3051
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    return-void
.end method

.method private openStickersView()V
    .locals 9

    .line 1305
    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    const/4 v7, 0x1

    .line 1306
    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1307
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1312
    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$15;

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

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$15;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/16 v0, 0x1c

    .line 1319
    invoke-virtual {v8, v0, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->setImageReceiverNumLevel(II)V

    .line 1320
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->setDelegate(Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;)V

    .line 1321
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1325
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1326
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onOpenCloseStickersAlert(Z)V

    return-void
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2

    .line 2747
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_1

    if-eqz v0, :cond_1

    .line 2748
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    const/4 v0, 0x0

    .line 2749
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 2751
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    .line 2752
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-eqz v1, :cond_0

    .line 2753
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2755
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 2758
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 2760
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    .line 2763
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 2764
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 2765
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2766
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 983
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    move-result p1

    return p1
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 6

    .line 990
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

    .line 991
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    if-eq v3, v1, :cond_2

    .line 992
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 994
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz v3, :cond_3

    .line 995
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    .line 997
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    :cond_4
    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 1003
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

    .line 1015
    :cond_6
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setAlignment(I)V

    .line 1016
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result p2

    invoke-virtual {v1, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(IZ)V

    .line 1018
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1021
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p2, :cond_c

    if-ne p2, p1, :cond_a

    .line 1023
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-nez p1, :cond_8

    .line 1024
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    goto :goto_1

    .line 1025
    :cond_8
    instance-of p1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_9

    .line 1026
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1027
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    :cond_9
    :goto_1
    return v3

    .line 1031
    :cond_a
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 1032
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_b

    .line 1033
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    if-nez v0, :cond_b

    .line 1035
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    .line 1036
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1037
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    :cond_b
    move p2, v3

    goto :goto_2

    :cond_c
    move p2, v2

    .line 1044
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1045
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1046
    instance-of p1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p1, :cond_d

    .line 1047
    move-object p1, v0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1048
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1049
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1053
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz p1, :cond_f

    .line 1054
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    .line 1055
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1057
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of p2, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p2, :cond_e

    .line 1058
    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1059
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v0, p2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1060
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p2

    invoke-direct {p0, p2, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1062
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget p2, p2, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$12;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$12;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    goto :goto_3

    .line 1076
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1077
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1078
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1079
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_3

    .line 1084
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-eqz v0, :cond_10

    .line 1085
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1087
    :cond_10
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz p1, :cond_11

    .line 1088
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    .line 1090
    :cond_11
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->switchTab(I)V

    .line 1092
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V

    .line 1093
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setShowPreview(Z)V

    .line 1094
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1095
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    move v3, p2

    :goto_3
    return v3
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 3

    .line 2096
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    if-eq v0, p1, :cond_0

    .line 2097
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 2098
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    .line 2099
    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 2101
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->selectColor(I)V

    .line 2102
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentWeight(F)V

    .line 2105
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    .line 2106
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    if-eqz p2, :cond_1

    .line 2109
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 2110
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2114
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_2

    .line 2115
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

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    .line 903
    iput p1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    const/4 v2, 0x1

    .line 904
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 906
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 907
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;II)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 913
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

    .line 2329
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

    .line 2345
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    .line 2346
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_6

    if-eq p2, v1, :cond_4

    const/4 v0, 0x3

    if-eq p2, v2, :cond_3

    .line 2351
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_5

    :cond_2
    move v2, v0

    goto :goto_1

    .line 2357
    :cond_3
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    .line 2360
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

    .line 2290
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    .line 2291
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_3

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 2292
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v1, :cond_0

    .line 2293
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2294
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v0, :cond_2

    .line 2295
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setNewColor(I)V

    .line 2297
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    .line 2299
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTextType(I)V

    .line 2300
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setOutlineType(I)V

    return-void
.end method

.method private setupTabsLayout(Landroid/content/Context;)V
    .locals 14

    .line 1140
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$13;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1167
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1169
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

    .line 1171
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    .line 1172
    sget v2, Lorg/telegram/messenger/R$string;->PhotoEditorDraw:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v0, v1, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda7;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->drawTab:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    .line 1190
    sget v9, Lorg/telegram/messenger/R$string;->PhotoEditorSticker:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v0, v1, v9, v1, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1195
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->stickerTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    .line 1203
    sget p1, Lorg/telegram/messenger/R$string;->PhotoEditorText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getThemedColor(I)I

    move-result v0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1205
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1206
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1207
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1208
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1209
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1210
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1211
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 1212
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textTab:Landroid/widget/TextView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showColorList(Z)V
    .locals 9

    .line 2030
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eq v0, p1, :cond_5

    .line 2031
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 2034
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 2037
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

    .line 2038
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    move v2, v3

    .line 2039
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 2040
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2041
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 2038
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x1

    new-array v5, v0, [Z

    .line 2043
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

    .line 2044
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    .line 2046
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda27;

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Z[ZF)V

    invoke-virtual {v0, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2075
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2086
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p1, :cond_5

    .line 2089
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorsListView:Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->setSelectedColorIndex(I)V

    :cond_5
    return-void
.end method

.method private showEmojiPopup(I)V
    .locals 10

    .line 2878
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    const/4 v1, 0x0

    .line 2879
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    .line 2881
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    .line 2882
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createEmojiView()V

    .line 2884
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 2886
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    .line 2887
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 2889
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    const/16 v6, 0x96

    const/16 v7, 0xc8

    if-gtz v5, :cond_2

    .line 2890
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2891
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    goto :goto_1

    .line 2893
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const-string v9, "kbd_height"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 2896
    :cond_2
    :goto_1
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    if-gtz v5, :cond_4

    .line 2897
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2898
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_2

    .line 2900
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const-string v7, "kbd_height_land3"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    .line 2903
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

    .line 2905
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2906
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2907
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2908
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v6, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v6, :cond_6

    .line 2909
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v4

    .line 2910
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2913
    :cond_6
    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 2914
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 2916
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2918
    sget-object v5, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 2920
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    if-nez p1, :cond_e

    .line 2923
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    .line 2924
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    .line 2925
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

    .line 2929
    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    int-to-float v4, v4

    aput v4, p1, v1

    aput v2, p1, v3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2930
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    sub-int v3, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    .line 2931
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2938
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$18;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 2948
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2949
    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2950
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 2955
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getEmojiButton()Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2957
    sget-object v4, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;->setState(Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Z)V

    .line 2959
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_c

    .line 2961
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    .line 2962
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v3, :cond_b

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v3, :cond_c

    :cond_b
    const/16 v3, 0x8

    .line 2963
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_c
    if-nez p1, :cond_d

    .line 2967
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 2969
    :cond_d
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 2970
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    sub-int v1, v0, v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->startPanTransition(II)V

    .line 2971
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->updatePanTransition(FF)V

    .line 2972
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->stopPanTransition()V

    .line 2973
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 2974
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    .line 2977
    :cond_e
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 8

    .line 2399
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2400
    aget v6, v0, v1

    const/4 v1, 0x1

    .line 2401
    aget v0, v0, v1

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v7, v0, v1

    .line 2403
    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda33;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v5, 0x33

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V
    .locals 5

    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2538
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 2542
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2543
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupRect:Landroid/graphics/Rect;

    .line 2544
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 2545
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 2546
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const v2, -0xd7d7d7

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 2547
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2558
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 2563
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 2566
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    .line 2567
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2569
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x2

    if-nez p1, :cond_2

    .line 2570
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 2571
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 2572
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2573
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2574
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2575
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2576
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 2577
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2578
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2581
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

    .line 2583
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    and-int/lit8 p1, p3, 0x30

    if-eqz p1, :cond_3

    .line 2586
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr p4, p1

    .line 2587
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    .line 2589
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2590
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method private showTypefaceMenu(Z)V
    .locals 5

    .line 1988
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    if-eq v0, p1, :cond_4

    .line 1989
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isTypefaceMenuShown:Z

    .line 1991
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 1992
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1995
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

    .line 1996
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1997
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x449c4000    # 1250.0f

    .line 1998
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1999
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1996
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    .line 2002
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2003
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceListView:Lorg/telegram/ui/Components/Paint/Views/PaintTypefaceListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2006
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 2024
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->typefaceMenuTransformAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 11

    .line 2499
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v1, 0x43480000    # 200.0f

    if-eqz v0, :cond_0

    .line 2500
    iget v2, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v1, v2

    :cond_0
    if-eqz p1, :cond_1

    .line 2504
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object p1

    .line 2505
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

    .line 2509
    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr p1, v0

    .line 2511
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 2514
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 2515
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2516
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v5, :cond_3

    goto :goto_2

    .line 2519
    :cond_3
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 2520
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

    .line 2529
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

    .line 1230
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1233
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1237
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object v0

    .line 1238
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsNewSelectedIndex:I

    .line 1239
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getBarView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1241
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    .line 1242
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1243
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1268
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectionAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$14;

    invoke-direct {v3, p0, v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$14;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1301
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

    .line 3121
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v0, :cond_2

    .line 3122
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v1, :cond_0

    .line 3123
    sget v1, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3124
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v1, :cond_1

    .line 3125
    sget v1, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    goto :goto_0

    .line 3127
    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->animatePlusToIcon(I)V

    .line 3131
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

    .line 3132
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

    .line 3134
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

    .line 3135
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

    .line 3327
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationProgress:F

    return v0
.end method

.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 2815
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected createEmojiView()V
    .locals 12

    .line 3139
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    .line 3140
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3141
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3143
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    .line 3146
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

    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x1

    .line 3147
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3149
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3150
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    .line 3152
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$20;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    .line 3284
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 3349
    sget p2, Lorg/telegram/messenger/NotificationCenter;->customTypefacesLoaded:I

    if-ne p1, p2, :cond_2

    .line 3350
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3353
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 3354
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 3355
    instance-of p3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz p3, :cond_1

    .line 3356
    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateTypeface()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected didSetAnimatedSticker(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1104
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

    .line 1105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    if-nez v0, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1108
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 1111
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1112
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1113
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

    .line 1120
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

    .line 1121
    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v4, v4, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1122
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

    .line 1123
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

    .line 1125
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

    .line 1128
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_5

    .line 1130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return p2
.end method

.method public getAdditionalBottom()I
    .locals 1

    const/16 v0, 0x18

    .line 1829
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getAdditionalTop()I
    .locals 1

    const/16 v0, 0x30

    .line 1824
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

    .line 1597
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1598
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    if-eqz v3, :cond_17

    .line 1599
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 1602
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    const/4 v0, 0x0

    :goto_0
    if-ge v7, v4, :cond_17

    .line 1605
    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1606
    instance-of v9, v8, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v9, :cond_0

    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    goto/16 :goto_6

    .line 1609
    :cond_0
    move-object v9, v8

    check-cast v9, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 1610
    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v10

    const/4 v13, 0x1

    if-eqz v2, :cond_11

    .line 1612
    new-instance v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v14}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 1613
    instance-of v15, v9, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const-wide/16 v16, 0x1388

    const/16 v18, 0x4

    if-eqz v15, :cond_9

    .line 1614
    iput-byte v13, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1615
    move-object v15, v9

    check-cast v15, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1616
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1617
    instance-of v12, v5, Landroid/text/Spanned;

    if-eqz v12, :cond_8

    .line 1618
    move-object v12, v5

    check-cast v12, Landroid/text/Spanned;

    .line 1619
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v12, v6, v11, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v11, :cond_7

    move v13, v6

    .line 1621
    :goto_1
    array-length v6, v11

    if-ge v13, v6, :cond_7

    .line 1622
    aget-object v6, v11, v13

    move-object/from16 v19, v0

    .line 1623
    iget-object v0, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_1

    .line 1625
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

    .line 1628
    iget v10, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1631
    :cond_2
    new-instance v10, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v10}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    move-object v11, v3

    move/from16 v22, v4

    .line 1632
    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    iput-wide v3, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 1633
    iput-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1634
    invoke-interface {v12, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    iput v3, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 1635
    invoke-interface {v12, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, v4

    iput v3, v10, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 1636
    iget v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    .line 1637
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1638
    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1639
    :cond_3
    iget-byte v4, v10, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move/from16 v3, v18

    :goto_3
    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v10, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    .line 1641
    :cond_5
    iget-object v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_6

    .line 1646
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1647
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object v3, v11

    move-object/from16 v0, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move/from16 v4, v22

    goto/16 :goto_1

    :cond_7
    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    move-object/from16 v20, v10

    .line 1652
    iget-object v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    goto :goto_4

    :cond_8
    move-object/from16 v19, v0

    move-object v11, v3

    move/from16 v22, v4

    move-object/from16 v20, v10

    .line 1656
    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1657
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getType()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1658
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 1659
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTextSize()I

    move-result v0

    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 1660
    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 1661
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

    .line 1663
    instance-of v0, v9, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_10

    const/4 v3, 0x0

    .line 1664
    iput-byte v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 1665
    move-object v0, v9

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 1666
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getBaseSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    .line 1667
    iget v4, v3, Lorg/telegram/ui/Components/Size;->width:F

    iput v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1668
    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 1669
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iput-object v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1670
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getParentObject()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 1671
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 1672
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 1673
    invoke-static {v3, v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1674
    :cond_a
    invoke-static {v3, v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v3

    .line 1675
    iget-byte v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v3, :cond_b

    move/from16 v18, v5

    :cond_b
    or-int v4, v4, v18

    int-to-byte v4, v4

    iput-byte v4, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v3, :cond_c

    .line 1678
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getDuration()J

    move-result-wide v16

    :cond_c
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-eqz v3, :cond_d

    .line 1683
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 1684
    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lcm:Ljava/math/BigInteger;

    .line 1688
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->isMirrored()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1689
    iget-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v3, 0x2

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1694
    :cond_e
    :goto_5
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 1696
    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v3

    .line 1697
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v4

    .line 1698
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v6

    .line 1699
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 1700
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    iput v10, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 1701
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

    .line 1702
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

    .line 1703
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

    .line 1704
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

    .line 1705
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v3

    neg-float v3, v3

    float-to-double v12, v3

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v12, v15

    double-to-float v3, v12

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 1707
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

    .line 1708
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

    .line 1709
    iget v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v3, v3

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 1710
    iget v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v3, v3

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 1711
    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    const/4 v3, 0x0

    .line 1713
    aget-object v0, p2, v3

    if-nez v0, :cond_f

    .line 1714
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p2, v3

    .line 1715
    new-instance v0, Landroid/graphics/Canvas;

    aget-object v4, p2, v3

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1716
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

    .line 1719
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

    .line 1725
    :cond_13
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v10, v20

    .line 1726
    iget v0, v10, Lorg/telegram/ui/Components/Point;->x:F

    iget v12, v10, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v6, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1727
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v12

    invoke-virtual {v6, v0, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1728
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1729
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

    .line 1730
    instance-of v0, v8, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_14

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_14

    .line 1731
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v14, v15}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1732
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1733
    invoke-virtual {v8, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1734
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v1, 0x0

    invoke-direct {v15, v1, v1, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v6, v14, v5, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1736
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 1738
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1740
    :goto_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1742
    invoke-virtual {v8, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1744
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

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->cancelButton:Lorg/telegram/ui/Components/Paint/Views/PaintCancelView;

    return-object v0
.end method

.method public getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I
    .locals 0

    .line 2797
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getCenterLocationInWindow(Landroid/view/View;)[I

    move-result-object p1

    return-object p1
.end method

.method public getCropRotation()F
    .locals 2

    .line 2820
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

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->doneButton:Lorg/telegram/ui/Components/Paint/Views/PaintDoneView;

    return-object v0
.end method

.method public getEmojiPadding(Z)I
    .locals 2

    .line 3032
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3033
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 3035
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3038
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_2

    .line 3039
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    return p1

    .line 3040
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    return p1
.end method

.method public getLcm()J
    .locals 2

    .line 1758
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

    .line 1911
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_8

    .line 1913
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1914
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v5, :cond_2

    .line 1915
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v2, :cond_0

    .line 1917
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1919
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 1920
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1921
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1922
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v4, :cond_1

    new-array v4, v1, [B

    .line 1924
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 1926
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1927
    :cond_2
    instance-of v5, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v5, :cond_7

    .line 1928
    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1929
    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1930
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 1931
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

    .line 1933
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 1934
    aget-object v6, v4, v5

    if-eqz v6, :cond_6

    .line 1937
    iget-object v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    goto :goto_2

    .line 1940
    :cond_3
    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    if-nez v2, :cond_4

    .line 1945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    :cond_4
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 1948
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1949
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1950
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v7, :cond_5

    new-array v7, v1, [B

    .line 1952
    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 1954
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

    .line 1582
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->offsetTranslationY:F

    return v0
.end method

.method public getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 1

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object v0
.end method

.method public getTransformedTouch(FF[F)V
    .locals 9

    .line 2788
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 2789
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    .line 2790
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v3, p1

    float-to-double v0, v0

    .line 2791
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    float-to-double p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, p1

    sub-double/2addr v5, v7

    double-to-float v5, v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    const/4 v6, 0x0

    aput v5, p3, v6

    .line 2792
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p1, v0

    add-double/2addr v3, p1

    double-to-float p1, v3

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/IPhotoPaintView$-CC;->$default$getView(Lorg/telegram/ui/Components/IPhotoPaintView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasChanges()Z
    .locals 1

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->textOptionsView:Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getCurrentTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->setTypeface(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 1773
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1774
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void

    .line 1778
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 1779
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    return-void

    .line 1783
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1784
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void

    .line 1788
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    return-void

    .line 1792
    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1793
    sget p2, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    const-string v2, "PhotoEditorDiscardAlert"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1794
    sget p2, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    const-string v2, "DiscardChanges"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1795
    sget p2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    const-string v2, "PassportDiscard"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1796
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1797
    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto :goto_0

    .line 1799
    :cond_4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onAddButtonPressed(Landroid/view/View;)V
    .locals 6

    .line 2366
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    .line 2395
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/16 v3, 0x35

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p0

    .line 2366
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method public onAnimationStateChanged(Z)V
    .locals 5

    .line 1555
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-nez v0, :cond_3

    .line 1556
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 3332
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    .line 3333
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3334
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 3335
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    .line 3336
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customTypefacesLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 2121
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->isColorListShown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2122
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return v2

    .line 2126
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_1

    .line 2127
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiPopup(Z)V

    return v2

    .line 2131
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->editingText:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2132
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return v2

    :cond_2
    return v1
.end method

.method public onBrushSelected(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 3

    .line 1967
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1970
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    goto :goto_1

    .line 1968
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setMinMax(FF)V

    .line 1972
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    instance-of v1, p1, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->setDrawCenter(Z)V

    .line 1973
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v0, :cond_2

    .line 1974
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreToolChangeAnimationOnce:Z

    .line 1976
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 1977
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightDefaultValueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    .line 1978
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1979
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCleanupEntities()V
    .locals 1

    .line 1753
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public onColorPickerSelected()V
    .locals 1

    const/4 v0, 0x1

    .line 2141
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showColorList(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 3341
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->destroyed:Z

    .line 3342
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3343
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    .line 3344
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->customTypefacesLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onEmojiButtonClick()V
    .locals 2

    .line 2866
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    .line 2867
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2868
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelIgnoreOnce:Z

    :cond_0
    xor-int/lit8 v1, v0, 0x1

    .line 2870
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    if-eqz v0, :cond_1

    .line 2871
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    .line 2872
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 2873
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public synthetic onEntityDragEnd(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragEnd(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;Z)V

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

.method public synthetic onEntityDragStart()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate$-CC;->$default$onEntityDragStart(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

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

    .line 2782
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 2777
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method public onGetPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    .line 2599
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1408
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1413
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1415
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1416
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int p1, p5, p1

    goto :goto_0

    .line 1418
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->measureKeyboardHeight()I

    move-result p1

    add-int/2addr p1, p5

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p1, p3

    .line 1420
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

    .line 1423
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inBubbleMode:Z

    if-nez p1, :cond_2

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1424
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    add-int/2addr p1, p2

    .line 1427
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

    .line 1428
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

    .line 1430
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p4}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1, p3, p5, p2, p4}, Landroid/view/TextureView;->layout(IIII)V

    .line 1431
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p1, p3, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 1432
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p3

    .line 1433
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p5

    .line 1434
    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p4, p1, p2, v0, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1435
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

    .line 1343
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1344
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1345
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1347
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 1351
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

    .line 1352
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 1353
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 1354
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1355
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_0
    int-to-float v5, v1

    .line 1358
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

    .line 1362
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    int-to-float v3, v3

    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-double v1, v2

    .line 1365
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v5, v3

    .line 1368
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

    .line 1369
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1371
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    .line 1372
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1373
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->baseScale:F

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1374
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

    .line 1375
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 1376
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 1378
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1379
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1380
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1381
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->pipetteContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1382
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 1384
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

    .line 1385
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    const/4 v1, 0x0

    .line 1386
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1389
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

    .line 1390
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1391
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    .line 1392
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    .line 1395
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_1

    .line 1398
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->hideEmojiView()V

    .line 1401
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_5

    .line 1402
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    :cond_5
    return-void
.end method

.method public onNewTextSelected()V
    .locals 1

    .line 2305
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2308
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->createText(Z)Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    goto :goto_1

    .line 2306
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

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->redraw()V

    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 4

    const/16 v0, 0x32

    .line 3060
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

    .line 3062
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    .line 3063
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

    .line 3065
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3066
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    const-string v2, "kbd_height"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3070
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 3071
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeightLand:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardHeight:I

    .line 3073
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3074
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_4

    .line 3075
    :cond_3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3076
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3077
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3079
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3080
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    .line 3081
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    .line 3085
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    .line 3086
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    return-void

    .line 3089
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue1:I

    .line 3090
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->lastSizeChangeValue2:Z

    .line 3092
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    .line 3093
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 3094
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    .line 3095
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

    .line 3097
    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    .line 3099
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-eqz p1, :cond_8

    .line 3100
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showEmojiPopup(I)V

    .line 3102
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_9

    if-eq p1, p2, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiViewVisible:Z

    if-nez p1, :cond_9

    .line 3103
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    .line 3104
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->requestLayout()V

    :cond_9
    if-eqz p2, :cond_a

    .line 3106
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-nez p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->emojiPadding:I

    if-lez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    if-eqz p1, :cond_a

    .line 3107
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->translateBottomPanelAfterResize:Z

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3108
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomPanelTranslationY(FF)V

    .line 3109
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->stopPanTransition()V

    .line 3111
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->keyboardVisible:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_b

    .line 3112
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->waitingForKeyboardOpen:Z

    .line 3113
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3115
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onWindowSizeChanged()V

    .line 3117
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->updatePlusEmojiKeyboardButton()V

    return-void
.end method

.method protected onTextAdd()V
    .locals 0

    return-void
.end method

.method public onTextAlignmentSelected(I)V
    .locals 2

    .line 2322
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2323
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextAlignment(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;I)V

    .line 2324
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentAlignment(I)V

    :cond_0
    return-void
.end method

.method public onTextOutlineSelected(Landroid/view/View;)V
    .locals 0

    .line 2146
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectedTextType:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->setTextType(I)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1806
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 1809
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

    .line 1810
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

    .line 1811
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

    .line 1812
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

    .line 1813
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

    .line 1815
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1816
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1817
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onTouch(Landroid/view/MotionEvent;)Z

    .line 1818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTypefaceButtonClicked()V
    .locals 1

    const/4 v0, 0x1

    .line 1984
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->showTypefaceMenu(Z)V

    return-void
.end method

.method public onTypefaceSelected(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 2

    .line 2314
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentTypeface(Ljava/lang/String;)V

    .line 2315
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 2316
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1335
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1338
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setOffsetTranslationX(F)V
    .locals 1

    .line 1564
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->tabsSelectedIndex:I

    if-nez v0, :cond_0

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->weightChooserView:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setOffsetTranslationY(FFIZ)V
    .locals 0

    .line 1571
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->offsetTranslationY:F

    if-nez p4, :cond_0

    .line 1573
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->topLayout:Landroid/widget/FrameLayout;

    neg-float p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1574
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1576
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 954
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

    .line 1839
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->scale:F

    .line 1840
    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageWidth:F

    .line 1841
    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->imageHeight:F

    .line 1842
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformX:F

    .line 1843
    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->inputTransformY:F

    .line 1844
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformX:F

    .line 1845
    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->panTranslationY:F

    add-float/2addr v3, v6

    .line 1846
    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->transformY:F

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_a

    if-nez v6, :cond_0

    .line 1851
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1853
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1855
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    goto :goto_1

    .line 1857
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderInputView:Landroid/view/View;

    :goto_1
    const/4 v8, 0x0

    .line 1862
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_7

    .line 1863
    iget v8, v9, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v8, v10

    .line 1865
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1866
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v9, :cond_6

    if-nez v11, :cond_3

    goto :goto_2

    .line 1870
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

    .line 1878
    iget v14, v12, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v14, v9

    float-to-int v14, v14

    int-to-float v11, v11

    .line 1879
    iget v12, v12, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v12, v11

    float-to-int v12, v12

    int-to-float v14, v14

    div-float v14, v4, v14

    int-to-float v12, v12

    div-float v12, v5, v12

    .line 1881
    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float/2addr v8, v12

    .line 1884
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->currentCropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v15, v14, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float/2addr v15, v9

    mul-float/2addr v15, v1

    mul-float/2addr v15, v12

    iget v9, v14, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    mul-float/2addr v15, v9

    add-float/2addr v15, v2

    .line 1885
    iget v10, v14, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v10, v11

    mul-float/2addr v10, v1

    mul-float/2addr v10, v12

    mul-float/2addr v10, v9

    add-float/2addr v10, v3

    .line 1886
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

    .line 1889
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

    .line 1895
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_5

    :cond_9
    move v10, v8

    .line 1898
    :goto_5
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleX(F)V

    .line 1899
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleY(F)V

    .line 1900
    invoke-virtual {v7, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 1901
    invoke-virtual {v7, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 1902
    invoke-virtual {v7, v9}, Landroid/view/View;->setRotation(F)V

    .line 1903
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1905
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    .line 1537
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v1, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda35;->INSTANCE:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$$ExternalSyntheticLambda35;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->toolsPaint:Landroid/graphics/Paint;

    const v1, -0xe6e6e7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateZoom(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 975
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    if-eq v1, v0, :cond_1

    .line 976
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutVisible:Z

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->zoomOutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 978
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
